package com.example.web_app_ban_sach.service;



import com.example.web_app_ban_sach.entity.CTSP;

import java.util.List;

public interface CTSPService {
    List<CTSP> getAll();

    void add(CTSP a);

    CTSP update(CTSP a, Integer id);

    void remove(Integer id);

    CTSP detail(Integer id);
}
