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
@Table(name = "currency")
@NoArgsConstructor
public class Currency {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @Column(name = "current_value")
    private boolean is_current_value;
    @Column(name = "value")
    private String value;
}