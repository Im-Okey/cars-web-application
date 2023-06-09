package com.example.courseworkcarswebapplication.services;

import com.example.courseworkcarswebapplication.models.Cars;
import com.example.courseworkcarswebapplication.models.Image;
import com.example.courseworkcarswebapplication.repositories.CarsRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;
import java.util.Objects;

@Slf4j
@RequiredArgsConstructor
@Service
public class CarsServices {
    private final CarsRepository carsRepository;

    public List<Cars> findCars(String brand){
        if (brand == null) return carsRepository.findAll();
        if (brand.length() >= 1) return carsRepository.findCarsByBrand(brand);
        return  carsRepository.findAll();
    }
    public List<Cars> sortedCars(String brand_Car, String model_car, String price_from, String price_to, String sort){
        return carsRepository.findByBrandAndModelAndPriceBetween(brand_Car, model_car, Integer.parseInt(price_from),
                Integer.parseInt(price_to), Sort.by(Sort.Direction.fromString(sort), "price"));
    }

    public List<Cars> sortedCarsBrand(String brand_Car, String price_from, String price_to, String sort){
        return carsRepository.findByBrandAndPriceBetween(brand_Car, Integer.parseInt(price_from),
                Integer.parseInt(price_to), Sort.by(Sort.Direction.fromString(sort), "price"));
    }

    public List<Cars> sortedCarsPrice(String price_from, String price_to, String sort){
        return carsRepository.findByPriceBetween(Integer.parseInt(price_from),
                Integer.parseInt(price_to), Sort.by(Sort.Direction.fromString(sort), "price"));
    }

    public Cars saveCar(Cars car, MultipartFile file1, MultipartFile file2, MultipartFile file3) throws IOException {
        Image image1;
        Image image2;
        Image image3;
        if(file1.getSize() != 0) {
            image1 = toImageEntity(file1);
            image1.setPreviewImage(true);
            car.addImageToCar(image1);
        }
        if(file2.getSize() != 0) {
            image2 = toImageEntity(file2);
            car.addImageToCar(image2);
        }
        if(file3.getSize() != 0) {
            image3 = toImageEntity(file3);
            car.addImageToCar(image3);
        }
        Cars carFromDb = carsRepository.save(car);
        carFromDb.setPreviewImageId(carFromDb.getImages().get(0).getId());
        return carsRepository.save(car);
    }

    public List<Cars> findAll() {
        return carsRepository.findAll();
    }

    private Image toImageEntity(MultipartFile file) throws IOException {
        Image image = new Image();
        image.setName(file.getName());
        image.setOriginalFileName(file.getOriginalFilename());
        image.setContentType(file.getContentType());
        image.setSize(file.getSize());
        image.setBytes(file.getBytes());
        return image;
    }

    public Cars findById(Long id){
        return carsRepository.findById(id).orElse(null);
    }
    public void deleteById(Long id){
        carsRepository.deleteById(id);
    }
}
