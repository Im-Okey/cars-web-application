package com.example.courseworkcarswebapplication.models;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "images")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Image {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
    @Column(name = "name")
    private String name;
    @Column(name = "original_file_name")
    private String originalFileName;
    @Column(name = "content_Type")
    private String contentType;
    @Column(name = "is_Preview_Image")
    private boolean isPreviewImage;
    @Column(name = "size")
    private Long size;
    @Lob
    private byte[] bytes;

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
    private Cars cars;

}
