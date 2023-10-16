package com.example.web_app_ban_sach.service.impl;


import com.example.web_app_ban_sach.entity.Anh;
import com.example.web_app_ban_sach.repository.AnhRepository;
import com.example.web_app_ban_sach.service.AnhService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AnhServiceImpl implements AnhService {

    @Autowired
    private AnhRepository anhRepository;


    @Override
    public List<Anh> getAll() {
        return anhRepository.findAll();
    }

    @Override
    public void add(Anh a) {
        anhRepository.save(a);

    }

    @Override
    public Anh update(Anh a, Integer id) {
        Anh anh = anhRepository.save(a);
        return anh;
    }

    @Override
    public void remove(Integer id) {
        anhRepository.deleteById(id);
    }

    @Override
    public Anh detail(Integer id) {
        return anhRepository.findById(id).get();
    }
}
