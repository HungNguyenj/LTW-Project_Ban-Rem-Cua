package com.curtainshop.services;

import com.curtainshop.beans.Gallery;
import com.curtainshop.database.JDBIConnector;

import java.util.List;

public class GalleryService {
    private static GalleryService instance;

    private  GalleryService(){}
    public  GalleryService getInstance() {
        if (instance == null) instance = new GalleryService();
        return instance;
    }

    public List<Gallery> getListImageByProductId(int productId) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT  * FROM gallery WHERE productId = :prdId")
                    .bind("prdId", productId)
                    .mapToBean(Gallery.class)
                    .list();
        });
    }

    public boolean addImage(Gallery image) {
        return  JDBIConnector.get().withHandle(handle -> {
            return handle.createUpdate("INSERT INTO gallery(productId, imagePath) VALUES (:productId, :imagePath)")
                    .bindBean(image)
                    .execute();
        }) > 0;
    }
    public boolean deleteImageByProductId(int productId) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createUpdate("DELETE FROM gallery WHERE productId = :prdId")
                    .bind("prdId", productId)
                    .execute();
        }) > 0;
    }

}
