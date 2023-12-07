package com.example.web_app_ban_sach.repository;


import com.example.web_app_ban_sach.entity.Bia;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BiaRepository extends JpaRepository<Bia, Integer> {
}
