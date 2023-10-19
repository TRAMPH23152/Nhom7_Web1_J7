package com.example.web_app_ban_sach.service;

import com.example.web_app_ban_sach.entity.HoaDon;
import com.example.web_app_ban_sach.viewmodel.HoaDonView;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface HoaDonService {
    List<HoaDon> getAll();
    List<HoaDonView> getAllView();
    Page<HoaDon> findAll(Pageable pageable);
    List<HoaDon> findByTrangThai(Integer tt);
    HoaDon save(HoaDon a);

    void remove(Integer id);

    HoaDon getObj(Integer id);
}
