package com.example.demo.Dto;


import jakarta.persistence.Id;

public class CinemaDTO {

    private int id_list;
    private int Id;

    private String name;

    private String lichchieu;

    private String namerap;

    public CinemaDTO(int id_list,int id,String name, String lichchieu, String namerap) {
        this.id_list=id_list;
        this.Id = id;
        this.name = name;
        this.lichchieu = lichchieu;
        this.namerap = namerap;
    }

    public CinemaDTO() {
    }

    @Override
    public String toString() {
        return "CinemaDTO{" +
                "Id=" + Id +
                ", name='" + name + '\'' +
                ", lichchieu='" + lichchieu + '\'' +
                ", namerap=" + namerap +
                '}';
    }

    public int getId() {
        return Id;
    }

    public String getName() {
        return name;
    }

    public String getLichchieu() {
        return lichchieu;
    }

    public String getNamerap() {
        return namerap;
    }

    public void setId(int id) {
        Id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setLichchieu(String lichchieu) {
        this.lichchieu = lichchieu;
    }

    public void setNamerap(String namerap) {
        this.namerap = namerap;
    }
}
