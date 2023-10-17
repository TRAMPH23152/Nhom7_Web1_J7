package com.example.web_app_ban_sach.controller;

//import org.dom4j.rule.Mode;

import com.example.web_app_ban_sach.entity.CTSP;
import com.example.web_app_ban_sach.service.BiaService;
import com.example.web_app_ban_sach.service.CTSPService;
import com.example.web_app_ban_sach.service.NXBService;
import com.example.web_app_ban_sach.service.SachService;
import com.example.web_app_ban_sach.service.TacGiaService;
import com.example.web_app_ban_sach.service.TheLoaiServicce;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class HomeController {
    @GetMapping()
    public String index(Model model) {
        model.addAttribute("view", "../admin/dashboard/index.jsp");
        return "/admin/index";
    }




}
