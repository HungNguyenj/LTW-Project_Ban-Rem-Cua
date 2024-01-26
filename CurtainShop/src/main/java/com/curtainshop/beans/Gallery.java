package com.curtainshop.beans;

public class Gallery {
    private int id;
    private int productId;
    private String imageName;
    private String imagePath;

    @Override
    public String toString() {
        return "Gallery{" +
                "id=" + id +
                ", productId=" + productId +
                ", imageName='" + imageName + '\'' +
                ", imagePath='" + imagePath + '\'' +
                '}';
    }

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

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }
}
