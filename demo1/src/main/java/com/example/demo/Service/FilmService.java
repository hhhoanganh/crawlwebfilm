package com.example.demo.Service;

import com.example.demo.Dto.FilmDTO;
import com.example.demo.Entity.Film;

import java.sql.SQLException;

public interface FilmService {
    Film addFilm(FilmDTO filmDTO);

    int findId(FilmDTO filmDTO) throws SQLException;

}
