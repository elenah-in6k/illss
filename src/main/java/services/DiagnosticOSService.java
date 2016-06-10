package services;

import core.dao.OrganSystemDao;
import core.entity.OrganSystem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

public interface DiagnosticOSService {

    List<OrganSystem> getAll();

    void create(OrganSystem organSystem);

    void update(OrganSystem organSystem);

    OrganSystem getById(int id);
}