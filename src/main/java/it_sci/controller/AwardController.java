package it_sci.controller;

import it_sci.service.PersonnelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.ParseException;
import java.util.Map;

@Controller
@RequestMapping("/personnel")
public class AwardController {

    @Autowired
    private PersonnelService personnelService;

}
