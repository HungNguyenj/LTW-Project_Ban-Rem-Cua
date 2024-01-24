package com.curtainshop.services;

import com.curtainshop.beans.User;
import com.curtainshop.database.JDBIConnector;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
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
        User userLogin = null;
        String hashedPass = UserService.getInstance().hashPasswordSHA256(password);
        int userId = -1;
        for (User user : UserService.getInstance().getAllUser()) {
            if (user.getUserName().equalsIgnoreCase(username)) {
                userId = user.getId();
            }
        }
        if (userId != -1) {
            if (UserService.getInstance().getUserById(userId).getPassword().equalsIgnoreCase(hashedPass)) {
                userLogin = UserService.getInstance().getUserById(userId);
            }
        }
        return  userLogin;
    }

    public String hashPasswordSHA256(String pass) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            byte[] hashBytes = messageDigest.digest(pass.getBytes());
            //byte to hex
            StringBuilder hexStringBuilder = new StringBuilder();
            for (byte hashByte : hashBytes) {
                String hex = Integer.toHexString(0xff &  hashByte);
                if (hex.length() == 1) {
                    hexStringBuilder.append('0');
                }
                hexStringBuilder.append(hex);
            }
            return hexStringBuilder.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean register(User user) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createUpdate("INSERT INTO users " +
                    "VALUES (:id, :userName, :password, :email, :phone, :fullName, :address, :roleId)")
                    .bindBean(user)
                    .execute();
        }) > 0;
    }

    public int getLastUserId() {
        User user = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM users ORDER BY id DESC LIMIT 1")
                    .mapToBean(User.class)
                    .one();
        });
        return user.getId();
    }

    public List<User> getAllUser() {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM users")
                    .mapToBean(User.class)
                    .list();
        });
    }

    public User getUserById(int userId) {
        return  JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM users WHERE id = :id")
                    .bind("id", userId)
                    .mapToBean(User.class)
                    .findOne()
                    .orElse(null);
        });
    }
    public User getUserByUserName(String username) {
        return  JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM users WHERE userName = :userName")
                    .bind("userName", username)
                    .mapToBean(User.class)
                    .findOne()
                    .orElse(null);
        });
    }

    public static void main(String[] args) {
        String pass = "123";
        System.out.println( "Password: " + UserService.getInstance().hashPasswordSHA256(pass));
    }
}
