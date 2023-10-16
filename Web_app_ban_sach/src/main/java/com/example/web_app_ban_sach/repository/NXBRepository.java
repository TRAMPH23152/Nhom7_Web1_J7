package com.example.web_app_ban_sach.repository;


import com.example.web_app_ban_sach.entity.NXB;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NXBRepository extends JpaRepository<NXB, Integer> {
}
