package services;

import core.dao.SymptomDao;
import core.entity.Symptom;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

public interface SymptomService {

    List<Symptom> getAll();

    void create(Symptom symptom);

    void update(Symptom symptom);

    void delete(int id);

    Symptom getById(int id);

    List<Symptom> getBySystemId(int id);
}
