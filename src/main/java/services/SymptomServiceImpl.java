package services;

import core.dao.SymptomDao;
import core.entity.Symptom;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("symptomServiceImpl")
public class SymptomServiceImpl implements SymptomService {

    @Autowired
    private SymptomDao symptomDao;

    public List<Symptom> getAll() {
        return symptomDao.list();
    }

    public void create(Symptom symptom) {
        symptomDao.create(symptom);
    }

    public void update(Symptom symptom) {
        symptomDao.update(symptom);
    }

    public Symptom getById(int id) {
        return symptomDao.findById(id);
    }

    public List<Symptom> getBySystemId(int id) {
        return symptomDao.getBySystemId(id);
    }

}
