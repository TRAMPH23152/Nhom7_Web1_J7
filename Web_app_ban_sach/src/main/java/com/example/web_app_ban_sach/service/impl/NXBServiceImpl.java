package com.example.web_app_ban_sach.service.impl;


import com.example.web_app_ban_sach.entity.NXB;
import com.example.web_app_ban_sach.repository.NXBRepository;
import com.example.web_app_ban_sach.service.NXBService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NXBServiceImpl implements NXBService {
    @Autowired
    private NXBRepository nxbRepository;

    @Override
    public List<NXB> getAll() {
        return nxbRepository.findAll();
    }

    @Override
    public void add(NXB a) {
        nxbRepository.save(a);
    }

    @Override
    public NXB update(NXB a, Integer id) {
        NXB nxb = nxbRepository.save(a);
        return nxb;
    }

    @Override
    public void remove(Integer id) {
        nxbRepository.deleteById(id);
    }

    @Override
    public NXB detail(Integer id) {
        return nxbRepository.findById(id).get();
    }
}
