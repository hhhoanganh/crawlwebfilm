package com.example.demo.Service;

import com.example.demo.Dto.CinemaDTO;
import com.example.demo.Entity.Cinema;


public interface CinemaService {
    Cinema addCinema(CinemaDTO cinemaDTO);
}
