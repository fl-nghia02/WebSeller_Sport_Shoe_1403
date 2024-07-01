package com.example.web_1403.controller;

import com.example.web_1403.entity.NhanVien;
import com.example.web_1403.service.ChucVuService;
import com.example.web_1403.service.NhanVienService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;
import java.util.UUID;

@Controller
public class NhanVienController {
    @Autowired
    private NhanVienService nhanVienService;

    @Autowired
    private ChucVuService chucVuService;

    @GetMapping("/nhan-vien/hien-thi")
    public String hienThiDuLieu(@RequestParam(value = "page",defaultValue = "1")int currentPage, Model model) {
        Page<NhanVien> page = nhanVienService.findAll(currentPage - 1, 5);
        model.addAttribute("list", page.getContent());
        model.addAttribute("currentPage", currentPage);
        model.addAttribute("totalPages", page.getTotalPages());

        model.addAttribute("listChucVu", chucVuService.getAll());
        model.addAttribute("nv", new NhanVien());
        return "nhan_vien/index";
    }

    @PostMapping("/nhan-vien/add")
    public String add(@Valid @ModelAttribute("nv") NhanVien nhanVien, BindingResult result, Model model){
        if (result.hasErrors()){
            model.addAttribute("list", nhanVienService.getAll());
            return "nhan_vien/index";
        }
        nhanVienService.add(nhanVien);
        return "redirect:/nhan-vien/hien-thi";
    }

    @GetMapping("/nhan-vien/view-update")
    public String viewUpdate(@RequestParam("id") Integer id, Model model){
        Optional<NhanVien> nhanVienOptional = nhanVienService.findById(id);

        if (nhanVienOptional.isEmpty()){
            return "redirect:/nhan-vien/hien-thi";
        }
        model.addAttribute("nv", nhanVienOptional.get());
        model.addAttribute("listChucVu", chucVuService.getAll());

        return "nhan_vien/view-update";
    }

    @PostMapping("/nhan-vien/update")
    public String update(@Valid @ModelAttribute("nv") NhanVien nhanVien, BindingResult result, Model model){
        if (result.hasErrors()){
            model.addAttribute("list", nhanVienService.getAll());
            return "nhan_vien/view-update";
        }
        nhanVienService.add(nhanVien);
        return "redirect:/nhan-vien/hien-thi";
    }

    @GetMapping("/nhan-vien/remove")
    public String delete(@RequestParam("id")Integer id){
        nhanVienService.remove(id);
        return "redirect:/nhan-vien/hien-thi";
    }

    @GetMapping("/nhan-vien/search")
    public String search(@RequestParam("ma") String ma,
                         Model model) {
        if (ma.isBlank()){
            model.addAttribute("list", nhanVienService.getAll());
            model.addAttribute("nv", new NhanVien());

            return "nhan_vien/index";
        }else {
            model.addAttribute("list", nhanVienService.search(ma));
            model.addAttribute("nv", new NhanVien());

            return "nhan_vien/index";
        }
    }
}
