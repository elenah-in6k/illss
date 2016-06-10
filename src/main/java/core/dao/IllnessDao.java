package core.dao;

import core.entity.Illness;
import core.entity.OrganSystem;
import core.entity.Symptom;

import java.util.List;


public interface IllnessDao extends  BaseDao<Illness> {

    List<Illness> getBySystemId(OrganSystem system);
}
