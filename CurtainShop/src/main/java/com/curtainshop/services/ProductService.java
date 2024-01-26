package com.curtainshop.services;

import com.curtainshop.beans.Product;
import com.curtainshop.database.JDBIConnector;

import java.util.*;

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
            return handle.createUpdate("INSERT INTO products VALUES (:id, :productName, :productPrice, :material, :origin, :type, :productDiscount, :productDetail, :quantity)")
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

    public int getLastProductId() {
        Product product = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT id FROM products ORDER BY id DESC LIMIT 1")
                    .mapToBean(Product.class)
                    .one();
        });
        return  product.getId();
    }

    public List<Product> getListProductByName(String name) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM products WHERE productName LIKE :productName")
                    .bind("productName","%" + name + "%")
                    .mapToBean(Product.class)
                    .list();
        });
    }
    public List<Product> getListProductByType(String type) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM products WHERE type LIKE :type")
                    .bind("type","%" + type + "%")
                    .mapToBean(Product.class)
                    .list();
        });
    }
    public List<Product> getListProductByOrigin(String origin) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM products WHERE origin LIKE :origin")
                    .bind("origin","%" + origin + "%")
                    .mapToBean(Product.class)
                    .list();
        });
    }

    public List<Product> searchProductByText(String text) {
        List<Product> result = new ArrayList<>();
        List<Product> check = new ArrayList<>();
        StringTokenizer tokenizer = new StringTokenizer(text);
        while (tokenizer.hasMoreTokens()) {
            String token = tokenizer.nextToken().trim();
            List<Product> list1 = ProductService.getInstance().getListProductByName(token);
            List<Product> list2 = ProductService.getInstance().getListProductByType(token);
            List<Product> list3 = ProductService.getInstance().getListProductByOrigin(token);
            check.addAll(list1);
            check.addAll(list2);
            check.addAll(list3);
        }
        for (int i = 0; i < check.size(); i++) {
            for (int j = i + 1; j < check.size(); j++) {
                if (check.get(i).getId() == check.get(j).getId()) {
                    check.remove(j);
                }
            }
        }
        result.addAll(check);
        return result;
    }



    public static void main(String[] args) {
        System.out.println(ProductService.getInstance().getLastProductId());
    }
}
