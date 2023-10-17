package com.example.web_app_ban_sach.controller;

import com.example.web_app_ban_sach.service.HoaDonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin")
public class HoaDonController {
    @Autowired
    HoaDonService hdService;
    @GetMapping("/bill")
    public String bill(Model model, @RequestParam(value = "page", defaultValue = "0") int page) {
        model.addAttribute("lstHd", hdService.findAll(PageRequest.of(page, 5)));
        model.addAttribute("view", "../admin/hoadon/index.jsp");
        return "/admin/index";
    }


}
