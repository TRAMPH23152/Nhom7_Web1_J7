package com.example.web_app_ban_sach.viewmodel;

import com.example.web_app_ban_sach.entity.HinhThucThanhToan;
import com.example.web_app_ban_sach.entity.KhachHang;
import com.example.web_app_ban_sach.entity.NhanVien;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;
import java.util.Set;
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@Builder
public class HoaDonView {
    private Integer id;
    private String maHoaDon;
    private NhanVien nhanVien;
    private KhachHang khachHang;
    private List<HinhThucThanhToan> lstHttt;
    private String ngayDat;
    private String ngayHoanThanh;
    private String thanhTien;
    private Integer trangThai;
}
