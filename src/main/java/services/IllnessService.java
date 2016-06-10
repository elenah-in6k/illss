package services;

import core.dao.IllnessDao;
import core.entity.Illness;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

public interface IllnessService {

    List<Illness> getAll();

    void create(Illness illness);

    void update(Illness illness);

    Illness getById(int id);

    List<Illness> getBySystemId(int id);

    List<Illness> getByName(String name);

}
