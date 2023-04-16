package com.example.courseworkcarswebapplication.controllers;

import com.example.courseworkcarswebapplication.models.User;
import com.example.courseworkcarswebapplication.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;

    @GetMapping("/registration")
    public String registration_form() {
        return "reg_auth/registration";
    }

    @PostMapping("/registration")
    public String registration(User user) {
        userService.save(user);
        Long id = user.getId();
        return "redirect:/showroom/" + id;
    }

    @GetMapping("/authorisation")
    public String authorisation_form() {
        return "reg_auth/authorisation";
    }
    @PostMapping("/authorisation")
    public String authorisation(User user) {
        Long id = userService.findByEmail(user.getEmail()).getId();
        return "redirect:/showroom/" + id;
    }

    @GetMapping("/showroom/user/{user_id}")
    public String user_profile(@PathVariable Long user_id, Model model) {
        User user = userService.findById(user_id);
        model.addAttribute("user", user);
        return "users/user_profile";
    }
}
