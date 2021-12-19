/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Date;
import java.text.SimpleDateFormat;

/**
 *
 * @author Admin
 */
public class Product {

    private int id;
    private int accid;
    private String name;
    private int cateid;
    private int auid;
    private String description;
    private String image;
    private double price;
    private String title;
    private int discount;
    private String status;
    private int amount = 1;

    public Product() {
    }

    public Product(int accid, String name, int cateid, int auid, String description, String image, double price, String title, int discount, String status) {
        this.accid = accid;
        this.name = name;
        this.cateid = cateid;
        this.auid = auid;
        this.description = description;
        this.image = image;
        this.price = price;
        this.title = title;
        this.discount = discount;
        this.status = status;
    }

    public Product(int id, int accid, String name, int cateid, int auid, String description, String image, double price, String title, int discount, String status) {
        this.id = id;
        this.accid = accid;
        this.name = name;
        this.cateid = cateid;
        this.auid = auid;
        this.description = description;
        this.image = image;
        this.price = price;
        this.title = title;
        this.discount = discount;
        this.status = status;
    }
    public Product(int id, int accid, String name, int cateid, int auid, String description, String image, double price, String title, int discount, String status, int amount) {
        this.id = id;
        this.accid = accid;
        this.name = name;
        this.cateid = cateid;
        this.auid = auid;
        this.description = description;
        this.image = image;
        this.price = price;
        this.title = title;
        this.discount = discount;
        this.status = status;
        this.amount = amount;
    }

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAccid() {
        return accid;
    }

    public void setAccid(int accid) {
        this.accid = accid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCateid() {
        return cateid;
    }

    public void setCateid(int cateid) {
        this.cateid = cateid;
    }

    public int getAuid() {
        return auid;
    }

    public void setAuid(int auid) {
        this.auid = auid;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", accid=" + accid + ", name=" + name + ", cateid=" + cateid + ", auid=" + auid + ", description=" + description + ", image=" + image + ", price=" + price + ", title=" + title + ", discount=" + discount + ", status=" + status + '}';
    }

}
