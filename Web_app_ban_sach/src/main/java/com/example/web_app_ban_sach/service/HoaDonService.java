package com.example.web_app_ban_sach.service;

import com.example.web_app_ban_sach.entity.HoaDon;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface HoaDonService {
    List<HoaDon> getAll();
    Page<HoaDon> findAll(Pageable pageable);

    HoaDon save(HoaDon a);

    void remove(Integer id);

    HoaDon getObj(Integer id);
}
