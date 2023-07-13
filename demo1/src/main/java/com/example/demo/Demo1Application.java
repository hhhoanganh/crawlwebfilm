package com.example.demo;

import com.example.demo.Dto.CinemaDTO;
import com.example.demo.Dto.FilmDTO;
import com.example.demo.Entity.FilmCinema;
import com.example.demo.Service.CinemaService;
import com.example.demo.Service.FilmCinemaService;
import com.example.demo.Service.FilmService;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
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

	public static void main(String[] args) throws SQLException {
        SpringApplication.run(Demo1Application.class,args);

	}

    @Bean
    CommandLineRunner run(FilmService filmService, CinemaService cinemaService, FilmCinemaService filmCinemaService){
        return orgs-> {

            System.setProperty("webdriver.chrome.driver", "E:/Crawler/crawlwebfilm-add-databases/chromedriver.exe");

            ChromeOptions options = new ChromeOptions();
            options.addArguments("--remote-allow-origins=*");
            options.addArguments("--disable-notifications");
            WebDriver driver = new ChromeDriver(options);
//            String URL = "https://www.cgv.vn/default/movies/now-showing.html";
//            driver.navigate().to(URL);

//            WebElement contruct = driver.findElement(By.xpath("/html/body/div[3]/div/div[3]/div[2]/div"));
//            List<WebElement> obj = contruct.findElements(By.className("film-lists"));
//
//            for (WebElement ar : obj) {
//                // lay du lieu film
//                ar = ar.findElement(By.className("product-image"));
//                String url = ar.getAttribute("href");
//                ar = ar.findElement(By.tagName("img"));
//                String linkImage = ar.getAttribute("src");
//                WebDriver driver1 = new ChromeDriver(options);
//                driver1.get(url);
//                String namefilm = driver1.findElement(By.className("product-name")).getText();
//                String desciption = driver1.findElement(By.className("tab-container")).getText();
//                WebElement a = driver1.findElement(By.className("movie-genre"));
//                String category = a.findElement(By.className("std")).getText();
//
////                FilmDTO film = new FilmDTO(0, namefilm, linkImage, 0, category, desciption);
////                filmService.addFilm(film);//nap film
//                //---------------------------------------------------------------------------------------
//				driver1.close();
//                break;
//            }
//
////			driver = new ChromeDriver(options);
//			//lay du lieu rap chieu film
//
//			String str= driver.findElement(By.xpath("/html/body/div[3]/div/header/div/div[2]/nav/ol/li[2]/ul/li[1]/a")).getAttribute("href");
//			driver.get(str);
//            driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10));
//			new WebDriverWait(driver, Duration.ofSeconds(20)).until(ExpectedConditions.elementToBeClickable(By.xpath("/html/body/div[3]/div/div[3]/div/div/div/div[1]/div/div[1]/div[2]/div/div[2]/ul/li[1]/span")));
//			driver.findElement(By.xpath("/html/body/div[3]/div/div[3]/div/div/div/div[1]/div/div[1]/div[2]/div/div[2]/ul/li[1]/span")).click();
//			contruct = driver.findElement(By.xpath("/html/body/div[3]/div/div[3]/div/div/div/div[1]/div/div[1]/div[2]/div/div[3]/ul"));
//			List<WebElement> listcinema = contruct.findElements(By.className("cgv_city_1"));
//			for (WebElement ob:listcinema){
//				try {
//                    ob.click();
//					driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10));
//					System.out.println("-----------------------------------------------");
//					String nameCinema = driver.findElement(By.xpath("/html/body/div[3]/div/div[3]/div/div/div/div[1]/div/div[2]/div[1]/div[2]/h3")).getText();
//					String address = driver.findElement(By.xpath("/html/body/div[3]/div/div[3]/div/div/div/div[1]/div/div[2]/div[2]/div[2]/div[1]/div/div[1]")).getText();
//					String hotLine = driver.findElement(By.xpath("/html/body/div[3]/div/div[3]/div/div/div/div[1]/div/div[2]/div[2]/div[2]/div[1]/div/div[3]/div")).getText();
//					//luu thong tin cua rap
//					System.out.println(nameCinema + " " + address + " " + hotLine);
//				CinemaDTO cinemaDTO= new CinemaDTO(0,nameCinema,address,hotLine);
//				cinemaService.addCinema(cinemaDTO);
//					List<WebElement> filmTime = driver.findElements(By.className("film-list"));
//					for (WebElement ar : filmTime) {
//						WebElement label = ar.findElement(By.className("film-label"));
//						String name = label.findElement(By.tagName("a")).getText();
//						name=name.substring(0,name.lastIndexOf(' ',name.length()));
//						System.out.println(name);
//						WebElement time = ar.findElement(By.className("film-right"));
//						List<WebElement> timeList = time.findElements(By.className("item"));
//						int idfilm=filmService.findIdFilmByName(name);
//						int idCinema=cinemaService.findIdCinemaByName(nameCinema);
//						for (WebElement ar1 : timeList) {
//							String startShowing = ar1.getText();
//							System.out.println(startShowing);
//
//
//						    FilmCinema filmCinema=new FilmCinema(idfilm,idCinema,startShowing,name,nameCinema);
//						    filmCinemaService.addFilmCinema(filmCinema);
//						}
//
//					}
//				}
//				catch(Exception e)
//				{ }
//
//			}
			String URL = "https://www.lottecinemavn.com/LCHS/Contents/Movie/Movie-List.aspx";
			driver.navigate().to(URL);
			WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(20));
			WebElement element = wait.until(ExpectedConditions.elementToBeClickable(By.xpath("/html/body/form/div[4]/div[4]/div[2]/div[2]/div[2]/a")));
			element.click();
            Thread.sleep(10000);
			WebElement filmlist= driver.findElement(By.xpath("/html/body/form/div[4]/div[4]/div[2]/div[2]/div[2]/ul"));
			List<WebElement> filmNameList = filmlist.findElements(By.tagName("li"));
			for(WebElement obj:filmNameList){
                //lấy tên phim
				try {
					WebElement imgWeb = obj.findElement(By.className("img"));
					String img = imgWeb.getAttribute("src");
					//ten phim
					WebElement nameWeb = obj.findElement(By.className("list_text"));
					nameWeb =nameWeb.findElement(By.tagName("dt"));
					String nameFilm = nameWeb.getText();
					boolean a=true;
					boolean b=true;
					while(a){
					    if(nameFilm.charAt(0)<'A'|| nameFilm.charAt(0)>'Z'){
							nameFilm=nameFilm.substring(1);
						} else if(nameFilm.charAt(1)<'~'&&nameFilm.charAt(1)>'Z' && b){
							nameFilm=nameFilm.substring(2);
							b=false;
						} else a =false;
					}
					System.out.println(nameFilm);
					FilmDTO film = new FilmDTO(0, nameFilm, img, 0, "","");
                    filmService.addFilm(film);
				}
				catch (Exception e){}
			}

			//lấy lich chieu phim
			System.out.println("<------------------------------------------------------------>");
			driver.findElement(By.xpath("/html/body/form/div[4]/div[2]/div[6]/ul/li[2]/a")).click();
			element = wait.until(ExpectedConditions.elementToBeClickable(By.xpath("/html/body/form/div[4]/div[2]/div[6]/ul/li[2]/div/ul/li[2]/a")));
			element.click();
			driver.findElement(By.xpath("/html/body/form/div[4]/div[4]/div/div[2]/ul/li[1]/span/a")).click();
			element = driver.findElement(By.xpath("/html/body/form/div[4]/div[4]/div/div[2]/ul/li[1]/div/ul"));
			List<WebElement> list = element.findElements(By.tagName("li"));

			for(WebElement obj: list){
				System.out.println(obj.getText());
				String nameCinema = obj.getText();
				CinemaDTO cinemaDTO= new CinemaDTO(0, nameCinema, "","");
				cinemaService.addCinema(cinemaDTO);
				obj.click();
				boolean t= true;
				while (t) {
					WebElement element1 = driver.findElement(By.xpath("/html/body/form/div[4]/div[4]/div/div[4]/div[1]/a"));
					String displayValueCSS = element1.getCssValue("display");
					if(displayValueCSS.equals("none")){
						t =false;
					} else {
						element1.click();
					}
				}
				WebElement element1=driver.findElement(By.xpath("/html/body/form/div[4]/div[4]/div/div[4]/div[1]/div"));
				List<WebElement> list1 = element1.findElements(By.tagName("dl"));
				for (WebElement ob:list1){
					//format name
                    String name = ob.findElement(By.tagName("dt")).getText();
					boolean a=true;
					boolean b=true;
					while(a){
						if(name.charAt(0)<'A'|| name.charAt(0)>'Z'){
							name=name.substring(1);
						} else if(name.charAt(1)<'~'&&name.charAt(1)>'Z' && b){
							name=name.substring(2);
							b=false;
						} else a =false;
					}
					System.out.println(name);
					List<WebElement> list2 = ob.findElements(By.className("clock"));
					int idfilm=filmService.findIdFilmByName(name);
					int idCinema=cinemaService.findIdCinemaByName(nameCinema);
					for(WebElement oob:list2){
						System.out.println(oob.getText());
						String startShowing=oob.getText();
						FilmCinema filmCinema=new FilmCinema(idfilm,idCinema,startShowing,name,nameCinema);
						filmCinemaService.addFilmCinema(filmCinema);

					}

				}
			}
			driver.close();




        };

    }

}
