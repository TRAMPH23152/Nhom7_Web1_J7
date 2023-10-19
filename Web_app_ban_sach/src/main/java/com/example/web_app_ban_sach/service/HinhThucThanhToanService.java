package com.example.web_app_ban_sach.service;

import com.example.web_app_ban_sach.entity.Bia;
import com.example.web_app_ban_sach.entity.HinhThucThanhToan;

import java.util.List;
import java.util.UUID;

public interface HinhThucThanhToanService {
    List<HinhThucThanhToan> getAll();
    List<HinhThucThanhToan> findByHoaDon(Integer id);

    HinhThucThanhToan save(HinhThucThanhToan a);

    void remove(Integer id);

    HinhThucThanhToan detail(Integer id);
}
