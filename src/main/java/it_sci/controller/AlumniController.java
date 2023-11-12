package it_sci.controller;

import it_sci.model.Alumni;
import it_sci.service.AlumniService;
import it_sci.util.PathImg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;
import javax.validation.Valid;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.ParseException;
import java.util.*;

@Controller
@RequestMapping("/alumni")
public class AlumniController {
    @Autowired
    private AlumniService alumniService;

    @GetMapping("/list_alumni")
    public String listAlumni(Model model) {
        Map<String, List<Alumni>> generations = new HashMap<>();
        List<Alumni> alumniList = alumniService.getAlumnis();
        for (Alumni alumni : alumniList) {
            String generation = alumni.getGeneration();
            if (!generations.containsKey(generation)) {
                generations.put(generation, new ArrayList<>());
            }
            generations.get(generation).add(alumni);
        }
        List<Map.Entry<String, List<Alumni>>> sortedGenerations = new ArrayList<>(generations.entrySet());
        Collections.sort(sortedGenerations, (o1, o2) -> o1.getKey().compareTo(o2.getKey()));
        model.addAttribute("generations", sortedGenerations);
        model.addAttribute("list_alumni", alumniList);
        return "JSP/Alumni/list_alumni";
    }


    @GetMapping("/{id}/view_alumni_detail")
    public String ShowAlumniDetail(@PathVariable("id") String id, Model model) {
        Alumni alumni = alumniService.getAlumni(id);
        model.addAttribute("alumni_detail", alumni);
        return "JSP/Alumni/View_alumni_detail";
    }

    @GetMapping("/list_alumni_manage")
    public String listAlumnis(Model model) {
//        model.addAttribute("title", "ลงชื่อเข้าสู่ระบบ");
        model.addAttribute("list_manage_alumni", alumniService.getAlumnis());
        return "JSP/Alumni/list_manage_alumni";
    }

    @GetMapping("/do_addAlumni")
    public String do_addAlumni(Model model) {
        model.addAttribute("alumni", new Alumni());
        return "JSP/Alumni/add_alumni";
    }

    @PostMapping(path = "/save")
    public String saveAlumniForm(
            @RequestParam Map<String, String> allReqParams,
            @RequestParam(name = "otherPosition", required = false) String otherPosition,
            HttpServletRequest request,
            @RequestParam(name = "imageFile") MultipartFile imageFile
    ) throws ParseException, IOException {
        String id = allReqParams.get("alumni_id");
        String firstname = allReqParams.get("firstname");
        String lastname = allReqParams.get("lastname");
        String graduationyear = allReqParams.get("year");
        String generation = allReqParams.get("generation");
        String position = allReqParams.get("position");
        String company = allReqParams.get("company");
        String phone = allReqParams.get("phone");
        String email = allReqParams.get("email");
        String expertise = allReqParams.get("expertise");
        String award = allReqParams.get("award");
        String prefix = allReqParams.get("prefix");


        String imageFileName = null;

        if (!imageFile.isEmpty()) {
            // อัพโหลดไฟล์รูปภาพ
            // กำหนดชื่อไฟล์ใหม่
            String originalFilename = imageFile.getOriginalFilename();
            String fileExtension = originalFilename.substring(originalFilename.lastIndexOf('.'));
            String newFileName = UUID.randomUUID().toString() + fileExtension;

            // บันทึกไฟล์รูปภาพลงในโฟลเดอร์หรือเก็บในฐานข้อมูลแบบ String
            // เราใช้ตัวอย่างนี้เพื่อบันทึกลงในโฟลเดอร์ (เป็นตัวอย่างเท่านั้น)
            String uploadDirectory = request.getSession().getServletContext().getRealPath("/") + "//assets//image//alumni//";
            Path filePath = Paths.get(uploadDirectory, newFileName);
            Files.write(filePath, imageFile.getBytes());

            imageFileName = newFileName;
        }


        // ตรวจสอบค่า position ว่าเป็น "อื่นๆ" หรือไม่
        if ("อื่นๆ".equals(position)) {
            // ใช้ค่า otherPosition ที่รับมา
            position = otherPosition;
        }

        Alumni alumni = new Alumni(id, firstname, lastname, graduationyear, generation, position, company, phone, email, imageFileName, expertise, award, prefix);
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
        model.addAttribute("alumni", alumni);
        return "JSP/Alumni/edit_alumni";
    }

    @PostMapping(path = "/{id}/edit/save")
    public String saveEditAlumni(@RequestParam Map<String, String> allReqParams,
                                 @PathVariable String id,
                                 HttpServletRequest request,
                                 @RequestParam("newImageFile") MultipartFile newImageFile)
            throws ParseException, IOException {
        Alumni alumni = alumniService.getAlumni(id);

        if (alumni != null) {
            alumni.setId(allReqParams.get("alumni_id"));
            alumni.setFirstname(allReqParams.get("firstname"));
            alumni.setLastname(allReqParams.get("lastname"));
            alumni.setGraduationyear(allReqParams.get("year"));
            alumni.setGeneration(allReqParams.get("generation"));
            String position = allReqParams.get("position");
            alumni.setPosition(position);
            alumni.setCompany(allReqParams.get("company"));
            alumni.setPhone(allReqParams.get("phone"));
            alumni.setEmail(allReqParams.get("email"));
            alumni.setExpertise(allReqParams.get("expertise"));
            alumni.setAward(allReqParams.get("award"));
            alumni.setPrefix(allReqParams.get("prefix"));

            // Check if position is "อื่นๆ"
            if ("อื่นๆ".equals(position)) {
                String otherPosition = allReqParams.get("otherPosition");
                alumni.setPosition(otherPosition);
            }

            // Handle new image upload
            if (!newImageFile.isEmpty()) {
                String originalFilename = newImageFile.getOriginalFilename();
                String fileExtension = originalFilename.substring(originalFilename.lastIndexOf('.'));
                String newFileName = UUID.randomUUID().toString() + fileExtension;

                String uploadDirectory = request.getSession().getServletContext().getRealPath("/") + "//assets//image//alumni//";

                Path filePath = Paths.get(uploadDirectory, newFileName);

                try {
                    Files.write(filePath, newImageFile.getBytes());

                    // Delete old image file
                    String oldImageFileName = alumni.getImage();
                    Path oldImageFilePath = Paths.get(uploadDirectory, oldImageFileName);
                    Files.delete(oldImageFilePath);

                    // Update alumni with the new image file name
                    alumni.setImage(newFileName);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            alumniService.EditAlumni(alumni);
        }

        return "redirect:/alumni/list_alumni_manage";
    }


    @Transactional
    @GetMapping("/{id}/delete")
    public String isRemoveAlumni(HttpServletRequest request,@PathVariable("id") String id) throws IOException {
        Alumni alumni = alumniService.getAlumni(id);

        if (alumni != null) {
            // ลบไฟล์รูปภาพ (ถ้ามี)
            String imageFileName = alumni.getImage();
            if (imageFileName != null) {
                String uploadDirectory = request.getSession().getServletContext().getRealPath("/") + "//assets//image//alumni//";
                Path imageFilePath = Paths.get(uploadDirectory, imageFileName);
                Files.delete(imageFilePath);
            }

            // ลบข้อมูล Alumni ในฐานข้อมูล
            alumniService.removeAlumni(id);
        }

        return "redirect:/alumni/list_alumni_manage";
    }

}
