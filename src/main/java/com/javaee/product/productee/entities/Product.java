package com.javaee.product.productee.entities;

public class Product {
    private static int idCounter = 1;
    private int id;
    private String name;
    private int price;

    public Product(String name, int price) {
        this.id = idCounter++;
        this.name = name;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getPrice() {
        return price;
    }

}
