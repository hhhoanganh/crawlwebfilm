package com.example.demo.UserController;

import com.example.demo.Dto.CinemaDTO;
import com.example.demo.Service.CinemaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin
@RequestMapping("api/user/cinema")
public class CinemaController {

    @Autowired
    private CinemaService cinemaService;

    @PostMapping(path="/save")
    public String saveCinema(@RequestBody CinemaDTO cinemaDTO){
        String id = cinemaService.addCinema(cinemaDTO).toString();
        return id;
    }

}
