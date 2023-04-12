package com.example.courseworkcarswebapplication.controllers;

import com.example.courseworkcarswebapplication.models.Cars;
import com.example.courseworkcarswebapplication.services.CarsServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class CarsController {
    private final CarsServices carsServices;

    public CarsController(CarsServices carsServices) {
        this.carsServices = carsServices;
    }

    @GetMapping("/showroom")
    public String get_main_page(Model model) {
        List<Cars> cars = carsServices.findAll();
        model.addAttribute("cars", cars);
        return "main_page_admin";
    }
    @GetMapping("/cars/add")
    public String createCarForm(Cars car) {
        return "cars-create";
    }

    @PostMapping("/cars/add")
    public String addCar(Cars car) {
        carsServices.saveCar(car);
        return "redirect:/showroom";
    }

    @PostMapping("/cars/delete/{id}")
    public String deleteCar(@PathVariable Long id) {
        carsServices.deleteById(id);
        return "redirect:/showroom";
    }

    @GetMapping("cars/info/{id}")
    public String infoCar(@PathVariable Long id, Model model) {
        model.addAttribute("car", carsServices.findById(id));
        return "car-info";
    }
}
