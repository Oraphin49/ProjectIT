//package it_sci.controller;
//
//import it_sci.model.Personnel;
//import it_sci.service.PersonnelService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import java.text.ParseException;
//import java.util.Map;
//
//@Controller
//@RequestMapping("/personnel")
//public class AwardController {
//
//    @Autowired
//    private PersonnelService personnelService;
//
//
//    @PostMapping(path = "/{id}/edit/save")
//    public String saveEditProfile(@RequestParam Map<String, String> allReqParams, @PathVariable String id) throws ParseException {
//        Personnel personnel =personnelService.getPersonnel(id);
//
//        if (personnel != null) {
//
//            personnel.setEmail(allReqParams.get("email"));
//
//            personnelService.updatePersonnel(personnel);
//        }
//        return "redirect:/";
//    }
//
//}
