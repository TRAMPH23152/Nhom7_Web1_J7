package com.example.web_app_ban_sach.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Date;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "anh")
public class Anh {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @NotBlank(message = "Moi nhap ma !")
    @Column(name = "ma_anh")
    private String maAnh;


    @NotBlank(message = "Moi nhap ten anh !")
    @Column(name = "ten_anh")
    private String tenAnh;

    @NotBlank(message = "Moi nhap conver !")
    @Column(name = "conver")
    private String conver;

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

}
