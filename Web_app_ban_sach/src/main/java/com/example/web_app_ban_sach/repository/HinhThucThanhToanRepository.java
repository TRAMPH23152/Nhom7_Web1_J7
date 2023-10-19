package com.example.web_app_ban_sach.repository;

import com.example.web_app_ban_sach.entity.HinhThucThanhToan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;
@Repository
public interface HinhThucThanhToanRepository extends JpaRepository<HinhThucThanhToan, Integer> {
    List<HinhThucThanhToan> findByHoaDon_Id(Integer id);
}
