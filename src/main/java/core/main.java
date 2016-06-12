package core;

import core.dao.IllnessDao;
import core.dao.IllnessDetailDao;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import services.IllnessDetailService;
import services.IllnessService;
import services.SymptomService;

import java.io.IOException;

public class main {

    public static void main(String[] args) throws IOException {
        ApplicationContext context = new ClassPathXmlApplicationContext("db-context.xml");
        IllnessDao illnessDao = (IllnessDao) context.getBean("illnessDao");
        IllnessDetailDao illnessDetailDao = (IllnessDetailDao) context.getBean("illnessDetailDao");
        IllnessDetailService illnessDetailService = (IllnessDetailService) context.getBean("illnessDetailService");
        IllnessService illnessService = (IllnessService) context.getBean("illnessServiceImpl");
        SymptomService symptomService = (SymptomService) context.getBean("symptomServiceImpl");

        symptomService.delete(1);






//        System.out.println("Working Directory = " +
//                System.getProperty("user.dir"));
//
        //FileUtils.writeIntoExcel("superExel.xls");
//        List<Illness> ill = illnessService.getByName("гіпер");
//        for (Illness illness1: ill) {
//            System.out.println(illness1.getId() + " " + illness1.getName() + " " +illness1.getDescription());
//        }

//        for (int i=0; i<=5; i++){
//        Illness illness = new Illness();
//        illness.setName("bla"+i);
//        illness.setDescription("blabla"+i);
//        illness.setSystem(1+i);
//
//        illnessDao.create(illness);
//        }

//        List<Illness> list = illnessDao.findByName("bla0");
//
//        for (Illness illness1: list) {
//            System.out.println(illness1.getId() + " " + illness1.getName() + " " +illness1.getDescription());
//        }

//        Illness illness1 = illnessDao.findById(1);
//        System.out.println(illness1.getId() + " " + illness1.getName() + " " +illness1.getDescription());
//
//        List<Symptom> symptoms = new ArrayList<Symptom>();
//        Symptom symptom = new Symptom();
//        symptom.setId(1);
//        symptom.setName("1");
//        symptoms.add(symptom);
//        Symptom symptom1 = new Symptom();
//        symptom1.setId(2);
//        symptom1.setName("1");
//        symptoms.add(symptom1);
//        Symptom symptom2 =  new Symptom();
//        symptom2.setId(4);
//        symptom2.setName("1");
//        symptoms.add(symptom2);
//
//
//        illnessDetailService.getIllnesses(symptoms);
//        List<Illness> list = illnessService.getBySystemId(2);
//
//        for (Illness illness1: list) {
//            System.out.println(illness1.getId() + " " + illness1.getName() + " " +illness1.getDescription());
//        }

//        List<Symptom> symptoms = new ArrayList<Symptom>();
//        symptoms.add(symptomService.getById(1));
//        symptoms.add(symptomService.getById(2));
//        symptoms.add(symptomService.getById(3));
//        symptoms.add(symptomService.getById(4));
//
//        List<IllnessMatches> illnesses = illnessDetailService.getIllnesses(symptoms);



    }


}
