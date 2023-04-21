package com.example.courseworkcarswebapplication.services;

import com.example.courseworkcarswebapplication.models.Cars;
import com.example.courseworkcarswebapplication.models.History;
import com.example.courseworkcarswebapplication.models.Transactions;
import com.example.courseworkcarswebapplication.models.User;
import com.example.courseworkcarswebapplication.repositories.AdminRepository;
import com.example.courseworkcarswebapplication.repositories.TransactionRepository;
import com.example.courseworkcarswebapplication.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class TransactionsService {
    private final TransactionRepository transactionRepository;

    public void saveTransaction(Cars car, User user) {
        Transactions transactions = new Transactions();

        transactions.setCar(car);
        transactions.setUser(user);
        transactions.setAmount(1);
        transactions.setPrice(transactions.getAmount() * car.getPrice());
        transactions.setStatus("Подтвержденный платеж");
        transactionRepository.save(transactions);
    }

    public List<Transactions> findAll() {
        return transactionRepository.findAll();
    }
}
