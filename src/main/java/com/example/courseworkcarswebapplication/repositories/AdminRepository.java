package com.example.courseworkcarswebapplication.repositories;

import com.example.courseworkcarswebapplication.models.Admin;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AdminRepository extends JpaRepository<Admin, Long> {

    List<Admin> findAdminByEmail(String email);
}
