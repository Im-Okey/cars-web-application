package com.example.courseworkcarswebapplication.controllers;

import com.example.courseworkcarswebapplication.models.Cars;
import com.example.courseworkcarswebapplication.models.User;
import com.example.courseworkcarswebapplication.services.CarsServices;
import com.example.courseworkcarswebapplication.services.UserService;
import lombok.RequiredArgsConstructor;
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
@RequiredArgsConstructor
public class CarsController {
    private final CarsServices carsServices;
    private final UserService userService;

    @GetMapping("/showroom/cars/add/{admin_id}")
    public String createCarForm(Model model, @PathVariable Long admin_id) {

        User user = userService.findById(admin_id);
        model.addAttribute("user", user);
        return "cars-create";
    }

    @PostMapping("/showroom/cars/add/{admin_id}")
    public String addCar(@RequestParam("file1") MultipartFile file1, @RequestParam("file2") MultipartFile file2,
                         @RequestParam("file3") MultipartFile file3, Cars car, @PathVariable Long admin_id) throws IOException {
        carsServices.saveCar(car, file1, file2, file3);
        return "redirect:/showroom/" + admin_id;
    }

    @PostMapping("/cars/delete/{id}/{admin_id}")
    public String deleteCar(@PathVariable Long id, @PathVariable Long admin_id) {
        carsServices.deleteById(id);
        return "redirect:/showroom/" + admin_id;
    }

    @GetMapping("cars/info/{id}/{admin_id}")
    public String infoCar(@PathVariable Long id,
                          @PathVariable Long admin_id,
                          Model model) {
        Cars car = carsServices.findById(id);
        User user = userService.findById(admin_id);
        model.addAttribute("car", car);
        model.addAttribute("user", user);
        model.addAttribute("images", car.getImages());
        return "car-info";
    }
}
