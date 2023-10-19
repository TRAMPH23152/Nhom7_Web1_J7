package com.example.web_app_ban_sach.service.impl;

import com.example.web_app_ban_sach.entity.HinhThucThanhToan;
import com.example.web_app_ban_sach.repository.HinhThucThanhToanRepository;
import com.example.web_app_ban_sach.service.HinhThucThanhToanService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.UUID;

public class HinhThucThanhToanImpl implements HinhThucThanhToanService {
    @Autowired
    HinhThucThanhToanRepository htttRepo;
    @Override
    public List<HinhThucThanhToan> getAll() {
        return htttRepo.findAll();
    }

    @Override
    public List<HinhThucThanhToan> findByHoaDon(Integer id) {
        return htttRepo.findByHoaDon_Id(id);
    }


    @Override
    public HinhThucThanhToan save(HinhThucThanhToan a) {
        return htttRepo.save(a);
    }

    @Override
    public void remove(Integer id) {
        htttRepo.deleteById(id);
    }

    @Override
    public HinhThucThanhToan detail(Integer id) {
        return htttRepo.findById(id).get();
    }
}
