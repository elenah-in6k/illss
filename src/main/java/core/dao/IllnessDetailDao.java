package core.dao;

import core.entity.Illness;
import core.entity.IllnessDetail;
import core.entity.Symptom;

import java.util.List;


public interface IllnessDetailDao extends  BaseDao<IllnessDetail> {

    List<Object[]> getIllnessesMatches(List<Symptom> symptomList);

}
