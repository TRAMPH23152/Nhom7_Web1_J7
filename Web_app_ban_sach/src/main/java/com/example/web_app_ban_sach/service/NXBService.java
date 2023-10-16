package com.example.web_app_ban_sach.service;



import com.example.web_app_ban_sach.entity.NXB;

import java.util.List;

public interface NXBService {
    List<NXB> getAll();

    void add(NXB a);

    NXB update(NXB a, Integer id);

    void remove(Integer id);

    NXB detail(Integer id);
}
