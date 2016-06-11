package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class AboutController {

    @RequestMapping(value = "/about")
    public ModelAndView getSymptomsBySystem() {
        return new ModelAndView("about");
    }

}