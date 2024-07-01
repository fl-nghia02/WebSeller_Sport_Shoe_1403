package com.example.web_1403.repository;

import com.example.web_1403.entity.ChucVu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ChucVuRepository extends JpaRepository<ChucVu, Integer> {
    @Query("SELECT c FROM ChucVu c WHERE c.maChucVu like %?1%")
    List<ChucVu> listSearch(String ma);
}
