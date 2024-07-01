package com.example.web_1403.service;

import com.example.web_1403.entity.ChucVu;

import java.util.List;
import java.util.UUID;

public interface ChucVuService {
    List<ChucVu> getAll();

    public ChucVu finById(Integer id);

    void add(ChucVu chucVu);

    void remove(ChucVu chucVu);

    List<ChucVu> search(String ma);
}
