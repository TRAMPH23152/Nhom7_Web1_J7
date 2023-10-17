package com.example.web_app_ban_sach.service.impl;

import com.example.web_app_ban_sach.entity.HoaDon;
import com.example.web_app_ban_sach.repository.HoaDonRepository;
import com.example.web_app_ban_sach.service.HoaDonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class HoaDonServiceImpl implements HoaDonService {
    @Autowired
    HoaDonRepository hdRepo;

    @Override
    public List<HoaDon> getAll() {
        return hdRepo.findAll();
    }

    @Override
    public Page<HoaDon> findAll(Pageable pageable) {
        return hdRepo.findAll(pageable);
    }

    @Override
    public HoaDon save(HoaDon a) {
        return hdRepo.save(a);
    }

    @Override
    public void remove(Integer id) {
        hdRepo.deleteById(id);
    }

    @Override
    public HoaDon getObj(Integer id) {
        return hdRepo.findById(id).get();
    }
}
