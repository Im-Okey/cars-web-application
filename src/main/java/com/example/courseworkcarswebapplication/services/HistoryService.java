package com.example.courseworkcarswebapplication.services;

import com.example.courseworkcarswebapplication.models.Cars;
import com.example.courseworkcarswebapplication.models.History;
import com.example.courseworkcarswebapplication.models.User;
import com.example.courseworkcarswebapplication.repositories.CurrencyRepository;
import com.example.courseworkcarswebapplication.repositories.HistoryRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class HistoryService {

    private final HistoryRepository historyRepository;

    public void saveHistory(Cars car, User user) {
        History history = new History();

        history.setCar(car);
        history.setUser(user);
        history.setAmount(1);
        history.setPrice(history.getAmount() * car.getPrice());
        car.setSold(true);
        historyRepository.save(history);
    }

    public List<History> findHistoryByUser(User user) {
        return historyRepository.findByUser(user);
    }
}
