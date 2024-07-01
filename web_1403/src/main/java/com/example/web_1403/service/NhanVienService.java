package com.example.web_1403.service;

import com.example.web_1403.entity.NhanVien;
import org.springframework.data.domain.Page;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

public interface NhanVienService {
    Page<NhanVien> findAll(int currentPage, int pageSize);

    List<NhanVien> getAll();

    void add(NhanVien nhanVien);

    void remove(Integer id);

    Optional<NhanVien> findById(Integer id);

    List<NhanVien> search(String ma);
}
