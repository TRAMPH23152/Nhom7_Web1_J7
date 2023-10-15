package com.example.web_app_ban_sach.controller;

import org.dom4j.rule.Mode;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class HomeController {
    @GetMapping()
    public String index(Model model){
        model.addAttribute("view","../admin/dashboard/index.jsp");
        return "/admin/index";
    }
    @GetMapping("/home")
    public String home(Model model){
        model.addAttribute("view","../admin/dashboard/index.jsp");
        return "/admin/index";
    }

    @GetMapping("/bill")
    public String bill(Model model){
        model.addAttribute("view","../admin/hoadon/index.jsp");
        return "/admin/index";
    }

}
