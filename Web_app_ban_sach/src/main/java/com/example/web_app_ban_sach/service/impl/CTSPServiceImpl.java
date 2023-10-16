package com.example.web_app_ban_sach.service.impl;


import com.example.web_app_ban_sach.entity.CTSP;
import com.example.web_app_ban_sach.repository.CTSPRepository;
import com.example.web_app_ban_sach.service.CTSPService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CTSPServiceImpl implements CTSPService {
    @Autowired
    private CTSPRepository ctspRepository;

    @Override
    public List<CTSP> getAll() {
        return ctspRepository.findAll();
    }

    @Override
    public void add(CTSP a) {
        ctspRepository.save(a);
    }

    @Override
    public CTSP update(CTSP a, Integer id) {
        CTSP ctsp = ctspRepository.save(a);
        return ctsp;
    }

    @Override
    public void remove(Integer id) {
        ctspRepository.deleteById(id);
    }

    @Override
    public CTSP detail(Integer id) {
        return ctspRepository.findById(id).get();
    }
}
