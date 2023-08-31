package it_sci.controller;

import it_sci.model.Admin;
import it_sci.model.Personnel;
import it_sci.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
@RequestMapping("/login")
class LoginController {

    @Autowired
    private UserService userService;
    @GetMapping("/LoginByAdmin")
    public String loginPageByAdmin(Model model) {
        model.addAttribute("title", "ลงชื่อเข้าสู่ระบบสำหรับผู้ดูแลระบบ");
        return "/JSP/LoginByAdmin";
    }

    @GetMapping("/LoginByPersonnel")
    public String loginPageByPersonnel(Model model) {
        model.addAttribute("title", "ลงชื่อเข้าสู่ระบบสำหรับบุคลากร");
        return "/JSP/LoginByPersonnel";
    }

    @GetMapping("/access-denied")
    public String showAccess(Model model) {
//        model.addAttribute("title", "ลงชื่อเข้าสู่ระบบสำหรับผู้ดูแลระบบ");
        return "/JSP/access-denied";
    }

    @PostMapping("/doLoginByAdmin")
    public String doLoginByAdmin(@RequestParam Map<String , String> map, Model model, HttpSession session){
        String email = map.get("username");
        String password = map.get("password");
        Admin admin = userService.loginAdmin(email,password);

        if (admin !=null){
            session.setAttribute("admin",admin);
            session.setMaxInactiveInterval(60 * 5);
            return  "redirect:/";
        }else {
            model.addAttribute("loginfailed",true);
            return "redirect:/login/access-denied";
        }

    }

    @PostMapping("/doLoginByPersonnel")
    public String doLoginByPersonnel(@RequestParam Map<String , String> map, Model model, HttpSession session){
        String email = map.get("username");
        String password = map.get("password");
        Personnel personnel = userService.loginPersonnel(email,password);

        if (personnel !=null){
            session.setAttribute("personnel",personnel);
            session.setMaxInactiveInterval(60 * 5);
            return  "redirect:/";
        }else {
            model.addAttribute("loginfailed",true);
            return "redirect:/login/access-denied";
        }

    }

    @RequestMapping("/doLogout")
    public String doLogout (HttpSession session){
        session.setAttribute("admin",null);
        session.setAttribute("personnel",null);
        return "redirect:/";
    }
}
