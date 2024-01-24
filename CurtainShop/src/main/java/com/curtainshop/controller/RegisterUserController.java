package com.curtainshop.controller;

import com.curtainshop.beans.User;
import com.curtainshop.services.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.nio.charset.CharsetEncoder;

@WebServlet(name = "RegisterUserController", value = "/registerUser")
public class RegisterUserController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String fullName = request.getParameter("fullName");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");

        String checkBoxValue = request.getParameter("term");
        System.out.println(checkBoxValue);
        boolean isChecked = "on".equalsIgnoreCase(checkBoxValue);

        if (fullName.equals("") && username.equals("") && email.equals("") && phone.equals("") && address.equals("") &&
                password.equals("") && repassword.equals("") ) {
            request.setAttribute("error", "Không được bỏ trống!");
            request.getRequestDispatcher("/register.jsp").forward(request,response);
        }

        if ((checkRePassword(password, repassword) == false)) {
            request.setAttribute("error", "Mật khẩu không chính xác!");
            request.getRequestDispatcher("/register.jsp").forward(request,response);
        }
        if ((username.equals("")) || (password.equals(""))) {
            request.setAttribute("error", "Thông tin tài khoản hoặc mật khẩu không chính xác!");
            request.getRequestDispatcher("/register.jsp").forward(request,response);
        } else if (checkUserName(username) == false) {
            request.setAttribute("error", "Tên tài khoản đã tồn tại!");
            request.getRequestDispatcher("/register.jsp").forward(request,response);
        } else if (!isChecked) {
            request.setAttribute("error", "Vui lòng đọc kỹ và chấp nhận điều khoản!");
            request.getRequestDispatcher("/register.jsp").forward(request,response);
        }
        else {
            String hasedPassword = UserService.getInstance().hashPasswordSHA256(password);
            User user = new User();
            int userId = UserService.getInstance().getLastUserId() + 1;
            user.setId(userId);
            user.setUserName(username);
            user.setPassword(hasedPassword);
            user.setEmail(email);
            user.setPhone(phone);
            user.setFullName(fullName);
            user.setAddress(address);
            user.setRoleId(2);

            UserService.getInstance().register(user);
            request.setAttribute("error", "Đăng ký thành công!");
            request.getRequestDispatcher("/register.jsp").forward(request,response);
        }



    }

    private boolean checkUserName(String username) {
        for (User user : UserService.getInstance().getAllUser()) {
            if (user.getUserName().equals(username)) {
                return false;
            }
        }
        return true;
    }

    private boolean checkRePassword(String password, String repassword) {
        if (repassword.equalsIgnoreCase(password))
            return true;
        return false;
    }

}
