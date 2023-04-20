package com.example.courseworkcarswebapplication.controllers;

import com.example.courseworkcarswebapplication.services.CurrencyService;
import com.example.courseworkcarswebapplication.services.NewsService;
import com.example.courseworkcarswebapplication.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class NewsController {

    private final UserService userService;
    private final NewsService newsService;

    @GetMapping("showroom/news/{admin_id}")
    public String get_news_page(@PathVariable Long admin_id, Model model) {
        model.addAttribute("user", userService.findById(admin_id));
        return "news/news";
    }
}
