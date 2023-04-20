package com.example.courseworkcarswebapplication.services;

import com.example.courseworkcarswebapplication.models.Cars;
import com.example.courseworkcarswebapplication.models.Currency;
import com.example.courseworkcarswebapplication.repositories.CurrencyRepository;
import com.example.courseworkcarswebapplication.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class CurrencyService {
    private final CurrencyRepository currencyRepository;

    public List<Currency> findAll() {
        return currencyRepository.findAll();
    }

    public List<Currency> change_current_value(String selectedValue) {
        List<Currency> currencyList = currencyRepository.findAll();
        for (Currency variable : currencyList) {
            variable.set_current_value(false);
        }
        return currencyList;
    }

    public Currency saveCurr(Currency currency) {
        return currencyRepository.save(currency);
    }
}
