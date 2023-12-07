package com.example.web_app_ban_sach.service.impl;

import com.example.web_app_ban_sach.entity.Sach;
import com.example.web_app_ban_sach.repository.SachRepository;
import com.example.web_app_ban_sach.service.SachService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SachSeviceImpl implements SachService {
    @Autowired
    private SachRepository sachRepository;

    @Override
    public List<Sach> getAll() {
        return sachRepository.findAll();
    }

    @Override
    public void add(Sach a) {
        sachRepository.save(a);
    }

    @Override
    public Sach update(Sach a, Integer id) {
        Sach sach = sachRepository.save(a);
        return sach;
    }

    @Override
    public void remove(Integer id) {
    sachRepository.deleteById(id);
    }

    @Override
    public Sach detail(Integer id) {
        return sachRepository.findById(id).get();
    }
}
