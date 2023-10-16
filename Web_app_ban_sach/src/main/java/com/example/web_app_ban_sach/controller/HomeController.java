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

    @GetMapping("/home")
    public String home(Model model) {
        model.addAttribute("view", "../admin/dashboard/index.jsp");
        return "/admin/index";
    }

    @GetMapping("/bill")
    public String bill(Model model) {
        model.addAttribute("view", "../admin/hoadon/index.jsp");
        return "/admin/index";
    }

//    @GetMapping("/product")
//    public String product(Model model){
//        model.addAttribute("view","../admin/product/ctsp.jsp");
//        return "/admin/index";
//    }

    @Autowired
    private BiaService biaService;
    @Autowired
    private NXBService nxbService;
    @Autowired
    private SachService sachService;
    @Autowired
    private TacGiaService tacGiaService;
    @Autowired
    private TheLoaiServicce theLoaiServicce;
    @Autowired
    private CTSPService ctspService;


    @GetMapping("/product")
    public String productView(Model model, @ModelAttribute("model_ctsp") CTSP ctsp) {

        model.addAttribute("ctsp", ctspService.getAll());

        model.addAttribute("items_bia", biaService.getAll());

        model.addAttribute("items_sach", sachService.getAll());

        model.addAttribute("items_tg", tacGiaService.getAll());

        model.addAttribute("items_nxb", nxbService.getAll());

        model.addAttribute("items_tl", theLoaiServicce.getAll());

        model.addAttribute("model_ctsp", new CTSP());

        model.addAttribute("view", "../admin/product/ctsp.jsp");

        return "/admin/index";

    }

}
