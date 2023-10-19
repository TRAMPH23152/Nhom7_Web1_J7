package com.example.web_app_ban_sach.service.impl;

import com.example.web_app_ban_sach.entity.HoaDon;
import com.example.web_app_ban_sach.repository.HinhThucThanhToanRepository;
import com.example.web_app_ban_sach.repository.HoaDonRepository;
import com.example.web_app_ban_sach.service.HoaDonService;
import com.example.web_app_ban_sach.viewmodel.HoaDonView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
@Service
public class HoaDonServiceImpl implements HoaDonService {
    @Autowired
    HoaDonRepository hdRepo;
    @Autowired
    HinhThucThanhToanRepository htttRepo;
    @Override
    public List<HoaDon> getAll() {
        return hdRepo.findAll();
    }

    @Override
    public List<HoaDonView> getAllView() {
        List<HoaDonView> views = new ArrayList<>();
        for (HoaDon hd : hdRepo.findAll()) {
            views.add(HoaDonView.builder().maHoaDon(hd.getMaHoaDon()).khachHang(hd.getKhachHang()).nhanVien(hd.getNhanVien())
                    .id(hd.getId()).ngayDat(hd.getNgayDat().toString()).ngayHoanThanh(hd.getNgayHoanThanh().toString())
                    .lstHttt(htttRepo.findByHoaDon_Id(hd.getId())).trangThai(hd.getTrangThai()).thanhTien(hd.getThanhTien().toString())
                    .build());
        }

        return views;
    }

    @Override
    public Page<HoaDon> findAll(Pageable pageable) {
        return hdRepo.findAll(pageable);
    }

    @Override
    public List<HoaDon> findByTrangThai(Integer tt) {
        return hdRepo.findByTrangThai(tt);
    }

    @Override
    public HoaDon save(HoaDon a) {
        return hdRepo.save(a);
    }

    @Override
    public void remove(Integer id) {
        hdRepo.deleteById(id);
    }

    @Override
    public HoaDon getObj(Integer id) {
        return hdRepo.findById(id).get();
    }
}
