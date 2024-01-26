package com.curtainshop.services;

import com.curtainshop.beans.Gallery;
import com.curtainshop.database.JDBIConnector;

import java.util.List;

public class GalleryService {
    private static GalleryService instance;

    private  GalleryService(){}
    public static GalleryService getInstance() {
        if (instance == null) instance = new GalleryService();
        return instance;
    }

    public List<Gallery> getListImageByProductId(int productId) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT  * FROM gallerys WHERE productId = :prdId")
                    .bind("prdId", productId)
                    .mapToBean(Gallery.class)
                    .list();
        });
    }

    public boolean addImage(Gallery image) {
        return  JDBIConnector.get().withHandle(handle -> {
            return handle.createUpdate("INSERT INTO gallerys VALUES (:id, :productId, :imageName, :imagePath)")
                    .bindBean(image)
                    .execute();
        }) > 0;
    }
    public boolean deleteImageByProductId(int productId) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createUpdate("DELETE FROM gallerys WHERE productId = :prdId")
                    .bind("prdId", productId)
                    .execute();
        }) > 0;
    }

    public int getLastGalleryId() {
        Gallery image = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM gallerys ORDER BY id DESC LIMIT 1")
                    .mapToBean(Gallery.class)
                    .one();
        });
        return image.getId();
    }

    public Gallery getOneImageByProductId(int productId) {
        return JDBIConnector.get().withHandle(handle ->  {
            return handle.createQuery("SELECT * FROM gallerys WHERE productId = :id LIMIT 1")
                    .bind("id", productId)
                    .mapToBean(Gallery.class)
                    .findOne()
                    .orElse(null);
        });
    }

    public static void main(String[] args) {
        System.out.println(GalleryService.getInstance().getLastGalleryId());
        System.out.println(GalleryService.getInstance().getOneImageByProductId(1).getImageName());
    }
}
