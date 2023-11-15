package it_sci.controller;

import it_sci.model.News;
import it_sci.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Stream;

@Controller
public class WebHomeController {

    private final NewsService newsService;

    @Autowired
    public WebHomeController(NewsService newsService) {
        this.newsService = newsService;
    }

    @RequestMapping("/")
    public String showHome(Model model,HttpServletRequest request) {


        List<News> newsList = newsService.getNews();
        for (News news : newsList) {
            List<String> imageFiles = getImagesFromDirectory(news.getId(),request);
            news.setNewsImage(imageFiles);
        }
        List<News> limitedNewsList = newsList.subList(0, Math.min(newsList.size(), 8));  // กรองข้อมูลเหลือเพียง 8 ข่าว
        model.addAttribute("newsList", limitedNewsList);  // ส่งข้อมูลไปยังหน้า JSP
        return "JSP/home";
    }

    private List<String> getImagesFromDirectory(Long newsId,HttpServletRequest request) {
        List<String> imageFiles = new ArrayList<>();
        String uploadDirectory = request.getSession().getServletContext().getRealPath("/") + "//assets//image//news//"+ newsId +"//";

        try (Stream<Path> paths = Files.walk(Paths.get(uploadDirectory))) {
            paths.filter(Files::isRegularFile)
                    .map(Path::getFileName)
                    .map(Path::toString)
                    .forEach(imageFiles::add);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return imageFiles;
    }


    @RequestMapping("/course")
    public String showCourse() {
        return "JSP/course";
    }

    @RequestMapping("/course65")
    public String showCourse65() {
        return "JSP/Course65";
    }

    @RequestMapping("/plan")
    public String showPlan() {
        return "JSP/Plan";
    }

    @RequestMapping("/history")
    public String showHistory() {
        return "JSP/history";
    }

    @RequestMapping("/contact")
    public String showContact() {
        return "JSP/Contact";
    }
}


