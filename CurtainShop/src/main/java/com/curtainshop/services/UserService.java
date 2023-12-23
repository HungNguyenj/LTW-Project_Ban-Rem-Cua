package com.curtainshop.services;

import com.curtainshop.beans.User;

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

        return  null;
    }

    public String hashPassword() {
        return "";
    }

    public boolean register(String username, String password, String email, String phone) {

        return false;
    }
}
