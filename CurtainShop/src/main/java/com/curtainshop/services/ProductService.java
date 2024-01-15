package com.curtainshop.services;

import com.curtainshop.beans.Product;
import com.curtainshop.database.JDBIConnector;

import java.util.List;

public class ProductService {
    private static ProductService instance;

    private ProductService(){

    }

    public static ProductService getInstance() {
        if (instance == null) {
            instance = new ProductService();
        }
        return instance;
    }

    public List<Product> getAllProduct() {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM products")
                    .mapToBean(Product.class)
                    .list();
        });
    }
    public Product getById(int productId){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM products WHERE id = :id")
                    .bind("id", productId)
                    .mapToBean(Product.class)
                    .findOne()
                    .orElse(null);
        });
    }
    public Product getByName(String name) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM products WHERE productName = productName")
                    .bind("productName", name)
                    .mapToBean(Product.class)
                    .findOne()
                    .orElse(null);
        });
    }
    public boolean addProduct(Product product) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createUpdate("INSERT INTO products(productName, productPrice, brandName, material, origin, productDetail, productQuantity) " +
                    "VALUES (:productName, :productPrice, :brandName, :material, :origin, :productDetail, :productQuantity)")
                    .bindBean(product)
                    .execute();
        }) > 0;
    }
    public boolean deleteProduct(int productId){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createUpdate("DELETE FROM products WHERE id = :id")
                    .bind("id", productId)
                    .execute();
        }) > 0;
    }

}
