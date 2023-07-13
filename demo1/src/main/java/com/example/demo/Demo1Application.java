package com.example.demo;

import com.example.demo.Dto.CinemaDTO;
import com.example.demo.Dto.FilmDTO;
import com.example.demo.Service.CinemaService;
import com.example.demo.Service.FilmService;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import java.sql.*;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@SpringBootApplication
public class Demo1Application {
    public static List<CinemaDTO> createList(int id, String namefilm, String namerap, List<String> time){
        List<CinemaDTO> list=new ArrayList<>();
        for(String time1:time){
            CinemaDTO cinema=new CinemaDTO(0,id,namefilm,namerap,time1);
            list.add(cinema);
        }
        return list;
    }
	public static void main(String[] args) throws SQLException {
        SpringApplication.run(Demo1Application.class,args);

	}

    @Bean
    CommandLineRunner run(FilmService filmService, CinemaService cinemaService){
        return orgs-> {

            System.setProperty("webdriver.chrome.driver", "D:/CrawlDataSelenium/chromedriver.exe");

            ChromeOptions options = new ChromeOptions();
            options.addArguments("--remote-allow-origins=*");
            options.addArguments("--disable-notifications");
            WebDriver driver = new ChromeDriver(options);
            String URL = "https://www.cgv.vn/default/movies/now-showing.html";
            driver.navigate().to(URL);
            WebElement contruct = driver.findElement(By.xpath("/html/body/div[3]/div/div[3]/div[2]/div"));
            List<WebElement> obj = contruct.findElements(By.className("film-lists"));

            for (WebElement ar : obj) {
                // lay du lieu film
                ar = ar.findElement(By.className("product-image"));
                String url = ar.getAttribute("href");
                ar = ar.findElement(By.tagName("img"));
                String linkImage = ar.getAttribute("src");
                WebDriver driver1 = new ChromeDriver(options);
                driver1.get(url);
                String namefilm = driver1.findElement(By.className("product-name")).getText();
                String desciption = driver1.findElement(By.className("tab-container")).getText();
                WebElement a = driver1.findElement(By.className("movie-genre"));
                String category = a.findElement(By.className("std")).getText();
                FilmDTO film = new FilmDTO(0, namefilm, linkImage, 0, category, "");
                filmService.addFilm(film);//nap film
                //---------------------------------------------------------------------------------------
                //lay du lieu thoi gian
                driver1.findElement(By.xpath("/html/body/div[3]/div/div[3]/div[2]/div/div[3]/div[1]/div[5]/div/button")).click();

                try {

                    new WebDriverWait(driver1, Duration.ofSeconds(20)).until(ExpectedConditions.elementToBeClickable(By.xpath("/html/body/div[5]/div[1]/div[2]/div[2]/div[1]/div/div/dl/dd[1]/div/div/dl")));
                    WebElement element = driver1.findElement(By.xpath("/html/body/div[5]/div[1]/div[2]/div[2]/div[1]/div/div/dl/dd[1]/div/div/dl"));
                    element = element.findElement(By.xpath("/html/body/div[5]/div[1]/div[2]/div[2]/div[1]/div/div/dl/dd[1]/div/div/dl/dd[1]/div/dl/dd/div"));
                    List<WebElement> timelist = element.findElements(By.className("sitecgv"));

                    int idx = filmService.findId(film);

                    for (WebElement obj1 : timelist) {
                        String namerap = obj1.findElement(By.className("site")).getText();
                        List<WebElement> timeobj = obj1.findElements(By.className("item"));
                        List<String> time = new ArrayList<>();
                        for (WebElement obj2 : timeobj) {
                            time.add(obj2.getText());
                        }
                        List<CinemaDTO> cinemaList = createList(idx, namefilm, namerap, time);
                        for (CinemaDTO cinema : cinemaList) {
                            cinemaService.addCinema(cinema);
                        }
                    }

                }
                catch (Exception e){}
                finally {
                    driver1.close();
                }
            }
            driver.close();

        };

    }

}
