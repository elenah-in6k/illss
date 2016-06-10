package core.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "illnessDetails")
public class IllnessDetail {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @OneToOne
    @JoinColumn(name = "illness")
    private Illness illness;

    @OneToOne
    @JoinColumn(name = "symptom")
    private Symptom symptom;

    public void setIllness(Illness illness) {
        this.illness = illness;
    }

    public void setSymptom(Symptom symptom) {
        this.symptom = symptom;
    }

    public Illness getIllness() {
        return illness;
    }

    public Symptom getSymptom() {
        return symptom;
    }

}