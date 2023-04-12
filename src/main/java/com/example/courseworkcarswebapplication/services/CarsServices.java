package com.example.courseworkcarswebapplication.services;

import com.example.courseworkcarswebapplication.models.Cars;
import com.example.courseworkcarswebapplication.repositories.CarsRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@RequiredArgsConstructor
@Service
public class CarsServices {
    private final CarsRepository carsRepository;

    public List<Cars> findAll(){
        return  carsRepository.findAll();
    }
    public Cars saveCar(Cars car) { return carsRepository.save(car); }
    public Cars findById(Long id){
        return carsRepository.findById(id).orElse(null);
    }
    public void deleteById(Long id){
        carsRepository.deleteById(id);
    }
}
