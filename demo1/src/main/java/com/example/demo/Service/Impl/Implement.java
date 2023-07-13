package com.example.demo.Service.Impl;

import com.example.demo.Dto.CinemaDTO;
import com.example.demo.Dto.FilmDTO;
import com.example.demo.Entity.Cinema;
import com.example.demo.Entity.Film;
import com.example.demo.Repo.CinemaRepo;
import com.example.demo.Repo.FilmRepo;
import com.example.demo.Service.CinemaService;
import com.example.demo.Service.FilmService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.sql.*;

@Service
@RequiredArgsConstructor
@Slf4j
public class Implement implements FilmService, CinemaService {
//    @Autowired
    private final FilmRepo filmRepo;

    private final CinemaRepo cinemaRepo;



    @Override
    public Film addFilm(FilmDTO filmDTO){
        log.info("save film");
        Film film = new Film(filmDTO.getName(),filmDTO.getLinkimage(),filmDTO.getPrice(),filmDTO.getCategory(),filmDTO.getDesciption());

        return filmRepo.save(film);
    }


    @Override
    public Cinema addCinema(CinemaDTO cinemaDTO){
        log.info("save rap");
        Cinema cinema = new Cinema(cinemaDTO.getId(),cinemaDTO.getName(),cinemaDTO.getLichchieu(),cinemaDTO.getNamerap());
        return cinemaRepo.save(cinema);
    }

    @Override
    public int findId(FilmDTO filmDTO) throws SQLException {
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/film","root","password");
        Statement stmt=con.createStatement();
        String sql="SELECT id FROM film.film_detail WHERE name = \""+ filmDTO.getName()+"\";";
        //Film film=filmRepo.findByName(filmDTO.getName());
        ResultSet rs= stmt.executeQuery(sql);
        rs.next();
        int idx=rs.getInt(1);
        con.close();
        return idx;
    }

}
