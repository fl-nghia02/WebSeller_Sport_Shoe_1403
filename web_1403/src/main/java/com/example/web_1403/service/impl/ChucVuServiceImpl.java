package com.example.web_1403.service.impl;

import com.example.web_1403.entity.ChucVu;
import com.example.web_1403.repository.ChucVuRepository;
import com.example.web_1403.service.ChucVuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChucVuServiceImpl implements ChucVuService {
    @Autowired
    private ChucVuRepository chucVuRepository;

    @Override
    public List<ChucVu> getAll() {
        return chucVuRepository.findAll();
    }

    @Override
    public ChucVu finById(Integer id) {
        ChucVu chucVu = chucVuRepository.findById(id).get();
        return chucVu;
    }

    @Override
    public void add(ChucVu chucVu) {
        chucVuRepository.save(chucVu);
    }

    @Override
    public void remove(ChucVu chucVu) {
        chucVuRepository.delete(chucVu);
    }

    @Override
    public List<ChucVu> search(String ma) {
        return chucVuRepository.listSearch(ma);
    }
}
