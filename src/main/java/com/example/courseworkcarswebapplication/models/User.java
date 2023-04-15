package com.example.courseworkcarswebapplication.models;

import com.example.courseworkcarswebapplication.models.enums.Roles;
import com.example.courseworkcarswebapplication.models.enums.UserStatus;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


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
    @Column(name = "email", unique = true)
    private String email;
    @Column(name = "password", length = 1000)
    private String password;
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "image_id")
    private Image avatar;

    private boolean isAdminRole = false;
    private boolean IsBlockedStatus = false;
//    @Enumerated(EnumType.STRING)
//    private Roles role;
//    @Enumerated(EnumType.STRING)
//    private UserStatus status;

}
