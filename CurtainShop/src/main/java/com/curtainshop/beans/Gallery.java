package com.curtainshop.beans;

public class Gallery {
    private int id;
    private int productId;
    private String imagePath;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    @Override
    public String toString() {
        return "Gallery{" +
                "id=" + id +
                ", productId=" + productId +
                ", imagePath='" + imagePath + '\'' +
                '}';
    }
}
