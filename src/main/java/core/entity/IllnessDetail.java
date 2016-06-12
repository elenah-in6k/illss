package core.entity;

import org.hibernate.annotations.Cascade;

import javax.persistence.*;
import java.util.List;

import static org.hibernate.annotations.CascadeType.*;

@Entity
@Table(name = "illnessdetails")
public class IllnessDetail {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @OneToOne
    @JoinColumn(name = "illness")
    private Illness illness;

    @OneToOne(cascade=CascadeType.ALL )
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