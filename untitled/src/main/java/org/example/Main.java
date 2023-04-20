package org.example;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

import java.util.List;

public class Main {
    public static boolean isTime(String arg){
        if(arg.contains(":")) return true;
        return false;
    }
    public static List<Film> standard(List<WebElement> list){
        for(WebElement obj:list){
            String[] arg=obj.getText().split("\n");
            Film film=new Film(arg[0]);
            for(int i=3;i<arg.length;i++){
                if(isTime(arg[i]))
                film.setTime(arg[i]);
            }
        }
        return null;
    }

    public static void print(List<WebElement> list){
        for(WebElement obj:list){
            System.out.println(obj.getText());
        }
    }
    public static void main(String[] args) {


        System.setProperty("webdriver.chrome.driver","D:/CrawlDataSelenium/chromedriver.exe");

        ChromeOptions options = new ChromeOptions();
        options.addArguments("--remote-allow-origins=*");
        WebDriver driver = new ChromeDriver(options);
        String URL ="https://rapchieuphim.com/rap/cgv-aeon-ha-dong";
        driver.navigate().to(URL);

        List<WebElement> text = driver.findElements(By.className("table-responsive"));
            //List<WebElement> obj = driver.findElements(By.xpath("/html/body/div[4]/div[2]/div[2]/div[2]/div[2]/div/div"));
        //List<Film> filmList= standard(text);
        print(text);
    }
}