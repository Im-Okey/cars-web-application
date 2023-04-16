package com.example.courseworkcarswebapplication.controllers;

import com.example.courseworkcarswebapplication.services.CarsServices;
import com.example.courseworkcarswebapplication.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class MainController {

    private final UserService userService;
    private final CarsServices carsServices;



    @GetMapping("/showroom/{id}")
    public String get_main_page(@RequestParam(name = "brand", required = false) String brand,
                                @PathVariable Long id,
                                Model model) {
        model.addAttribute("cars", carsServices.findCars(brand));
        model.addAttribute("user", userService.findById(id));
        return "main_page/main_page";
    }
}
