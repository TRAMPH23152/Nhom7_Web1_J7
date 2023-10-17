package com.example.web_app_ban_sach.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.Date;
@Entity
@Table(name = "hoa_don")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class HoaDon {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "ma_hoa_don")
    private String maHoaDon;
    @ManyToOne()
    @JoinColumn(name ="id_nhan_vien")
    private NhanVien nhanVien;
    @ManyToOne()
    @JoinColumn(name ="id_khach_hang")
    private KhachHang khachHang;
    @Column( name = "ten_nguoi_nhan")
    private String tenNguoiNhan;
    @Column(name = "sdt_nguoi_nhan")
    private String sdtNguoiNhan;
    @Column( name = "ngay_nhan_hang")
    private Date ngayNhanHang;
    @Column( name = "thanh_tien")
    private BigDecimal thanhTien;
    @Column( name = "ngay_dat")
    private Date ngayDat;
    @Column( name = "ngay_thanh_toan")
    private Date ngayThanhToan;
    @Column( name = "ngay_giao_hang")
    private Date ngayGiaoHang;
    @Column( name = "ngay_hoan_thanh")
    private Date ngayHoanThanh;
    @Column( name = "ngay_tao")
    private Date ngayTao;
    @Column( name = "ngay_sua")
    private Date ngaySua;
    @Column( name = "nguoi_sua")
    private String nguoiSua;
    @Column( name = "trang_thai")
    private Integer trangThai;
    @Column( name = "deleted")
    private Integer deleted;


}
