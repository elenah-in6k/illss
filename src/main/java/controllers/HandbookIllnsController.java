package controllers;

import core.dao.IllnessDao;
import core.entity.OrganSystem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import services.HandbookIllnsService;

import java.util.List;

@Controller
public class HandbookIllnsController {
    @Autowired
    HandbookIllnsService handbookIllnsService;

    @Autowired
    IllnessDao illnessDao;

    @RequestMapping("/handbookIllns")
    public ModelAndView getIllns(List<OrganSystem> lst){

        ModelAndView mv = new ModelAndView("handbookIllns");
        mv.addObject("list", handbookIllnsService.getIllns(lst));
        return mv;
    }

}
