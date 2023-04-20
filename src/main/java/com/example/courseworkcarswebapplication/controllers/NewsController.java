package com.example.courseworkcarswebapplication.controllers;

import com.example.courseworkcarswebapplication.models.News;
import com.example.courseworkcarswebapplication.services.CurrencyService;
import com.example.courseworkcarswebapplication.services.NewsService;
import com.example.courseworkcarswebapplication.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Controller
@RequiredArgsConstructor
public class NewsController {

    private final UserService userService;
    private final NewsService newsService;

    @GetMapping("showroom/news/{admin_id}")
    public String get_news_page(@PathVariable Long admin_id, Model model) {
        model.addAttribute("user", userService.findById(admin_id));
        model.addAttribute("news", newsService.findAll());
        return "news/news";
    }


    @PostMapping("showroom/news/news/add/{admin_id}")
    public String add_news(@RequestParam("file1") MultipartFile file1, @RequestParam("file2") MultipartFile file2,
                           @RequestParam("file3") MultipartFile file3, News news, @PathVariable Long admin_id, @RequestParam("theme") String selectedValue) throws IOException {
        news.setArticle_topic(selectedValue);
        newsService.saveNew(news, file1, file2, file3);
        newsService.save(news);
        return "redirect:/showroom/news/" + admin_id;
    }
}
