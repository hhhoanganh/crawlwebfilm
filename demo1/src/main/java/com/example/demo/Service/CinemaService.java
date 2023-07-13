package com.example.demo.Service;

import com.example.demo.Dto.CinemaDTO;
import com.example.demo.Entity.Cinema;
import com.example.demo.Entity.Film;

import java.sql.SQLException;
import java.util.List;


public interface CinemaService {
    Cinema addCinema(CinemaDTO cinemaDTO);
    List<Cinema> getAllCinema();
    int findIdCinemaByName(String name) throws SQLException;
}
