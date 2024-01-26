package com.curtainshop.controller;

import com.curtainshop.carts.Carts;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CartController", value = "/CartController")
public class AddCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productId = Integer.valueOf(request.getParameter("productId"));
        int quantity = Integer.valueOf(request.getParameter("quantity"));
        String urlId = request.getParameter("urlId");

        HttpSession session = request.getSession();
        Carts carts = (Carts) session.getAttribute("cart");

        if (carts == null) {
            carts = new Carts();
        }
        carts.add(productId,quantity);
        session.setAttribute("cart", carts);

//        if (carts == null && carts.update(productId,quantity)) {
//            session.setAttribute("cart", carts);
//        }

        if (urlId == null) {
            response.sendRedirect(  "cart.jsp");
        } else if (urlId.equals("1")){
            response.sendRedirect( "product-info.jsp?id=" + productId);
        } else if (urlId.equals("2")) {
            response.sendRedirect( "index.jsp");
        }
    }
}
