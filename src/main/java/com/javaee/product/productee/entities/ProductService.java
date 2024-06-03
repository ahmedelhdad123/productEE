package com.javaee.product.productee.entities;

import java.util.ArrayList;
import java.util.List;

public class ProductService {
    private List<Product> products;

    public ProductService() {
    }

    public ProductService(List<Product> products) {
        this.products = products;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
    public void  addProduct(Product product){
        if(this.products == null){
            this.products = new ArrayList<Product>();
        }
        this.products.add(product);
    }
    public void  removeProduct(int id){
        products.removeIf(product -> product.getId() == id);
    }
}
