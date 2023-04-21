package com.example.courseworkcarswebapplication.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
@Entity
@Table(name = "history")
@NoArgsConstructor
public class History {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User user;

    @OneToOne
    @JoinColumn(name = "car_id")
    private Cars car;

    @Column(name = "date_Of_Created")
    private LocalDateTime dateOfCreated;
    @Column(name = "amount")
    private int amount;
    @Column(name = "price")
    private int price;

    @PrePersist
    private void init() {
        dateOfCreated = LocalDateTime.now();
    }

}
