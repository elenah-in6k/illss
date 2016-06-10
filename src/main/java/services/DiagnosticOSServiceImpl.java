package services;

import core.dao.OrganSystemDao;
import core.entity.OrganSystem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("diagnosticOSServiceImpl")
public class DiagnosticOSServiceImpl implements DiagnosticOSService {

    @Autowired
    private OrganSystemDao organSystemDao;

    public List<OrganSystem> getAll() {
        return organSystemDao.list();
    }

    public void create(OrganSystem organSystem) {
        organSystemDao.create(organSystem);
    }

    public void update(OrganSystem organSystem) {
        organSystemDao.update(organSystem);
    }

    public OrganSystem getById(int id) {
        return organSystemDao.findById(id);
    }

}