package com.curtainshop.carts;

import com.curtainshop.beans.Product;
import com.curtainshop.services.ProductService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Carts {
    Map<Integer,CartsProduct> listData = new HashMap<>();
    private double totalPrice = 0;

    //add
    public boolean add(int productId) {
        return add(productId,1);
    }
    public boolean add(int productId, int quantity) {
        if (listData.containsKey(productId)) {
            return listData.get(productId).increate(productId,quantity);
        }
        Product product = ProductService.getInstance().getById(productId);
        if (product == null) return false;
        if (quantity <= 0 || quantity > product.getQuantity()) return false;

        if (!listData.containsKey(productId)) {
            listData.put(productId, new CartsProduct(product,quantity));
        }
        return true;
    }

    public Map<Integer, CartsProduct> getListData() {
        return listData;
    }

    public void setListData(Map<Integer, CartsProduct> listData) {
        this.listData = listData;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    //remove
    public void remove(int productId) {
        listData.remove(productId);
    }

    public boolean update(int productId, int newQuantity) {
        if (!listData.containsKey(productId)) {
            return false;
        }
        CartsProduct cartsProduct = listData.get(productId);
        if (newQuantity <= 0 || newQuantity > cartsProduct.getProduct().getQuantity()) return false;
        listData.get(productId).setQuantity(newQuantity);
        return true;
    }

    public int getSize() {
        return listData.size();
    }

    public List<Product> getListProductFromCart() {
        List<Product> list = new ArrayList<>();
        for (int i = 0; i < listData.size(); i++) {
            Product p = listData.get(i).getProduct();
            list.add(p);
            totalPrice += (double) p.getQuantity() * p.getProductPrice();
        }
        return list;
    }

    public double getTotalPrice() {
        return totalPrice;
    }
}
