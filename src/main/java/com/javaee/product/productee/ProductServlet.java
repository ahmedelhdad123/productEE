package com.javaee.product.productee;

import java.io.IOException;
import java.util.List;

import com.javaee.product.productee.entities.Product;
import com.javaee.product.productee.entities.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/products/*")
public class ProductServlet extends HttpServlet {
    private ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getPathInfo() != null ? request.getPathInfo() : "/";

        if (path.equals("/add")) {
            request.getRequestDispatcher("/AddProduct.jsp").forward(request, response);
        } else if (path.equals("/") || path.equals("/list")) {
            List<Product> products = productService.getProducts();
            request.setAttribute("products", products);
            request.getRequestDispatcher("/Products.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getPathInfo();

        if (path.equals("/delete")) {
            int productId = Integer.parseInt(request.getParameter("productId"));
            productService.removeProduct(productId);
            response.sendRedirect(request.getContextPath() + "/products");
        } else if (path.equals("/add")) {
            String name = request.getParameter("name");
            int price = Integer.parseInt(request.getParameter("price"));
            productService.addProduct(new Product(name, price));
            response.sendRedirect(request.getContextPath() + "/products");
        }
    }
}
