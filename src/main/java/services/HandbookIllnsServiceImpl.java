package services;

import core.dao.IllnessDao;
import core.entity.Illness;
import core.entity.OrganSystem;
import core.dao.OrganSystemDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("handbookIllnsServiceImpl")
public class HandbookIllnsServiceImpl implements HandbookIllnsService {

    @Autowired
    private IllnessDao illnessDao;

    public List<Illness> getIllns(List<OrganSystem> organSys) {
        List<Illness> illnesses = null;
        return illnesses;
    }

}