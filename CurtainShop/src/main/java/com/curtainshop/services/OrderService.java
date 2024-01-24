package com.curtainshop.services;

import com.curtainshop.beans.Order;
import com.curtainshop.database.JDBIConnector;

import java.util.List;

public class OrderService {
    private static OrderService instance;

    private OrderService() {

    }

    public static OrderService getInstance() {
        if (instance == null) instance = new OrderService();

        return instance;
    }

    public List<Order> getListOrder() {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM  order")
                    .mapToBean(Order.class)
                    .list();
        });
    }

    public List<Order> getListOrderByUserId(int userId) {
        return  JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM order WHERE userId = :userId")
                    .bind("userId", userId)
                    .mapToBean(Order.class)
                    .list();
        });
    }

    public boolean addOrder(Order order) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createUpdate("INSERT INTO order " +
                    "VALUES (:id, :userId, :deliveryDateFrom, :deliveryDateTo, :orderStatus, :paymentMethod)")
                    .bindBean(order)
                    .execute();
        }) > 0;
    }

    public boolean deleteOrder(int orderId) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createUpdate("DELETE FROM order WHERE id = :id")
                    .bind("id", orderId)
                    .execute();
        }) > 0;
    }
}
