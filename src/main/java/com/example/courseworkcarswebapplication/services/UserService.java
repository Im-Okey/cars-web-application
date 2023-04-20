package com.example.courseworkcarswebapplication.services;

import com.example.courseworkcarswebapplication.models.Cars;
import com.example.courseworkcarswebapplication.models.Image;
import com.example.courseworkcarswebapplication.models.enums.Roles;
import com.example.courseworkcarswebapplication.models.enums.UserStatus;
import com.example.courseworkcarswebapplication.models.User;
import com.example.courseworkcarswebapplication.repositories.AdminRepository;
import com.example.courseworkcarswebapplication.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;
import java.util.Objects;

@Service
@Slf4j
@RequiredArgsConstructor
public class UserService {

    private final UserRepository userRepository;
    private final AdminRepository adminRepository;

    public User save_user(User user) {
        return userRepository.save(user);
    }

    public List<User> findAll(){
        return userRepository.findAll();
    }

    public User save(User user) {
        if (Objects.equals(user.getEmail(), "admin@gmail.com")) {
            user.setAdminRole(true);
            user.setIsBlockedStatus(false);
        }
        else {
            user.setAdminRole(false);
            user.setIsBlockedStatus(false);
        }
        return userRepository.save(user);
    }

    public User findById(Long id){
        return userRepository.findById(id).stream().findAny().orElse(null);
    }

    public void update(User person){
        userRepository.save(person);
    }

    public void delete(Long id) {
        userRepository.deleteById(id);
    }

    public User findByEmail(String email) { return userRepository.findByEmail(email); }

    public void deleteById(Long userId) {
        userRepository.deleteById(userId);
    }

    public boolean checkUserStatus(User user) {
        return !user.isIsBlockedStatus();
    }
}
