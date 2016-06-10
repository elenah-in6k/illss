package services;

import core.entity.Symptom;
import core.entity.dto.IllnessMatches;

import java.util.List;

public interface IllnessDetailService {
    List<IllnessMatches> getIllnesses(List<Symptom> symptoms);
}
