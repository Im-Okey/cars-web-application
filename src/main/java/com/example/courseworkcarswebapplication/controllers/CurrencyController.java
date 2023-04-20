package com.example.courseworkcarswebapplication.controllers;

import com.example.courseworkcarswebapplication.models.Currency;
import com.example.courseworkcarswebapplication.services.CurrencyService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Objects;

@Controller
@RequiredArgsConstructor
public class CurrencyController {

    private final CurrencyService currencyService;

    @PostMapping("showroom/currency/change_to/{user_id}")
    public String converter(Currency currency, @PathVariable Long user_id, @RequestParam("to_curr") String selectedValue) {
        List<Currency> currencyList = currencyService.change_current_value(selectedValue);
        Long count = 1L;
        for (Currency variable : currencyList) {
            if (Objects.equals(variable.getValue(), selectedValue)) {
                variable.set_current_value(true);
            }
//            variable.setId(count);
//            count += 1;
            currencyService.saveCurr(variable);
        }

        return "redirect:/showroom/" + user_id;
    }
}
