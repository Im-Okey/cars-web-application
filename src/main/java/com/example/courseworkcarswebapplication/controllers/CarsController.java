package com.example.courseworkcarswebapplication.controllers;

import com.example.courseworkcarswebapplication.models.Cars;
import com.example.courseworkcarswebapplication.services.CarsServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Controller
public class CarsController {
    private final CarsServices carsServices;

    public CarsController(CarsServices carsServices) {
        this.carsServices = carsServices;
    }

    @GetMapping("/showroom")
    public String get_main_page(@RequestParam(name = "brand", required = false) String brand, Model model) {
        model.addAttribute("cars", carsServices.findCars(brand));
        return "main_page_admin";
    }
    @GetMapping("/cars/add")
    public String createCarForm(Cars car) {
        return "cars-create";
    }

    @PostMapping("/cars/add")
    public String addCar(@RequestParam("file1") MultipartFile file1, @RequestParam("file2") MultipartFile file2,
                         @RequestParam("file3") MultipartFile file3, Cars car) throws IOException {
        carsServices.saveCar(car, file1, file2, file3);
        return "redirect:/showroom";
    }

    @PostMapping("/cars/delete/{id}")
    public String deleteCar(@PathVariable Long id) {
        carsServices.deleteById(id);
        return "redirect:/showroom";
    }

    @GetMapping("cars/info/{id}")
    public String infoCar(@PathVariable Long id, Model model) {
        Cars car = carsServices.findById(id);
        model.addAttribute("car", car);
        model.addAttribute("images", car.getImages());
        return "car-info";
    }
}
