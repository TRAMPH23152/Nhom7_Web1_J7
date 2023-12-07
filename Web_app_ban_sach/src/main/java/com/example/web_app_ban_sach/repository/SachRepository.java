package com.example.web_app_ban_sach.repository;


import com.example.web_app_ban_sach.entity.Sach;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SachRepository extends JpaRepository<Sach, Integer> {
}
