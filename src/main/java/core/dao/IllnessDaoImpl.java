package core.dao;

import core.entity.Illness;
import core.entity.OrganSystem;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("illnessDao")
public class IllnessDaoImpl extends BaseDaoImpl<Illness> implements IllnessDao{
    public List<Illness> getBySystemId(OrganSystem system) {
        return  getCriteria().add(Restrictions.eq("system", system)).list();
    }

}
