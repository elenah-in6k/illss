package controllers;

import core.dao.SymptomDao;
import core.entity.Symptom;
import core.entity.dto.IllnessMatches;
import core.entity.dto.SearchedSymptoms;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import services.FileUtils;
import services.IllnessDetailService;
import services.SymptomService;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller

public class SymptomController {
    @Autowired
    SymptomService symptomService;

    @Autowired
    SymptomDao symptomDao;

    @Autowired
    IllnessDetailService illnessDetailService;

    @RequestMapping("/symptoms")
    public ModelAndView getAll() {
        ModelAndView mv = new ModelAndView("symptoms");
        List<Symptom> symptomsList = symptomService.getAll();
        mv.addObject("symptomsList", symptomsList);
        mv.addObject("result", new SearchedSymptoms());
        return mv;
    }

    @RequestMapping(value = "/symptoms-result", method = RequestMethod.POST)
    public ModelAndView getIllnesses(SearchedSymptoms result) throws IOException {

        List<Symptom> symptomsList = new ArrayList<Symptom>();
        for (Symptom symptom : result.getSymptomsList()) {
            if(symptom.getEnabled())  symptomsList.add(symptom);
        }
        if (symptomsList.isEmpty()){
            ModelAndView mv = new ModelAndView("symptoms");
            mv.addObject("symptomsList", result.getSymptomsList());
            mv.addObject("result", new SearchedSymptoms());
            mv.addObject("warning", "Оберіть симптоми");
            mv.addObject("showWarning", "visible");
            return mv;
        }
        ModelAndView mv = new ModelAndView("resultIlls");
        List<IllnessMatches> illnesses = illnessDetailService.getIllnesses(symptomsList);
        mv.addObject("result", illnesses);
        mv.addObject("symptomsList", symptomsList);
        FileUtils.writeIntoExcel(illnesses);
        return mv;
    }

    @RequestMapping(value = "/result/download", method = RequestMethod.GET)
    public void downloadResult(HttpServletResponse response) throws IOException {
        FileUtils.downloadFile(response);
    }



    @RequestMapping(value = "/symptoms/{id:[0-9]+}")
    public ModelAndView getSymptomsBySystem(@PathVariable("id") int id) {
        ModelAndView mv = new ModelAndView("symptoms");
        List<Symptom> symptomsList = symptomService.getBySystemId(id);
        mv.addObject("symptomsList", symptomsList);
        mv.addObject("result", new SearchedSymptoms());
        return mv;
    }

}