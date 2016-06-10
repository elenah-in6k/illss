package core.dao;

import core.entity.Symptom;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("symptomDao")
public class SymptomDaoImpl extends BaseDaoImpl<Symptom> implements SymptomDao{

    public List<Symptom> getBySystemId(int id) {
        String sql = "select s.*\n" +
                "from symptoms s\n" +
                "JOIN illnessdetails ild\n" +
                "on s.id = ild.symptom\n" +
                "JOIN illnesses ill\n" +
                "ON ild.illness = ill.id\n" +
                "  where ill.system =" + id + "\n" +
                "GROUP BY s.name;";
        return createSqlQuery(sql).addEntity(Symptom.class).list();
    }
}
