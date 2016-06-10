package controllers;

import core.dao.OrganSystemDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import services.DiagnosticOSService;

@Controller
public class DiagnosticOSController {
    @Autowired
    DiagnosticOSService diagnosticOSService;

    @Autowired
    OrganSystemDao organSystemDao;

    @RequestMapping("/diagnosticOS")
    public ModelAndView getAll(){

        ModelAndView mv = new ModelAndView("diagnosticOS");
        mv.addObject("list", diagnosticOSService.getAll());
        return mv;
    }

}
