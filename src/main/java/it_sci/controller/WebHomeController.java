package it_sci.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebHomeController {
//    @RequestMapping("/")
//    public String showHome() {
//        return "JSP/index";
//    }

    @RequestMapping("/")
    public String showHome() {
        return "JSP/Home";
    }

    @RequestMapping("/course")
    public String showCourse() {
        return "JSP/Course";
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


