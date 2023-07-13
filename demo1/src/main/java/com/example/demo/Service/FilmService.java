package com.example.demo.Service;

import com.example.demo.Dto.FilmDTO;
import com.example.demo.Entity.Film;

import java.sql.SQLException;
import java.util.List;

public interface FilmService {
    Film addFilm(FilmDTO filmDTO);

    int findIdFilmByName(String name) throws SQLException;
    List<FilmDTO> getAllFilms();

}
