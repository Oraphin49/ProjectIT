package it_sci.controller;

import it_sci.model.News;
import it_sci.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class WebHomeController {

    private final NewsService newsService;

    @Autowired
    public WebHomeController(NewsService newsService) {
        this.newsService = newsService;
    }

    @RequestMapping("/")
    public String showHome(Model model) {
        List<News> newsList = newsService.getNews();  // ดึงข้อมูลข่าวจาก Service
        List<News> limitedNewsList = newsList.subList(0, Math.min(newsList.size(), 8));  // กรองข้อมูลเหลือเพียง 8 ข่าว
        model.addAttribute("newsList", limitedNewsList);  // ส่งข้อมูลไปยังหน้า JSP
        return "JSP/Home";
    }


    @RequestMapping("/course")
    public String showCourse() {
        return "JSP/Course";
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


