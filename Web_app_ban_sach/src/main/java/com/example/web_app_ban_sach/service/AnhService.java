package com.example.web_app_ban_sach.service;



import com.example.web_app_ban_sach.entity.Anh;

import java.util.List;

public interface AnhService {
    List<Anh> getAll();

    void add(Anh a);

    Anh update(Anh a, Integer id);

    void remove(Integer id);

    Anh detail(Integer id);

}
