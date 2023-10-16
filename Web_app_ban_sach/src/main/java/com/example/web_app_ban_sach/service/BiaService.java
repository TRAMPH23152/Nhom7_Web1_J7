package com.example.web_app_ban_sach.service;



import com.example.web_app_ban_sach.entity.Bia;

import java.util.List;

public interface BiaService {
    List<Bia> getAll();

    void add(Bia b);

    Bia update(Bia a, Integer id);

    void remove(Integer id);

    Bia detail(Integer id);
}
