package com.example.demo.Entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

import static jakarta.persistence.GenerationType.AUTO;
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name= "cinema")
public class Cinema {
    @Id
    @GeneratedValue(strategy = AUTO)
    private int id_list;
    @Column(name="id")
    private int id;
    @Column(name= "film_name")
    private String namefilm;
    @Column(name = "lich_chieu")
    private String lichchieu;
    @Column(name = "name_rap")
    private String namerap;

    public Cinema(int id,String namefilm, String namerap, String lichchieu) {
        this.id=id;
        this.namefilm = namefilm;
        this.namerap = namerap;
        this.lichchieu = lichchieu;
    }

    public int getId_list() {
        return id_list;
    }

    public void setId_list(int id_list) {
        this.id_list = id_list;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNamefilm() {
        return namefilm;
    }

    public void setNamefilm(String namefilm) {
        this.namefilm = namefilm;
    }

    public String getLichchieu() {
        return lichchieu;
    }

    public void setLichchieu(String lichchieu) {
        this.lichchieu = lichchieu;
    }

    public String getNamerap() {
        return namerap;
    }

    public void setNamerap(String namerap) {
        this.namerap = namerap;
    }

    @Override
    public String toString() {
        return "Cinema{" +
                "id_list=" + id_list +
                ", id=" + id +
                ", namefilm='" + namefilm + '\'' +
                ", lichchieu='" + lichchieu + '\'' +
                ", namerap='" + namerap + '\'' +
                '}';
    }
}
