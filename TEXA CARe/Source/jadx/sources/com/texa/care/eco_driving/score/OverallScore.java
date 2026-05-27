package com.texa.care.eco_driving.score;

import com.google.gson.annotations.Expose;
import com.texa.care.eco_driving.ScoreListener;
import com.texa.care.eco_driving.events.scoreevents.OverallScoreUpdateEvent;
import com.texa.care.eco_driving.events.scoreevents.ScoreUpdateEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class OverallScore extends BaseScore implements ScoreListener {

    @Expose
    private List<Component> components;
    private boolean shouldUpdateScore;

    @Override // com.texa.care.eco_driving.score.BaseScore
    public void setScore(int i) {
    }

    OverallScore(String str, int i) {
        super(str, i);
        this.components = new ArrayList();
        this.shouldUpdateScore = true;
        this.shouldUpdateScore = true;
    }

    public OverallScore() {
        this("overall score", 100);
    }

    @Override // com.texa.care.eco_driving.score.BaseScore, com.texa.care.eco_driving.score.IScore
    public int getScore() {
        int iWeightSum = weightSum();
        if (iWeightSum <= 0) {
            return -1;
        }
        double normScore = 0.0d;
        for (Component component : this.components) {
            BaseScore baseScore = component.getBaseScore();
            int weight = component.getWeight();
            int i = 0;
            if (baseScore.isValid()) {
                if (weight <= 0) {
                    weight = 1;
                }
                i = weight;
            }
            normScore += ((double) this.MAX_SCORE) * baseScore.getNormScore() * (((double) i) / ((double) iWeightSum));
        }
        return (int) Math.round(normScore);
    }

    @Override // com.texa.care.eco_driving.score.IScore
    public ScoreType getType() {
        return ScoreType.OVERALL;
    }

    @Override // com.texa.care.eco_driving.score.BaseScore
    public ScoreUpdateEvent createScoreUpdateEvent() {
        return new OverallScoreUpdateEvent(this);
    }

    @Override // com.texa.care.eco_driving.score.BaseScore
    public void setInterval(long j) {
        Iterator<Component> it = this.components.iterator();
        while (it.hasNext()) {
            it.next().getBaseScore().setInterval(j);
        }
        super.setInterval(j);
    }

    @Override // com.texa.care.eco_driving.score.BaseScore
    public void setDistance(Float f) {
        Iterator<Component> it = this.components.iterator();
        while (it.hasNext()) {
            it.next().getBaseScore().setDistance(f);
        }
        super.setDistance(f);
    }

    private int weightSum() {
        Iterator<Component> it = this.components.iterator();
        int weight = 0;
        int weight2 = 0;
        while (it.hasNext()) {
            weight2 += it.next().getWeight();
        }
        for (Component component : this.components) {
            if (component.getBaseScore().isValid()) {
                weight += weight2 == 0 ? 1 : component.getWeight();
            }
        }
        return weight;
    }

    @Override // com.texa.care.eco_driving.score.BaseScore
    public void reset() {
        this.scoreUpdates.clear();
        this.shouldUpdateScore = false;
        Iterator<Component> it = this.components.iterator();
        while (it.hasNext()) {
            it.next().getBaseScore().reset();
        }
        this.shouldUpdateScore = true;
        super.reset();
    }

    public OverallScore addComponent(BaseScore baseScore, int i) {
        this.components.add(new Component(baseScore, i));
        baseScore.listeners.add(this);
        return this;
    }

    OverallScore addComponent(BaseScore baseScore) {
        return addComponent(baseScore, 0);
    }

    @Override // com.texa.care.eco_driving.ScoreListener
    public void update(BaseScore baseScore, int i, int i2, int i3) {
        if (this.shouldUpdateScore) {
            manageScoreUpdate();
        }
    }

    public class Component {
        private final BaseScore baseScore;
        private final int weight;

        protected boolean canEqual(Object obj) {
            return obj instanceof Component;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Component)) {
                return false;
            }
            Component component = (Component) obj;
            if (!component.canEqual(this)) {
                return false;
            }
            BaseScore baseScore = getBaseScore();
            BaseScore baseScore2 = component.getBaseScore();
            if (baseScore != null ? baseScore.equals(baseScore2) : baseScore2 == null) {
                return getWeight() == component.getWeight();
            }
            return false;
        }

        public int hashCode() {
            BaseScore baseScore = getBaseScore();
            return (((baseScore == null ? 43 : baseScore.hashCode()) + 59) * 59) + getWeight();
        }

        public String toString() {
            return "OverallScore.Component(baseScore=" + getBaseScore() + ", weight=" + getWeight() + ")";
        }

        public BaseScore getBaseScore() {
            return this.baseScore;
        }

        public int getWeight() {
            return this.weight;
        }

        Component(BaseScore baseScore, int i) {
            this.baseScore = baseScore;
            this.weight = i;
        }
    }
}
