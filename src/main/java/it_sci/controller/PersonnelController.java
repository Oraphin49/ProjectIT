package it_sci.controller;

import it_sci.model.*;
import it_sci.service.AcademicranksService;
import it_sci.service.PersonnelService;
import it_sci.util.PathImg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.ParseException;
import java.util.*;

@Controller
@RequestMapping("/personnel")
public class PersonnelController {
    @Autowired
    private PersonnelService personnelService;
    @Autowired
    private AcademicranksService academicranksService;


    @GetMapping("/list_personnel")
    public String listPersonnel(Model model) {
//        model.addAttribute("title", "ลงชื่อเข้าสู่ระบบ");
        model.addAttribute("list_personnel", personnelService.getPersonnel());
        return "JSP/Personnel/list_Personnel";
    }

    @GetMapping("/{id}/view_personnel_detail")
    public String ShowPersonnelDetail(@PathVariable("id") long id, Model model) {
        Personnel personnel = personnelService.getPersonnelById(id);
        List<Award> award = personnelService.getAward(id);
        List<Work_experience> work_experience = personnelService.getWorkexperience(id);
        List<Education_histiry> education_histiry = personnelService.getEducationHistiry(id);
        List<Research_grant> research_grant = personnelService.getResearchGrant(id);
        List<Project_consulting> project_consultings = personnelService.getProjectconsulting(id);
        Set<Academic_Ranks> academicRanks = personnel.getAcademicRank();
        model.addAttribute("academicRanks", academicRanks);
        model.addAttribute("personnel_detail", personnel);
        model.addAttribute("award_detail", award);
        model.addAttribute("work_experiences_detail", work_experience);
        model.addAttribute("education_history_detail", education_histiry);
        model.addAttribute("research_grant_detail", research_grant);
        model.addAttribute("project_consultings_detail", project_consultings);
        return "JSP/Personnel/View_personnel";
    }


    @GetMapping("/add_personnel")
    public String addPersonnel(Model model) {
        List<Academic_Ranks> academicRanks = academicranksService.getAcademic_Ranks();
        model.addAttribute("academicRanks", academicRanks);
        return "JSP/Personnel/Add_Personnel";
    }


    @PostMapping("/save_personnnel")
    public String saveAddPersonnel(@RequestParam Map<String, String> allReqParams,
                                   @RequestParam(name = "imageFile") MultipartFile imageFile,
                                   @RequestParam("selectedAcademicRanks") List<Long> academicRankIds)
            throws ParseException, IOException {
        // รับข้อมูลจากแบบฟอร์ม
        String firstname = allReqParams.get("firstname");
        String lastname = allReqParams.get("lastname");
        String position = allReqParams.get("position");
        String phone = allReqParams.get("phone");
        String image = allReqParams.get("image");
        String scolarlink = allReqParams.get("scolarlink");
        String description = allReqParams.get("description");
        String experitse = allReqParams.get("experitise");
        String email = allReqParams.get("email");
        String password = allReqParams.get("password");



        String imageFileName = null;

        if (!imageFile.isEmpty()) {
            // อัปโหลดไฟล์รูปภาพ
            String originalFilename = imageFile.getOriginalFilename();
            String fileExtension = originalFilename.substring(originalFilename.lastIndexOf('.'));
            String newFileName = UUID.randomUUID().toString() + fileExtension;

            String uploadDirectory = PathImg.path_Img + "/personnel/";
            Path filePath = Paths.get(uploadDirectory, newFileName);
            Files.write(filePath, imageFile.getBytes());

            imageFileName = newFileName;
        }
        Personnel personnel = new Personnel(firstname, lastname, position, phone, imageFileName, scolarlink, description, experitse, email, password);

        personnelService.SavePersonnel(personnel);

        // บันทึกการกำหนดตำแหน่งวิชาการ
        Set<Academic_Ranks> selectedAcademicRanks = new HashSet<>();
        for (Long academicRankId : academicRankIds) {
            Academic_Ranks academicRank = academicranksService.getAcademic_Ranks(academicRankId);
            selectedAcademicRanks.add(academicRank);
        }
        personnelService.savePersonnelAcademicRanks(personnel.getId(), selectedAcademicRanks);

        return "redirect:/";
    }


    @GetMapping("/{id}/edit_personnel_detail")
    public String ShowFormEditPersonnelDetail(@PathVariable("id") long id, Model model) {
        Personnel personnel = personnelService.getPersonnelById(id);
        List<Award> award = personnelService.getAward(id);
        List<Work_experience> work_experience = personnelService.getWorkexperience(id);
        List<Education_histiry> education_histiry = personnelService.getEducationHistiry(id);
        List<Research_grant> research_grant = personnelService.getResearchGrant(id);
        List<Project_consulting> project_consultings = personnelService.getProjectconsulting(id);
        List<Academic_Ranks> academicRanks = academicranksService.getAcademic_Ranks();
        Set<Academic_Ranks> selectedAcademicRanks = personnel.getAcademicRank();
        model.addAttribute("selectedAcademicRanks", selectedAcademicRanks);
        model.addAttribute("academicRanks", academicRanks);
        model.addAttribute("personnel_detail", personnel);
        model.addAttribute("award_detail", award);
        model.addAttribute("work_experience_detail", work_experience);
        model.addAttribute("education_history_detail", education_histiry);
        model.addAttribute("research_grant_detail", research_grant);
        model.addAttribute("project_consultings_detail", project_consultings);
        return "JSP/Personnel/Edit_Profile";
    }

    @PostMapping(path = "/{p_id}/edit/save")
    public String saveEditProfile(@RequestParam Map<String, String> allReqParams, @PathVariable long p_id,
                                  @RequestParam("newImageFile") MultipartFile newImageFile,
                                  @RequestParam("selectedAcademicRanks") List<Long> academicRankIds)
            throws ParseException {
        Personnel personnel = personnelService.getPersonnelById(p_id);
        if (personnel != null) {
            personnel.setFirstname(allReqParams.get("firstname"));
            personnel.setLastname(allReqParams.get("lastname"));
            personnel.setPosition(allReqParams.get("position"));
            personnel.setPhone(allReqParams.get("phone"));
            personnel.setScolarlink(allReqParams.get("scolarlink"));
            personnel.setDescription(allReqParams.get("description"));
            personnel.setExpertise(allReqParams.get("expertise"));
            personnel.setEmail(allReqParams.get("email"));


            // Handle new image upload
            if (!newImageFile.isEmpty()) {
                String originalFilename = newImageFile.getOriginalFilename();
                String fileExtension = originalFilename.substring(originalFilename.lastIndexOf('.'));
                String newFileName = UUID.randomUUID().toString() + fileExtension;

                String uploadDirectory = PathImg.path_Img + "/personnel/";
                Path filePath = Paths.get(uploadDirectory, newFileName);

                try {
                    Files.write(filePath, newImageFile.getBytes());

                    // Delete old image file
                    String oldImageFileName = personnel.getImage();
                    Path oldImageFilePath = Paths.get(uploadDirectory, oldImageFileName);
                    Files.delete(oldImageFilePath);

                    // Update alumni with the new image file name
                    personnel.setImage(newFileName);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            personnelService.updatePersonnel(personnel);

            Set<Academic_Ranks> selectedAcademicRanks = new HashSet<>();
            for (Long academicRankId : academicRankIds) {
                Academic_Ranks academicRank = academicranksService.getAcademic_Ranks(academicRankId);
                selectedAcademicRanks.add(academicRank);
            }
            personnelService.savePersonnelAcademicRanks(personnel.getId(), selectedAcademicRanks);

        }

        return "redirect:/personnel/" + p_id + "/edit_personnel_detail";
    }

    @PostMapping(path = "/{p_id}/save_education_add")
    public String saveAddPersonal(@RequestParam Map<String, String> allReqParams,
                                  @PathVariable long p_id) throws ParseException {
//        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String education_name = allReqParams.get("education_name");
        String major_name = allReqParams.get("major_name");
        String university_name = allReqParams.get("university_name");
        String country_name = allReqParams.get("country_name");
        String educationyear = allReqParams.get("educationyear");
        Personnel personnel = personnelService.getPersonnelById(p_id);
        Education_histiry education_histiry = new Education_histiry(education_name, major_name, university_name, educationyear, country_name, personnel);
        personnelService.SavePersonnelEducation(education_histiry);
        return "redirect:/personnel/" + p_id + "/edit_personnel_detail";
    }

    @GetMapping("/{p_id}/{id}/delete")
    public String removePersonnelEducation(@PathVariable("id") long id,
                                           @PathVariable String p_id) {
        personnelService.removePersonnelEducation(id);
        return "redirect:/personnel/" + p_id + "/edit_personnel_detail";
    }

    @PostMapping(path = "/{p_id}/save_research_add")
    public String saveAddPersonnel(@RequestParam Map<String, String> allReqParams, @PathVariable long p_id) throws ParseException {
        String research_name = allReqParams.get("research_name");
        String research_year = allReqParams.get("research_year");
        Personnel personnel = personnelService.getPersonnelById(p_id);
        Research_grant research_grant = new Research_grant(research_name, research_year, personnel);
        personnelService.SavePersonnelResearch(research_grant);
        return "redirect:/personnel/" + p_id + "/edit_personnel_detail";
    }

    @GetMapping("/{p_id}/{id}/remove")
    public String removePersonnelResearch(@PathVariable("id") long id,
                                          @PathVariable String p_id) {
        personnelService.removePersonnelResearch(id);
        return "redirect:/personnel/" + p_id + "/edit_personnel_detail";
    }

    @PostMapping(path = "/{p_id}/save_award_add")
    public String saveAddPersonnelses(@RequestParam Map<String, String> allReqParams, @PathVariable long p_id) throws ParseException {
        String award_name = allReqParams.get("award_name");
        String award_year = allReqParams.get("award_year");
        Personnel personnel = personnelService.getPersonnelById(p_id);
        Award award = new Award(award_name, award_year, personnel);
        personnelService.SavePersonnelAward(award);
        return "redirect:/personnel/" + p_id + "/edit_personnel_detail";
    }

    @GetMapping("/{p_id}/{id}/remove_award")
    public String removePersonnelAward(@PathVariable("id") long id,
                                       @PathVariable String p_id) {
        personnelService.removePersonnelAward(id);
        return "redirect:/personnel/" + p_id + "/edit_personnel_detail";
    }

    @PostMapping(path = "/{p_id}/save_Pro_add")
    public String saveAddPersonnelPro(@RequestParam Map<String, String> allReqParams, @PathVariable long p_id) throws ParseException {
        String pro_name = allReqParams.get("pro_name");
        String pro_year = allReqParams.get("pro_year");
        Personnel personnel = personnelService.getPersonnelById(p_id);
        Project_consulting project_consulting = new Project_consulting(pro_name, pro_year, personnel);
        personnelService.SaveProjectconsulting(project_consulting);
        return "redirect:/personnel/" + p_id + "/edit_personnel_detail";
    }

    @GetMapping("/{p_id}/{id}/remove_Pro")
    public String removePersonnelPro(@PathVariable("id") long id,
                                     @PathVariable String p_id) {
        personnelService.removeProjectconsulting(id);
        return "redirect:/personnel/" + p_id + "/edit_personnel_detail";
    }

    @PostMapping(path = "/{p_id}/save_work_add")
    public String saveAddPersonnelWork(@RequestParam Map<String, String> allReqParams, @PathVariable long p_id) throws ParseException {
        String work_name = allReqParams.get("work_name");
        Personnel personnel = personnelService.getPersonnelById(p_id);
        Work_experience work_experience = new Work_experience(work_name, personnel);
        personnelService.SavePersonnelWork(work_experience);
        return "redirect:/personnel/" + p_id + "/edit_personnel_detail";
    }

    @GetMapping("/{p_id}/{id}/remove_work")
    public String removePersonnelWork(@PathVariable("id") long id,
                                      @PathVariable String p_id) {
        personnelService.removePersonnelWork(id);
        return "redirect:/personnel/" + p_id + "/edit_personnel_detail";
    }


}
