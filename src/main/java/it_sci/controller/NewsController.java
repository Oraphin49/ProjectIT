package it_sci.controller;
import it_sci.model.News;
import it_sci.service.NewsService;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
        News news =  newsService.getNews(id);
//        model.addAttribute("title", title + " - รายการสินค้า");
//        model.addAttribute("shop", shop);
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

    @PostMapping(path = "/save")
    public String processForm(@RequestParam Map<String, String> allReqParams) throws ParseException {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String newsname = allReqParams.get("news_name");
        Date sysDate = new Date();
        String news_category = allReqParams.get("news_category");
        String news_detail = allReqParams.get("news_detail");
        String linkpage = allReqParams.get("linkpage");

        News news = new News(newsname,sysDate,news_detail,news_category,linkpage);
        newsService.SaveNews(news);
        return "redirect:/news/list_news_manage";
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
    public String saveEditNews(@RequestParam Map<String, String> allReqParams, @PathVariable long id) throws ParseException {
       News news =newsService.getNews(id);
        if (news != null) {
            news.setNewsname(allReqParams.get("news_name"));
            news.setCategory(allReqParams.get("news_category"));
            news.setNewsdetail(allReqParams.get("news_detail"));
            news.setLinkpage(allReqParams.get("linkpage"));

            newsService.EditNews(news);
        }
            return "redirect:/news/list_news_manage";
        }


    @GetMapping("/{id}/delete")
    public String isRemoveNews(@PathVariable("id") Long id) {
        newsService.removeNews(id);
        return "redirect:/news/list_news_manage";
    }
}
