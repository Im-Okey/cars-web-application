package com.example.courseworkcarswebapplication.models;

import com.example.courseworkcarswebapplication.models.enums.Roles;
import com.example.courseworkcarswebapplication.models.enums.UserStatus;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;


@Data
@AllArgsConstructor
@Entity
@Table(name = "users")
@NoArgsConstructor
public class User{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @Column(name = "name")
    private String name;
    @Column(name = "surname")
    private String surname;
    @Column(name = "phone")
    private String phone;
    @Column(name = "address")
    private String address;
    @Column(name = "pasport_serial")
    private String pasport_serial;
    @Column(name = "pasport_number")
    private String pasport_number;
    @Column(name = "email", unique = true)
    private String email;
    @Column(name = "password", length = 1000)
    private String password;
    @Column(name = "date_Of_Created")
    private LocalDateTime dateOfCreated;

    private boolean isAdminRole = false;
    private boolean IsBlockedStatus = false;

    @PrePersist
    private void init() {
        dateOfCreated = LocalDateTime.now();
    }
//    @Enumerated(EnumType.STRING)
//    private Roles role;
//    @Enumerated(EnumType.STRING)
//    private UserStatus status;

}
