//package it_sci.controller;
//
//
//import it_sci.model.Award;
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
//public class AwardController {
//
//    @Autowired
//    private PersonnelService personnelService;
//
//    @GetMapping("/{id}/update")
//    public String isEditPersonnel(@PathVariable("id") String id, Model model) {
//        List<Award> awards = personnelService.getAward(id);
//        model.addAttribute("award", awards);
//        return "JSP/Personnel/Edit_Profile";
//    }
//
//    @PostMapping(path="/{id}/edit/save")
//    public String saveEditProfile(@RequestParam Map<String, String> allReqParams, @PathVariable String id) throws ParseException {
//        List<Award> awards = personnelService.getAward(id);
//        if (awards != null) {
//            for (Award award : awards) {
//                award.setId(allReqParams.get("id"));
//                award.setName(allReqParams.get("award_name"));
//                award.setYear(allReqParams.get("year"));
//                personnelService.updateAward(award);
//            }
//        }
//        return "redirect:/";
//    }
//
//}
