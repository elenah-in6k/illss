package controllers;

import core.entity.Illness;
import core.entity.Symptom;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import services.IllnessService;
import services.SymptomService;

import java.util.List;

@Controller
public class AdminController {
    @Autowired
    SymptomService symptomService;

    @Autowired
    IllnessService illnessService;

//    @RequestMapping(value = "/admin-page")
//    public ModelAndView getAdminPage() {
//        return new ModelAndView("admin");
//    }

    @RequestMapping(value = "/admin-page")
    public ModelAndView getAllSymptoms() {
        return getSymptomsPage();
    }

    @RequestMapping(value = "/admin-page/illness")
    public ModelAndView getAllIllness() {
        ModelAndView mv = new ModelAndView("admin");
        List<Illness> illnesses = illnessService.getAll();
        mv.addObject("illnesses", illnesses);
        return mv;
    }

    @RequestMapping(value = "/admin-page/symptom", method = RequestMethod.POST)
    public ModelAndView editSymptom(@RequestParam int id, @RequestParam String name) {
        Symptom symptom = new Symptom();
        symptom.setId(id);
        symptom.setName(name);
        symptomService.update(symptom);
        return getSymptomsPage();
    }
    @RequestMapping(value = "/admin-page/symptom/create", method = RequestMethod.POST)
    public ModelAndView createSymptom(@RequestParam String name) {
        Symptom symptom = new Symptom();
        symptom.setName(name);
        symptomService.create(symptom);
        return getSymptomsPage();
    }

    private ModelAndView getSymptomsPage() {
        ModelAndView mv = new ModelAndView("admin");
        List<Symptom> symptomsList = symptomService.getAll();
        mv.addObject("symptomsList", symptomsList);
        return mv;
    }

//видалення не можливе без видалення цих симптомів у хворобох,
// а видаллення симптомів у хвороб не доцільне
//    @RequestMapping(value = "/admin-page/illness/{id:[0-9]+}", method = RequestMethod.POST)
//    public void deleteSymptom(@PathVariable("id") int id) {
//        symptomService.delete(id);
//    }

}