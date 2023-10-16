package com.example.web_app_ban_sach.service;




import com.example.web_app_ban_sach.entity.Sach;

import java.util.List;

public interface SachService {
    List<Sach> getAll();

    void add(Sach a);

    Sach update(Sach a, Integer id);

    void remove(Integer id);

    Sach detail(Integer id);
}
