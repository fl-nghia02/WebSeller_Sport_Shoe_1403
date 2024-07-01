package com.example.web_1403.repository;

import com.example.web_1403.entity.NhanVien;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface NhanVienRepository extends JpaRepository<NhanVien, Integer> {
    @Query("SELECT c FROM NhanVien c WHERE c.tenNhanVien like %?1%")
    List<NhanVien> listSearch(String ma);
}
