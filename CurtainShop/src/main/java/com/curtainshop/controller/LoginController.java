package com.curtainshop.controller;

import com.curtainshop.beans.User;
import com.curtainshop.services.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginController", value = "/loginController")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = UserService.getInstance().checkLogin(username,password);

        if (user == null) {
            request.setAttribute("error", "Thông tin tài khoản hoặc mật khẩu không chính xác!");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("account", user);
            response.sendRedirect("index.jsp");
        }
        response.getWriter().println("username: " + username);
        response.getWriter().println("password: " + password);
        System.out.println(username + " " + password);
    }
}
