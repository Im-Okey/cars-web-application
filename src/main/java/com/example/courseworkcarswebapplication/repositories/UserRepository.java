package com.example.courseworkcarswebapplication.repositories;

import com.example.courseworkcarswebapplication.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
