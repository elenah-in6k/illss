package services;

import core.dao.IllnessDao;
import core.dao.IllnessDetailDao;
import core.dao.SymptomDao;
import core.entity.Illness;
import core.entity.Symptom;
import core.entity.dto.IllnessMatches;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("illnessDetailService")
public class IllnessDetailServiceImpl implements IllnessDetailService {

    @Autowired
    IllnessDao illnessDao;

    @Autowired
    IllnessDetailDao illnessDetailDao;

    @Autowired
    SymptomDao symptomDao;

    public List<IllnessMatches> getIllnesses(List<Symptom> symptoms){
        List<Object[]> illnessDetails = illnessDetailDao.getIllnessesMatches(symptoms);
        List<IllnessMatches> illnessMatches = new ArrayList<IllnessMatches>();
        for(Object[] illnsdet : illnessDetails) {
            int idIllness = parseIntFromObj(illnsdet[0]);
            int numberMatches = parseIntFromObj(illnsdet[1]);
            Illness illness = illnessDao.findById(idIllness);
            illnessMatches.add(new IllnessMatches(illness,numberMatches));
        }
        return illnessMatches;
    }

    private int parseIntFromObj(Object obj) {
        return Integer.parseInt(String.valueOf(obj));
    }
}
