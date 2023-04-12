package com.example.courseworkcarswebapplication.services;

import com.example.courseworkcarswebapplication.repositories.AdminRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Slf4j
@RequiredArgsConstructor
@Service
public class AdminServices {
    private final AdminRepository adminRepository;

    public void check_admin(String login, String password) {
        System.out.println(adminRepository.findAdminByLoginAndPassword(login, password));

    }
}
