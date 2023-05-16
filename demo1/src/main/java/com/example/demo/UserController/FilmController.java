package com.example.demo.UserController;

import com.example.demo.Dto.FilmDTO;
import com.example.demo.Service.FilmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin
@RequestMapping("api/user/film")
public class FilmController {

    @Autowired
    private FilmService filmService;

    @PostMapping(path="/save")
    public String saveFilm(@RequestBody FilmDTO filmDTO){
        String id = filmService.addFilm(filmDTO).toString();
        return id;
    }


}
