package com.example.web_app_ban_sach.service;



import com.example.web_app_ban_sach.entity.TheLoai;

import java.util.List;

public interface TheLoaiServicce {
    List<TheLoai> getAll();

    void add(TheLoai a);

    TheLoai update(TheLoai a, Integer id);

    void remove(Integer id);

    TheLoai detail(Integer id);
}
