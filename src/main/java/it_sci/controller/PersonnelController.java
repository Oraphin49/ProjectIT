package it_sci.controller;

import it_sci.model.*;
import it_sci.service.PersonnelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/personnel")
public class PersonnelController {
    @Autowired
    private PersonnelService personnelService;


    @GetMapping("/list_personnel")
    public String listPersonnel(Model model) {
//        model.addAttribute("title", "ลงชื่อเข้าสู่ระบบ");
        model.addAttribute("list_personnel", personnelService.getPersonnel());
        return "JSP/Personnel/list_Personnel";
    }

    @GetMapping("/{id}/view_personnel_detail")
    public String ShowPersonnelDetail(@PathVariable("id") String id, Model model) {
        Personnel personnel = personnelService.getPersonnel(id);
        List<Award> award = personnelService.getAward(id);
        List<Education_histiry>  education_histiry = personnelService.getEducationHistiry(id);
        List<Research_grant> research_grant = personnelService.getResearchGrant(id);
        model.addAttribute("personnel_detail", personnel);
        model.addAttribute("award_detail",award);
        model.addAttribute("education_history_detail",education_histiry);
        model.addAttribute("research_grant_detail",research_grant);
        return "JSP/Personnel/View_personnel";
    }

    @GetMapping("/{id}/edit_personnel_detail")
    public String ShowFormEditPersonnelDetail(@PathVariable("id") String id, Model model) {
        Personnel personnel = personnelService.getPersonnel(id);
        List<Award> award = personnelService.getAward(id);
        List<Education_histiry>  education_histiry = personnelService.getEducationHistiry(id);
        List<Research_grant> research_grant = personnelService.getResearchGrant(id);
        List<Academic_Ranks> academic_ranks = personnelService.getAcademicRanks();
        model.addAttribute("personnel_detail", personnel);
        model.addAttribute("award_detail",award);
        model.addAttribute("education_history_detail",education_histiry);
        model.addAttribute("research_grant_detail",research_grant);
        model.addAttribute("academic_ranks_detail",academic_ranks);
        return "JSP/Personnel/Edit_Profile";
    }

    @GetMapping("/add_personnel")
    public String addPersonnel(Model model){
        model.addAttribute("ar_detail",personnelService.getAcademicRanks());
        return "JSP/Personnel/Add_Personnel";
    }

    @PostMapping(path="/save_personnnel")
    public String saveAddPersonnel(@RequestParam Map<String, String> allReqParams) throws ParseException {
        String personnelid = allReqParams.get("id");
        String firstname = allReqParams.get("firstname");
        String lastname= allReqParams.get("lastname");
        String position = allReqParams.get("position");
        String phone = allReqParams.get("phone");
        String image = allReqParams.get("image");
        String scolarlink = allReqParams.get("scolarlink");
        String description = allReqParams.get("description");
        String experitse = allReqParams.get("experitise");
        String workexperience = allReqParams.get("workexperience");
        String email = allReqParams.get("email");
        String password = allReqParams.get("password");
        Academic_Ranks academic_ranks = personnelService.getAcademicRankById(allReqParams.get("ar_id"));

        Personnel personnel = new Personnel(personnelid,firstname,lastname,
                position,phone,image,scolarlink,description,experitse,workexperience,email,password,academic_ranks);
        personnelService.SavePersonnel(personnel);
        return "redirect:/";
    }


    @GetMapping("/{id}/update")
    public String isEditPersonnel(@PathVariable("id") String id, Model model) {
        Personnel personnel = personnelService.getPersonnel(id);
//        model.addAttribute("title", "แก้ไข" + title);
//        model.addAttribute("categories", categoryService.getCategories());
        model.addAttribute("personnel", personnel);
        return "JSP/Personnel/Edit_Profile";
    }

    @PostMapping(path = "/{id}/edit/save")
    public String saveEditProfile(@RequestParam Map<String, String> allReqParams, @PathVariable String id) throws ParseException {
        Personnel personnel =personnelService.getPersonnel(id);
        if (personnel != null) {
            personnel.setId(allReqParams.get("id"));
            personnel.setFirstname(allReqParams.get("firstname"));
            personnel.setLastname(allReqParams.get("lastname"));
            personnel.setPosition(allReqParams.get("position"));
            personnel.setPhone(allReqParams.get("phone"));
            personnel.setImage(allReqParams.get("image"));
            personnel.setScolarlink(allReqParams.get("scolarlink"));
            personnel.setDescription(allReqParams.get("description"));
            personnel.setExpertise(allReqParams.get("expertise"));
            personnel.setWorkexperience(allReqParams.get("workexperience"));
            personnel.setEmail(allReqParams.get("email"));

            personnelService.updatePersonnel(personnel);
        }
        return "redirect:/";
    }
}
