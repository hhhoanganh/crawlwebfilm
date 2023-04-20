package org.example;

import java.util.ArrayList;
import java.util.List;

public class Film {
    private String name;
    private List<String> timeList=new ArrayList<>();
    private String time;

    public Film(String name) {
        this.name = name;
    }

    public Film() {
    }

    public String getName() {
        return name;
    }

    public List<String> getTime() {
        return timeList;
    }

    public void setTime(String time){
        timeList.add(time);
    }
}
