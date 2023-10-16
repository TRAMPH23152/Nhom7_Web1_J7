package com.example.web_app_ban_sach.service.impl;


import com.example.web_app_ban_sach.entity.Bia;
import com.example.web_app_ban_sach.repository.BiaRepository;
import com.example.web_app_ban_sach.service.BiaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BiaServiceImpl implements BiaService {
    @Autowired
    private BiaRepository biaRepository;

    @Override
    public List<Bia> getAll() {
        return biaRepository.findAll();
    }

    @Override
    public void add(Bia b) {
    biaRepository.save(b);
    }

    @Override
    public Bia update(Bia a, Integer id) {
        Bia bia = biaRepository.save(a);
        return bia;
    }

    @Override
    public void remove(Integer id) {
        biaRepository.deleteById(id);
    }

    @Override
    public Bia detail(Integer id) {
        return biaRepository.findById(id).get();
    }
}
