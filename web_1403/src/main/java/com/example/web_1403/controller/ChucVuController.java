package com.example.web_1403.controller;

import com.example.web_1403.service.ChucVuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class ChucVuController {
    @Autowired
    private ChucVuService chucVuService;
}
