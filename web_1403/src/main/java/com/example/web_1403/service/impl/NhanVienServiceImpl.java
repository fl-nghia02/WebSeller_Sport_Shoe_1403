package com.example.web_1403.service.impl;

import com.example.web_1403.entity.NhanVien;
import com.example.web_1403.repository.NhanVienRepository;
import com.example.web_1403.service.NhanVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class NhanVienServiceImpl implements NhanVienService {
    @Autowired
    private NhanVienRepository nhanVienRepository;

    @Override
    public Page<NhanVien> findAll(int currentPage, int pageSize) {
        return this.nhanVienRepository.findAll(PageRequest.of(currentPage, pageSize, Sort.by("id").descending()));
    }

    @Override
    public List<NhanVien> getAll() {
        return nhanVienRepository.findAll();
    }

    @Override
    public void add(NhanVien nhanVien) {
        nhanVienRepository.save(nhanVien);
    }

    @Override
    public void remove(Integer id) {
        nhanVienRepository.deleteById(id);
    }

    @Override
    public Optional<NhanVien> findById(Integer id) {
        return this.nhanVienRepository.findById(id);
    }

    @Override
    public List<NhanVien> search(String ma) {
        return nhanVienRepository.listSearch(ma);
    }
}
