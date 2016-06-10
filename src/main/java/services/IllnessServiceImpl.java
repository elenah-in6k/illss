package services;

import core.dao.IllnessDao;
import core.dao.OrganSystemDao;
import core.entity.Illness;
import core.entity.OrganSystem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("illnessServiceImpl")
public class IllnessServiceImpl implements IllnessService {

    @Autowired
    private IllnessDao illnessDao;

    @Autowired
    private OrganSystemDao organSystemDao;

    public List<Illness> getAll() {
        return illnessDao.list();
    }

    public void create(Illness illness) {
        illnessDao.create(illness);
    }

    public void update(Illness illness) {
        illnessDao.update(illness);
    }

    public Illness getById(int id) {
        return illnessDao.findById(id);
    }

    public List<Illness> getBySystemId(int id) {
        OrganSystem system = organSystemDao.findById(id);
        return illnessDao.getBySystemId(system);
    }

    public List<Illness> getByName(String name) {
        return illnessDao.findByName(name);
    }

}
