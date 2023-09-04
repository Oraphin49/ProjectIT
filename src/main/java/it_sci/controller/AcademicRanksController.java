//package it_sci.controller;
//
//import it_sci.model.Academic_Ranks;
//import it_sci.model.Award;
//import it_sci.service.PersonnelService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import java.text.ParseException;
//import java.util.List;
//import java.util.Map;
//
//@Controller
//@RequestMapping("/personnel")
//public class AcademicRanksController {
//
//    @Autowired
//    private PersonnelService personnelService;
//
//    @GetMapping("/{id}/update")
//    public String isEditPersonnel(@PathVariable("id") String id, Model model) {
//        List<Academic_Ranks> academic_ranks = personnelService.getAcademicRanks();
//        model.addAttribute("AcademicRanks", academic_ranks);
//        return "JSP/Personnel/Edit_Profile";
//    }
//
//    @PostMapping(path = "/{id}/edit/save")
//    public String saveEditProfile(@RequestParam Map<String, String> allReqParams, @PathVariable String id) throws ParseException {
//        Academic_Ranks academic_ranks = personnelService.getAcademicRankById(id);
//        if (academic_ranks != null) {
//           academic_ranks.setId(allReqParams.get("id"));
//           academic_ranks.setName(allReqParams.get("academic_ranks_name"));
//        }
//            return "redirect:/";
//        }
//
//}
