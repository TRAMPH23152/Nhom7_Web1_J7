package com.example.web_app_ban_sach.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "khach_hang")
public class KhachHang {
    @Id
    @Column(name = "id")
    private Integer id;
    @Column(name = "ho_ten")
    private String hoTen;

    @Override
    public String toString() {
        return hoTen;
    }
}
