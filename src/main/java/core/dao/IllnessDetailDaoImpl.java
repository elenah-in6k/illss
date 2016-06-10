package core.dao;

import core.entity.Illness;
import core.entity.IllnessDetail;
import core.entity.Symptom;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("illnessDetailDao")
public class IllnessDetailDaoImpl extends BaseDaoImpl<IllnessDetail> implements IllnessDetailDao{

    public List<Object[]> getIllnessesMatches(List<Symptom> symptomList) {
         String ids = symptomListToIdString(symptomList);

        String sql = "SELECT id.illness, count(id.illness)\n" +
                "from (select *\n" +
                "from symptoms\n" +
                "where id in(" + ids + ")) s\n" +
                "join illnessdetails id\n" +
                "on s.id = id.symptom\n" +
                "GROUP BY id.illness\n" +
                "Order by count(id.illness) DESC;";
        return createSqlQuery(sql).list();
    }

    private String symptomListToIdString(List<Symptom> symptomList) {
        String result = "";
        for (Symptom symptom : symptomList) {
            result += symptom.getId()+ ",";
        }
        result = result.substring(0,result.length()-1);
        return result;
    }
}
