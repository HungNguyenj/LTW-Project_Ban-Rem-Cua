package com.curtainshop.controller;

import com.curtainshop.carts.Carts;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RemoveCartController", value = "/RemoveCartController")
public class RemoveCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productId = Integer.valueOf(request.getParameter("productId"));

        HttpSession session = request.getSession();
        Carts carts = (Carts) session.getAttribute("cart");

        if (carts == null) {
            response.sendRedirect("cart.jsp");
        } else {
            carts.remove(productId);
            response.sendRedirect("cart.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
