package com.example.web_app_ban_sach.service.impl;


import com.example.web_app_ban_sach.entity.TacGia;
import com.example.web_app_ban_sach.repository.TacGiaRepository;
import com.example.web_app_ban_sach.service.TacGiaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TacGiaServiceImpl implements TacGiaService {
    @Autowired
    private TacGiaRepository tacGiaRepository;

    @Override
    public List<TacGia> getAll() {
        return tacGiaRepository.findAll();
    }

    @Override
    public void add(TacGia a) {
        tacGiaRepository.save(a);
    }

    @Override
    public TacGia update(TacGia a, Integer id) {
        TacGia tacGia = tacGiaRepository.save(a);
        return tacGia;
    }

    @Override
    public void remove(Integer id) {
        tacGiaRepository.deleteById(id);
    }

    @Override
    public TacGia detail(Integer id) {
        return tacGiaRepository.findById(id).get();
    }
}
