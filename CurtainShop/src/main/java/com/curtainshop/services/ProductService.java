package com.curtainshop.services;

import com.curtainshop.beans.Product;

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

    public List<Product> getAll() {

        return  null;
    }
    public Product getById(int id){

    return null;
    }
    public Product getByName(String name) {

        return null;
    }
    public void addProduct(Product product) {

    }
    public boolean deleteProduct(int id){

        return false;
    }

}
