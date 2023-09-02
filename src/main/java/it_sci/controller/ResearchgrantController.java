package it_sci.controller;

import it_sci.service.PersonnelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/personnel")
public class ResearchgrantController {

    @Autowired
    private PersonnelService personnelService;
}
