package com.example.courseworkcarswebapplication.services;

import com.example.courseworkcarswebapplication.models.Cars;
import com.example.courseworkcarswebapplication.models.Image;
import com.example.courseworkcarswebapplication.models.News;
import com.example.courseworkcarswebapplication.repositories.CurrencyRepository;
import com.example.courseworkcarswebapplication.repositories.NewsRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class NewsService {
    private final NewsRepository newsRepository;

    public void save(News news) { newsRepository.save(news); }

    public News saveNew(News news, MultipartFile file1, MultipartFile file2, MultipartFile file3) throws IOException {
        Image image1;
        Image image2;
        Image image3;
        if(file1.getSize() != 0) {
            image1 = toImageEntity(file1);
            image1.setPreviewImage(true);
            news.addImageToNew(image1);
        }
        if(file2.getSize() != 0) {
            image2 = toImageEntity(file2);
            news.addImageToNew(image2);
        }
        if(file3.getSize() != 0) {
            image3 = toImageEntity(file3);
            news.addImageToNew(image3);
        }
        News newFromDb = newsRepository.save(news);
        newFromDb.setPreviewImageId(newFromDb.getImages().get(0).getId());
        return newsRepository.save(news);
    }
    public List<News> findAll() { return newsRepository.findAll(); }

    private Image toImageEntity(MultipartFile file) throws IOException {
        Image image = new Image();
        image.setName(file.getName());
        image.setOriginalFileName(file.getOriginalFilename());
        image.setContentType(file.getContentType());
        image.setSize(file.getSize());
        image.setBytes(file.getBytes());
        return image;
    }
}
