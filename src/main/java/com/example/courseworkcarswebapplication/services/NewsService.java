package com.example.courseworkcarswebapplication.services;

import com.example.courseworkcarswebapplication.repositories.CurrencyRepository;
import com.example.courseworkcarswebapplication.repositories.NewsRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class NewsService {
    private final NewsRepository newsRepository;
}
