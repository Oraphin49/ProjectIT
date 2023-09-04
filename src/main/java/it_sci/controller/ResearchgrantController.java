//package it_sci.controller;
//
//import it_sci.model.Research_grant;
//import it_sci.service.PersonnelService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.*;
//
//import java.text.ParseException;
//import java.util.List;
//import java.util.Map;
//
//@Controller
//@RequestMapping("/personnel")
//public class ResearchgrantController {
//
//    @Autowired
//    private PersonnelService personnelService;
//
//    @GetMapping("/{id}/update")
//    public String isEditPersonnel(@PathVariable("id") String id, Model model) {
//        List<Research_grant> research_grant = personnelService.getResearchGrant(id);;
//        model.addAttribute("ResearchGrant", research_grant);
//        return "JSP/Personnel/Edit_Profile";
//    }
//
//    @PostMapping(path="/{id}/edit/save")
//    public String saveEditProfile(@RequestParam Map<String, String> allReqParams, @PathVariable String id) throws ParseException {
//        List<Research_grant> research_grant = personnelService.getResearchGrant(id);
//        if (research_grant != null) {
//            for (Research_grant researchGrant : research_grant) {
//                researchGrant.setId(allReqParams.get(""));
//                researchGrant.setResearchgrantname(allReqParams.get("grantname"));
//                researchGrant.setResearchgrantyear(allReqParams.get("grantyear"));
//
//
//                personnelService.updateResearch_grant(researchGrant);
//            }
//        }
//        return "redirect:/";
//    }
//}
