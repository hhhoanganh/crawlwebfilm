package com.example.demo.Service;

import com.example.demo.Entity.FilmCinema;
import org.springframework.stereotype.Service;

@Service
public interface FilmCinemaService {
    FilmCinema addFilmCinema(FilmCinema filmCinema);
}
