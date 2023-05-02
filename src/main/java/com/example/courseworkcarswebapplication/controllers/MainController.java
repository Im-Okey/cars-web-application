package com.example.courseworkcarswebapplication.controllers;

import com.example.courseworkcarswebapplication.models.Cars;
import com.example.courseworkcarswebapplication.services.CarsServices;
import com.example.courseworkcarswebapplication.services.CurrencyService;
import com.example.courseworkcarswebapplication.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class MainController {

    private final UserService userService;
    private final CarsServices carsServices;
    private final CurrencyService currencyService;

    @GetMapping("/showroom/{id}")
    public String get_main_page(@RequestParam(name = "brand", required = false) String brand, @PathVariable Long id, Model model,
                                @RequestParam(name = "brand_car", required = false) String brand_car,
                                @RequestParam(name = "model_car", required = false) String model_car,
                                @RequestParam(name = "price_from", required = false) String price_from,
                                @RequestParam(name = "price_to", required = false) String price_to) {
        model.addAttribute("cars", carsServices.findCars(brand));
        model.addAttribute("user", userService.findById(id));
        model.addAttribute("currency", currencyService.findAll());
        return "main_page/main_page";
    }
}
