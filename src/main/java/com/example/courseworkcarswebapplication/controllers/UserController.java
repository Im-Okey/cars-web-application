package com.example.courseworkcarswebapplication.controllers;

import com.example.courseworkcarswebapplication.models.Cars;
import com.example.courseworkcarswebapplication.models.User;
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
import java.time.LocalDateTime;

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
        user.setName("Не указано");
        user.setSurname("Не указано");
        user.setPhone("Не указано");
        user.setPassport_number("Не указано");
        user.setPassport_serial("Не указано");
        user.setName("Не указано");
        user.setAddress("Не указано");
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

    @PostMapping("/showroom/profile/{user_id}/edit")
    public String edit_user(User user, @PathVariable Long user_id) {
        LocalDateTime dateOfCreated;
        dateOfCreated = LocalDateTime.now();
        user.setId(user_id);
        user.setDateOfCreated(dateOfCreated);
        userService.save(user);
        return "redirect:/showroom/" + user_id;
    }


    @GetMapping("/showroom/admin/{user_id}")
    public String admin_profile(@PathVariable Long user_id, Model model) {
        User user = userService.findById(user_id);
        model.addAttribute("admin", user);
        model.addAttribute("users", userService.findAll());
        return "users/admin_profile";
    }

    @PostMapping("/user/delete/{user_id}/{admin_id}")
    public String deleteUser(@PathVariable Long user_id, @PathVariable Long admin_id) {
        userService.deleteById(user_id);
        return "redirect:/showroom/admin/" + admin_id;
    }

    @PostMapping("/user/blocked/{user_id}/{admin_id}")
    public String blockUser(@PathVariable Long user_id, @PathVariable Long admin_id) {
        User user = userService.findById(user_id);
        user.setIsBlockedStatus(true);
        user.setId(user_id);
        userService.save_user(user);
        return "redirect:/showroom/admin/" + admin_id;
    }
}
