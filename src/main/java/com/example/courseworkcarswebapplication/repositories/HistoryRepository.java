package com.example.courseworkcarswebapplication.repositories;

import com.example.courseworkcarswebapplication.models.Cars;
import com.example.courseworkcarswebapplication.models.History;
import com.example.courseworkcarswebapplication.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.security.PublicKey;
import java.util.List;

public interface HistoryRepository extends JpaRepository<History, Long> {
    List<History> findByUser(User user);
}
