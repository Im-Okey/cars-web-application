package com.example.courseworkcarswebapplication.controllers;

import com.example.courseworkcarswebapplication.repositories.AdminRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class AdminController {

    private final AdminRepository adminRepository;

}
