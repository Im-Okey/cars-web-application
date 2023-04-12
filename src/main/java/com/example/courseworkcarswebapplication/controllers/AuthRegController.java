package com.example.courseworkcarswebapplication.controllers;


import com.example.courseworkcarswebapplication.services.AdminServices;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AuthRegController {

    private final AdminServices adminServices;

    public AuthRegController(AdminServices adminServices) {
        this.adminServices = adminServices;
    }

    @GetMapping("/")
    public String authorisation() {
        return "authorisation";
    }
}
