package com.curtainshop.services;

import com.curtainshop.beans.User;
import com.curtainshop.database.JDBIConnector;

import java.util.List;

public class UserService {
    private static UserService instance;

    private UserService(){

    }
    public static UserService getInstance() {
        if (instance == null) {
            instance = new UserService();
        }
        return  instance;
    }

    public User checkLogin(String username, String password) {
        List<User> user = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM users WHERE username = :username")
                    .bind("username",username)
                    .mapToBean(User.class)
                    .list();
        });
        if (user.size() == 1) {

        }

        return  null;
    }

    public String hashPassword() {
        return "";
    }

    public boolean register(String username, String password, String email, String phone) {

        return false;
    }


}
