package com.example.web_app_ban_sach.service;



import com.example.web_app_ban_sach.entity.TacGia;

import java.util.List;

public interface TacGiaService {
    List<TacGia> getAll();

    void add(TacGia a);

    TacGia update(TacGia a, Integer id);

    void remove(Integer id);

    TacGia detail(Integer id);
}
