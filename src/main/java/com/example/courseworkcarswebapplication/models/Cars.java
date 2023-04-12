package com.example.courseworkcarswebapplication.models;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@Entity
@Table(name = "cars")
@NoArgsConstructor
public class Cars {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String brand;
    private String model;
    private int price;
    private String equipment;
    private String description;
    private String image_url;
    private int year_of_manufacture;

}
