package com.example.courseworkcarswebapplication.repositories;

import com.example.courseworkcarswebapplication.models.Transactions;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TransactionRepository extends JpaRepository<Transactions, Long> {
}
