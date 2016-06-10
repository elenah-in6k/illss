package core.entity.dto;

import core.entity.Illness;

/**
 * Created by gaial on 07.06.2016.
 */
public class IllnessMatches {
    private Illness illness;
    private int numberMatches;

    public IllnessMatches(Illness illness, int numberMatches) {
        this.illness = illness;
        this.numberMatches = numberMatches;
    }

    public Illness getIllness() {
        return illness;
    }

    public void setIllness(Illness illness) {
        this.illness = illness;
    }

    public int getNumberMatches() {
        return numberMatches;
    }

    public void setNumberMatches(int numberMatches) {
        this.numberMatches = numberMatches;
    }
}
