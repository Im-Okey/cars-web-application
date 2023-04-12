package com.example.courseworkcarswebapplication.repositories;

import com.example.courseworkcarswebapplication.models.Cars;
import org.springframework.data.jpa.repository.JpaRepository;


public interface CarsRepository extends JpaRepository<Cars, Long> {
}
