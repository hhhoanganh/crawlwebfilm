package com.example.demo.Repo;

import com.example.demo.Entity.FilmCinema;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FilmCinemaRepo extends JpaRepository<FilmCinema, Integer> {
}
