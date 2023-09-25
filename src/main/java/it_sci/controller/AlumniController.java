package it_sci.controller;

import it_sci.model.Alumni;
import it_sci.model.News;
import it_sci.service.AlumniService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import javax.validation.Valid;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

@Controller
@RequestMapping("/alumni")
public class AlumniController {
    @Autowired
    private AlumniService alumniService;
    @GetMapping("/list_alumni")
    public String listAlumni(Model model) {
//        model.addAttribute("title", "ลงชื่อเข้าสู่ระบบ");
        model.addAttribute("list_alumni",alumniService.getAlumnis());
        return "JSP/Alumni/list_alumni";
    }
    @GetMapping("/news")
    public String shoeNews(Model model) {
//        model.addAttribute("title", "ลงชื่อเข้าสู่ระบบ");
        //model.addAttribute("list_alumni",alumniService.getAlumni());
        return "JSP/News";
    }

    @GetMapping("/{id}/view_alumni_detail")
    public String ShowAlumniDetail(@PathVariable("id") String id, Model model) {
       Alumni alumni = alumniService.getAlumni(id);
//        model.addAttribute("title", title + " - รายการสินค้า");
//        model.addAttribute("shop", shop);
        model.addAttribute("alumni_detail", alumni);
        return "JSP/Alumni/View_alumni_detail";
    }

    @GetMapping("/list_alumni_manage")
    public String listAlumnis(Model model) {
//        model.addAttribute("title", "ลงชื่อเข้าสู่ระบบ");
        model.addAttribute("list_manage_alumni",alumniService.getAlumnis());
        return "JSP/Alumni/list_manage_alumni";
    }

    @GetMapping("/do_addAlumni")
    public String do_addAlumni(Model model){
        model.addAttribute("alumni", new Alumni());
        return "JSP/Alumni/add_alumni";
    }
    @PostMapping(path = "/save")
    public String saveAlumniForm(
            @RequestParam Map<String, String> allReqParams,
            @RequestParam(name = "otherPosition", required = false) String otherPosition
    ) throws ParseException {
        String id = allReqParams.get("alumni_id");
        String firstname = allReqParams.get("firstname");
        String lastname = allReqParams.get("lastname");
        String graduationyear = allReqParams.get("year");
        String position = allReqParams.get("position");
        String company = allReqParams.get("company");
        String phone = allReqParams.get("phone");
        String email = allReqParams.get("email");
        String image = allReqParams.get("image");
        String expertise = allReqParams.get("expertise");
        String award = allReqParams.get("award");

        // ตรวจสอบค่า position ว่าเป็น "อื่นๆ" หรือไม่
        if ("อื่นๆ".equals(position)) {
            // ใช้ค่า otherPosition ที่รับมา
            position = otherPosition;
        }

        Alumni alumni = new Alumni(id, firstname, lastname, graduationyear, position, company, phone, email, image, expertise, award);
        alumniService.SaveAlumni(alumni);
        return "redirect:/alumni/list_alumni_manage";
    }


    @InitBinder
    public void initBinder(WebDataBinder dataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

    @GetMapping("/{id}/update")
    public String isEditAlumni(@Valid @PathVariable("id") String id, Model model) {
        Alumni alumni = alumniService.getAlumni(id);
//        model.addAttribute("title", "แก้ไข" + title);
//        model.addAttribute("categories", categoryService.getCategories());
        model.addAttribute("alumni", alumni);
        return "JSP/Alumni/edit_alumni";
    }


    @PostMapping(path = "/{id}/edit/save")
    public String saveEditAlumni(@RequestParam Map<String, String> allReqParams, @PathVariable String id) throws ParseException {
        Alumni alumni = alumniService.getAlumni(id);
        if (alumni != null) {
            alumni.setId(allReqParams.get("alumni_id"));
            alumni.setFirstname(allReqParams.get("firstname"));
            alumni.setLastname(allReqParams.get("lastname"));
            alumni.setGraduationyear(allReqParams.get("year"));
            String position = allReqParams.get("position"); // รับค่า position จาก allReqParams
            alumni.setPosition(position);
            alumni.setCompany(allReqParams.get("company"));
            alumni.setPhone(allReqParams.get("phone"));
            alumni.setEmail(allReqParams.get("email"));
            alumni.setImage(allReqParams.get("image"));
            alumni.setExpertise(allReqParams.get("expertise"));
            alumni.setAward(allReqParams.get("award"));

            // ตรวจสอบค่า position ว่าเป็น "อื่นๆ" หรือไม่
            if ("อื่นๆ".equals(position)) {
                String otherPosition = allReqParams.get("otherPosition"); // รับค่า otherPosition จาก allReqParams
                alumni.setPosition(otherPosition);
            }

            alumniService.EditAlumni(alumni);
        }
        return "redirect:/alumni/list_alumni_manage";
    }

    @GetMapping("/{id}/delete")
    public String isRemoveAlumni(@PathVariable("id") String id) {
        alumniService.removeAlumni(id);
        return "redirect:/alumni/list_alumni_manage";
    }

}
