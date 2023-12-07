package com.example.web_app_ban_sach.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.sql.Date;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "chi_tiet_san_pham")
public class CTSP {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "so_luong")
    private Integer soLuong;

    @Column(name = "do_tuoi")
    private Integer doTuoi;

    @Column(name = "lan_tai_ban")
    private Integer lanTaiBan;

    @Column(name = "don_gia")
    private BigDecimal donGia;

    @Temporal(TemporalType.DATE)
    @Column(name = "ngay_tao")
    private Date ngayTao;

    @Temporal(TemporalType.DATE)
    @Column(name = "ngay_sua")
    private Date ngaySua;

//    @NotBlank(message = "Moi nhap ten nguoi tao !")
    @Column(name = "nguoi_tao")
    private String nguoiTao;

//    @NotBlank(message = "Moi nhap nguoi sua !")
    @Column(name = "nguoi_sua")
    private String nguoiSua;

    @Column(name = "trang_thai")
    private int trangThai;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_nxb", referencedColumnName = "id")
    private NXB nxb;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_tac_gia", referencedColumnName = "id")
    private TacGia tacGia;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_the_loai", referencedColumnName = "id")
    private TheLoai theLoai;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_anh", referencedColumnName = "id")
    private Anh anh;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_san_pham", referencedColumnName = "id")
    private Sach sach;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_bia", referencedColumnName = "id")
    private Bia bia;
}
