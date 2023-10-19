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
        model.addAttribute("lstHd", hdService.getAllView());
        model.addAttribute("lstHd0", hdService.findByTrangThai(0));
        model.addAttribute("lstHd1", hdService.findByTrangThai(1));
        model.addAttribute("lstHd2", hdService.findByTrangThai(2));
        model.addAttribute("lstHd3", hdService.findByTrangThai(3));
        model.addAttribute("lstHd4", hdService.findByTrangThai(4));
        model.addAttribute("lstHd5", hdService.findByTrangThai(5));

        model.addAttribute("view", "../admin/hoadon/index.jsp");
        return "/admin/index";
    }


}
