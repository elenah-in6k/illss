package controllers;

import core.dao.IllnessDao;
import core.entity.Illness;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import services.IllnessService;

import java.util.List;

@Controller
public class IllnessController {
    @Autowired
    IllnessService illnessService;

    @Autowired
    IllnessDao illnessDao;

    @RequestMapping("/illnesses")
    public ModelAndView getAll(){
        ModelAndView mv = new ModelAndView("handbookIllns");
        mv.addObject("list", illnessService.getAll());

        return mv;
    }

    @RequestMapping("/illnesses/system/{id:[0-9]+}")
    public ModelAndView getBySystemId(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("handbookIllns");
        mv.addObject("list", illnessService.getBySystemId(id));
        mv.addObject("pageName", "ДОВІДНИК. ХВОРОБИ");


        return mv;
    }
    @RequestMapping("/illnesses/{id:[0-9]+}")
    public ModelAndView getById(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("illness");
        mv.addObject("illness", illnessService.getById(id));

        return mv;
    }
    @RequestMapping("/illnesses/search")
    public ModelAndView getByName(@RequestParam String name){
        ModelAndView mv = new ModelAndView("handbookIllns");
        List<Illness> serchedIlls = illnessService.getByName(name);
        mv.addObject("list", serchedIlls);
        mv.addObject("pageName", "Результат пошуку: ");

        return mv;
    }
}
