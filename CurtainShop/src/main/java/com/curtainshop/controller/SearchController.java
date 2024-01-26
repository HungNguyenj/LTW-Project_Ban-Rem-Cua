package com.curtainshop.controller;

import com.curtainshop.beans.Product;
import com.curtainshop.services.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchController", value = "/searchController")
public class SearchController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String search = request.getParameter("search");
        List<Product> list = ProductService.getInstance().searchProductByText(search);
        request.setAttribute("listSearch",list);
        request.getRequestDispatcher("/search.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
