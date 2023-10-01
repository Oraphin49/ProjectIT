package it_sci.controller;
import it_sci.model.News;
import it_sci.service.NewsService;
import it_sci.util.PathImg;
import org.apache.commons.io.FileUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.transaction.Transactional;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/news")
public class NewsController {
    @Autowired
    private NewsService newsService;

    @Autowired
    private SessionFactory sessionFactory;

    @GetMapping("/list_news")
    public String listNews(Model model) {
//        model.addAttribute("title", "ลงชื่อเข้าสู่ระบบ");
        model.addAttribute("list_news",newsService.getNews());
        return "JSP/News/list_news";
    }
    @GetMapping("/news")
    public String shoeNews(Model model) {
//        model.addAttribute("title", "ลงชื่อเข้าสู่ระบบ");
        //model.addAttribute("list_alumni",alumniService.getAlumni());
        return "JSP/News";
    }

    @GetMapping("/{id}/view_news_detail")
    public String ShowNewsDetail(@PathVariable("id") Long id, Model model) {
        //        model.addAttribute("title", "ลงชื่อเข้าสู่ระบบ");
        News news =  newsService.getNews(id);
        model.addAttribute("news_detail", news);
        return "JSP/News/View_News_Detail";
    }

    @GetMapping("/list_news_manage")
    public String listNew(Model model) {
//        model.addAttribute("title", "ลงชื่อเข้าสู่ระบบ");
        model.addAttribute("list_manage_news",newsService.getNews());
        return "JSP/News/list_manage_news";
    }

    @GetMapping("/create_news")
    public String do_addNews(Model model){
        model.addAttribute("news", new News());
        return "JSP/News/add_news";
    }

    @Transactional
    @PostMapping("/save")
    public String processForm(@RequestParam Map<String, String> allReqParams, @RequestParam("imageFiles") MultipartFile[] imageFiles) throws IOException {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String newsname = allReqParams.get("news_name");
        Date sysDate = new Date();
        String news_category = allReqParams.get("news_category");
        String news_detail = allReqParams.get("news_detail");
        String linkpage = allReqParams.get("linkpage");
        long latestId = newsService.max_id(); // Get the latest id from the database

        int count = 1;
        List<String> newFileNames = new ArrayList<>(); // To store the new file names

        for (MultipartFile imageFile : imageFiles) {
            if (!imageFile.isEmpty()) {
                String uploadDirectory = PathImg.path_Img + "/news/" + (latestId + 1);

                Path directoryPath = Paths.get(uploadDirectory);
                Files.createDirectories(directoryPath);

                String fileName = imageFile.getOriginalFilename();
                String fileExtension = getFileExtension(fileName);

                String formattedId = String.format("%02d", latestId + 1);
                String formattedSequence = String.format("%04d", count);
                String newFileName = String.format("IMG_%s_%s%s", formattedId, formattedSequence, fileExtension);
                Path filePath = Paths.get(uploadDirectory, newFileName);

                // Write the image file to the specified path
                Files.write(filePath, imageFile.getBytes());

                // Store the new file name in the list
                newFileNames.add(newFileName);

                count++;
            }
        }

        // Create a News instance and add the file names to the image list
        News news = new News(newsname, sysDate, news_detail, news_category, linkpage);
        news.getNewsImage().addAll(newFileNames);
        news.setId(latestId + 1);
        Session session = sessionFactory.getCurrentSession();
        News mergedNews = (News) session.merge(news);

        // Save the news data to the database
        // newsService.SaveNews(news);
        return "redirect:/news/list_news_manage";
    }

    private String getFileExtension(String fileName) {
        int dotIndex = fileName.lastIndexOf('.');
        if (dotIndex > 0 && dotIndex < fileName.length() - 1) {
            return fileName.substring(dotIndex);
        }
        return "";
    }

    @InitBinder
    public void initBinder(WebDataBinder dataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

    @GetMapping("/{id}/update")
    public String isEditNews( @Valid @PathVariable("id") Long id, Model model) {
        News news = newsService.getNews(id);
//        model.addAttribute("title", "แก้ไข" + title);
//        model.addAttribute("categories", categoryService.getCategories());
        model.addAttribute("news", news);
        return "JSP/News/edit_news";
    }

    @PostMapping(path = "/{id}/edit/save")
    public String processForm(@PathVariable Long id, @RequestParam Map<String, String> allReqParams,
                              @RequestParam("imageFile") MultipartFile[] imageFiles) throws IOException {
        News news = newsService.getNews(id);
        if (news != null) {
            news.setNewsname(allReqParams.get("news_name"));
            news.setCategory(allReqParams.get("news_category"));
            news.setNewsdetail(allReqParams.get("news_detail"));
            news.setLinkpage(allReqParams.get("linkpage"));

            // บันทึกการแก้ไขข้อมูลข่าว
            newsService.EditNews(news);

            // ลบไฟล์รูปเก่า
            String oldUploadDirectory = PathImg.path_Img + "/news/" + id;
            FileUtils.deleteDirectory(new File(oldUploadDirectory));

            // กำหนดเส้นทางของไดเรกทอรีใหม่
            String uploadDirectory = PathImg.path_Img + "/news/" + id;

            int count = 1;
            List<String> newFileNames = new ArrayList<>(); // To store the new file names

            for (MultipartFile imageFile : imageFiles) {
                if (!imageFile.isEmpty()) {
                    Path directoryPath = Paths.get(uploadDirectory);
                    Files.createDirectories(directoryPath);

                    String fileName = imageFile.getOriginalFilename();
                    String fileExtension = getFileExtension(fileName);

                    String formattedSequence = String.format("%04d", count);
                    String newFileName = String.format("IMG_%s_%s%s", id, formattedSequence, fileExtension);
                    Path filePath = Paths.get(uploadDirectory, newFileName);

                    // Write the image file to the specified path
                    Files.write(filePath, imageFile.getBytes());

                    // Store the new file name in the list
                    newFileNames.add(newFileName);

                    count++;
                }
            }

            // อัปเดตรายชื่อไฟล์รูปภาพใหม่
            news.setNewsImage(newFileNames);
            // บันทึกการเปลี่ยนแปลงของไฟล์รูปภาพ
            newsService.EditNews(news);
        }

        return "redirect:/news/list_news_manage";
    }

    @Transactional
    @GetMapping("/{id}/delete")
    public String deleteNews(@PathVariable Long id) {
        // ดึงข้อมูลข่าวที่ต้องการลบจากฐานข้อมูล
        News news = newsService.getNews(id);

        if (news != null) {
            newsService.removeNews(id);

            // ลบไดเรกทอรีรูปภาพที่เกี่ยวข้อง
            String uploadDirectory = PathImg.path_Img + "/news/" + id;
            File directory = new File(uploadDirectory);
            if (directory.exists()) {
                try {
                    FileUtils.deleteDirectory(directory);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        return "redirect:/news/list_news_manage";
    }

}
