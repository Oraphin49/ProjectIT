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
        Personnel personnel = personnelService.getPersonnelById(id);
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
        Personnel personnel = personnelService.getPersonnelById(id);
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

    @PostMapping(path="/{p_id}/save_education_add")
    public String saveAddPersonal(@RequestParam Map<String, String> allReqParams,
                                  @PathVariable String p_id) throws ParseException {
//        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String education_name = allReqParams.get("education_name");
        String major_name = allReqParams.get("major_name");
        String university_name = allReqParams.get("university_name");
        String country_name = allReqParams.get("country_name");
        String educationyear = allReqParams.get("educationyear");
        Personnel personnel = personnelService.getPersonnelById(p_id);
        Education_histiry education_histiry = new Education_histiry(education_name,major_name,university_name,educationyear,country_name,personnel);
        personnelService.SavePersonnelEducation(education_histiry);
        return "redirect:/personnel/"+p_id+"/edit_personnel_detail";
    }
    @GetMapping("/{p_id}/{id}/delete")
    public String removePersonnelEducation(@PathVariable("id") long id,
                                           @PathVariable String p_id) {
        personnelService.removePersonnelEducation(id);
        return "redirect:/personnel/"+p_id+"/edit_personnel_detail";
    }

    @PostMapping(path="/{p_id}/save_research_add")
    public String saveAddPersonnel(@RequestParam Map<String, String> allReqParams, @PathVariable String p_id) throws ParseException {
        String research_name = allReqParams.get("research_name");
        String research_year = allReqParams.get("research_year");
        Personnel personnel = personnelService.getPersonnelById(p_id);
        Research_grant research_grant = new Research_grant(research_name,research_year,personnel);
        personnelService.SavePersonnelResearch(research_grant);
        return "redirect:/personnel/" + p_id + "/edit_personnel_detail";
    }
    @GetMapping("/{p_id}/{id}/remove")
    public String removePersonnelResearch(@PathVariable("id") long id,
                                           @PathVariable String p_id) {
        personnelService.removePersonnelResearch(id);
        return "redirect:/personnel/"+p_id+"/edit_personnel_detail";
    }
}
