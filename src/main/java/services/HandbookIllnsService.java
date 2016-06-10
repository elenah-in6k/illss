package services;

import core.dao.OrganSystemDao;
import core.entity.Illness;
import core.entity.OrganSystem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

public interface HandbookIllnsService {

    List<Illness> getIllns(List<OrganSystem> organSys);
}