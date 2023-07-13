package com.example.demo.Service.Impl;

import com.example.demo.Entity.FilmCinema;
import com.example.demo.Repo.FilmCinemaRepo;
import com.example.demo.Service.FilmCinemaService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class FilmCinemaImpl implements FilmCinemaService {
    private final FilmCinemaRepo filmCinemaRepo;

    @Override
    public FilmCinema addFilmCinema(FilmCinema filmCinema) {
        return filmCinemaRepo.save(filmCinema);
    }
}
