package controllers;

import core.dao.OrganSystemDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import services.HandbookOSService;

@Controller
public class HandbookOSController {
    @Autowired
    HandbookOSService handbookOSService;

    @Autowired
    OrganSystemDao organSystemDao;

    @RequestMapping("/handbookOS")
    public ModelAndView getAll(){

        ModelAndView mv = new ModelAndView("handbookOS");
        mv.addObject("list", handbookOSService.getAll());
        return mv;
    }

}
