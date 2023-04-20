package com.example.courseworkcarswebapplication.repositories;

import com.example.courseworkcarswebapplication.models.News;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NewsRepository extends JpaRepository<News, Long> {
}
