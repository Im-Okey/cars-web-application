package com.example.courseworkcarswebapplication.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AuthRegController {

    @GetMapping("/")
    public String authorisation() {
        return "authorisation";
    }
}
