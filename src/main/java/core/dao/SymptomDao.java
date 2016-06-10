package core.dao;

import core.entity.Symptom;

import java.util.List;


public interface SymptomDao extends  BaseDao<Symptom> {

    List<Symptom> getBySystemId(int id);
}
