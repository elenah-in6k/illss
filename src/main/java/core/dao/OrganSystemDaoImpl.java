package core.dao;

import core.entity.OrganSystem;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import java.sql.Date;
import java.util.List;

@Repository("organSystemDao")
public class OrganSystemDaoImpl extends BaseDaoImpl<OrganSystem> implements OrganSystemDao{

}
