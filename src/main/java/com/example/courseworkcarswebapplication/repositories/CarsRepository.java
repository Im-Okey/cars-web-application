package com.example.courseworkcarswebapplication.repositories;

import com.example.courseworkcarswebapplication.models.Cars;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface CarsRepository extends JpaRepository<Cars, Long> {
    List<Cars> findCarsByBrand(String brand);
    List<Cars> findByBrandAndModelAndPriceBetween(String brand, String model, int price_from, int price_to, Sort sort);
    List<Cars> findByBrandAndPriceBetween(String brand, int price_from, int price_to, Sort sort);
    List<Cars> findByPriceBetween(int price_from, int price_to, Sort sort);
}
