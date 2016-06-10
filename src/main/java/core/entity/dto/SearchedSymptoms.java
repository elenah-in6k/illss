package core.entity.dto;

import core.entity.Symptom;

import java.util.List;

/**
 * Created by gaial on 07.06.2016.
 */
public class SearchedSymptoms {
    private List<Symptom> symptomsList;

    public List<Symptom> getSymptomsList() {
        return symptomsList;
    }

    public void setSymptomsList(List<Symptom> symptomsList) {
        this.symptomsList = symptomsList;
    }
}
