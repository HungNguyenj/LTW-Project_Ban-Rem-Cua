package com.curtainshop.controller;

import com.curtainshop.beans.Gallery;
import com.curtainshop.beans.Product;
import com.curtainshop.services.GalleryService;
import com.curtainshop.services.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "UploadProductController", value = "/upload-product")
@MultipartConfig(
        fileSizeThreshold =1024 * 1024,
        maxFileSize =1024 * 1024 * 10,
        maxRequestSize =1024 * 1024 * 100
)
public class UploadProductController extends HttpServlet {
    private String dataPath = "D:/Github/LTW-Project_Ban-Rem-Cua/CurtainShop/src/main/webapp/data/images";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String productName = request.getParameter("productName");
        double productPrice = Double.valueOf(request.getParameter("productPrice"));
        String material = request.getParameter("material");
        String origin = request.getParameter("origin");
        String type = request.getParameter("type");
        int productDiscount = Integer.valueOf(request.getParameter("productDiscount"));
        String detail = request.getParameter("detail");
        int quantity = Integer.valueOf(request.getParameter("quantity"));

        int productId = ProductService.getInstance().getLastProductId() + 1;

        Product product = new Product();
        product.setId(productId);
        product.setProductName(productName);
        product.setProductPrice(productPrice);
        product.setMaterial(material);
        product.setOrigin(origin);
        product.setType(type);
        product.setProductDiscount(productDiscount);
        product.setProductDetail(detail);
        product.setQuantity(quantity);

        ProductService.getInstance().addProduct(product);

        //image

        for (Part part : request.getParts()) {
            String fileName = part.getSubmittedFileName();

            if (fileName == null)
                continue;

                String imagePath = dataPath + "/" + fileName;
                part.write(imagePath);

                Gallery image = new Gallery();
                int galleryId = GalleryService.getInstance().getLastGalleryId() + 1;
                image.setId(galleryId);
                image.setProductId(productId);
                image.setImageName(fileName);
                image.setImagePath(imagePath);

                GalleryService.getInstance().addImage(image);

        }

        response.sendRedirect("admin/product-manager.jsp");

    }
}
