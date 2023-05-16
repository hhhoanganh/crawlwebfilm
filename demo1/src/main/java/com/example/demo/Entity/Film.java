package com.example.demo.Entity;

import jakarta.persistence.*;


import static jakarta.persistence.GenerationType.AUTO;


@Entity
@Table(name= "film_detail")
public class Film {
    @Id
    @GeneratedValue(strategy = AUTO)
    private int id;
    @Column(name= "name")
    private String name;
    @Column(name = "link_image")
    private String linkimage;
    @Column(name = "price")
    private int price;
    @Column(name = "category")
    private String category;
    @Column(name = "desciption")
    private String desciption;



    public Film(String name, String linkimage, int price, String category, String desciption) {
        this.name = name;
        this.linkimage = linkimage;
        this.price = price;
        this.category = category;
        this.desciption = desciption;
    }

    public Film() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLinkimage() {
        return linkimage;
    }

    public void setLinkimage(String linkimage) {
        this.linkimage = linkimage;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDesciption() {
        return desciption;
    }

    public void setDesciption(String desciption) {
        this.desciption = desciption;
    }

    @Override
    public String toString() {
        return "Film{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", linkimage='" + linkimage + '\'' +
                ", price=" + price +
                ", category='" + category + '\'' +
                ", desciption='" + desciption + '\'' +
                '}';
    }
}

