package com.example.courseworkcarswebapplication.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;


@Data
@AllArgsConstructor
@Entity
@Table(name = "news")
@NoArgsConstructor
public class News {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @Column(name = "title")
    private String title;
    @Column(name = "description", length = 7000)
    private String description;
    @Column(name = "publication_date")
    private LocalDateTime publication_date;
    @Column(name = "author")
    private String author;
    @Column(name = "article_topic")
    private String article_topic;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "news", orphanRemoval = true)
    private List<Image> images = new ArrayList<>();
    private Long previewImageId;

    @PrePersist
    private void init() {
        publication_date = LocalDateTime.now();
    }

    public void addImageToNew(Image image) {
        image.setNews(this);
        images.add(image);
    }

}
