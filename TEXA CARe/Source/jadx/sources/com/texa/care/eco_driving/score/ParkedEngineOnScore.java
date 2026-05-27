package com.texa.care.eco_driving.score;

import com.texa.care.eco_driving.Utils;
import com.texa.care.eco_driving.events.drivingevents.ParkedEngineOnEvent;
import com.texa.care.eco_driving.events.scoreevents.ParkedEngineOnUpdateScoreEvent;
import com.texa.care.eco_driving.events.scoreevents.ScoreUpdateEvent;
import com.texa.care.eco_driving.score.BaseScore;
import com.texa.carelib.core.CounterInfo;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ParkedEngineOnScore extends BaseScore {
    private static final double BASE_COUNT_MIN = 10.0d;
    private static final double ENGINE_TEMP_MIN = 50.0d;
    private static final double EVENT_DURATION_MIN_S = 90.0d;
    private static final double RPM_TARGET_MIN = 200.0d;
    private static final double SPEED_TARGET_MAX = 2.0d;
    private BaseScore.ScoreRelevantPeriod curPeriod;
    private TargetValues currentValues;
    private List<CounterInfo> engineHotCounters;
    private boolean hasNotifiedCurPeriod;
    private List<BaseScore.ScoreRelevantPeriod> scoreRelevantPeriods;

    ParkedEngineOnScore(String str, int i) {
        super(str, i);
        this.currentValues = new TargetValues();
        this.scoreRelevantPeriods = new ArrayList();
        this.curPeriod = new BaseScore.ScoreRelevantPeriod();
        this.hasNotifiedCurPeriod = false;
    }

    public ParkedEngineOnScore() {
        super("Parked vehicle with engine on score", 100);
        this.currentValues = new TargetValues();
        this.scoreRelevantPeriods = new ArrayList();
        this.curPeriod = new BaseScore.ScoreRelevantPeriod();
        this.hasNotifiedCurPeriod = false;
    }

    ParkedEngineOnScore(int i) {
        super("Parked vehicle with engine on score", i);
        this.currentValues = new TargetValues();
        this.scoreRelevantPeriods = new ArrayList();
        this.curPeriod = new BaseScore.ScoreRelevantPeriod();
        this.hasNotifiedCurPeriod = false;
    }

    @Override // com.texa.care.eco_driving.score.BaseScore
    public void reset() {
        super.reset();
        this.curPeriod.setDates(null, null);
        this.hasNotifiedCurPeriod = false;
        this.currentValues = new TargetValues();
        this.scoreRelevantPeriods.clear();
        this.engineHotCounters = null;
    }

    public void update(List<CounterInfo> list) {
        this.engineHotCounters = list;
        processData();
    }

    public void updateRpm(double d) {
        this.currentValues.rpm = Double.valueOf(d);
        processData();
    }

    public void updateSpeed(double d) {
        this.currentValues.speed = Double.valueOf(d);
        processData();
    }

    public void updateEngineTemp(double d) {
        this.currentValues.engineTemp = Double.valueOf(d);
        processData();
    }

    private void processData() {
        Date contextDate = getContextDate();
        if (isInTargetZone(this.currentValues)) {
            if (this.curPeriod.beginDate == null) {
                this.curPeriod.beginDate = contextDate;
            }
            this.curPeriod.endDate = contextDate;
            if (isInTargetZone_period(this.curPeriod) && !this.hasNotifiedCurPeriod) {
                this.hasNotifiedCurPeriod = true;
                ParkedEngineOnEvent parkedEngineOnEvent = new ParkedEngineOnEvent(this);
                parkedEngineOnEvent.acquiredPosition(getLocationProvider());
                addEvent(parkedEngineOnEvent);
            }
        } else if (isInTargetZone_period(this.curPeriod)) {
            this.scoreRelevantPeriods.add(new BaseScore.ScoreRelevantPeriod(this.curPeriod.beginDate, this.curPeriod.endDate));
            this.curPeriod.setDates(null, null);
            if (this.hasNotifiedCurPeriod) {
                this.hasNotifiedCurPeriod = false;
            } else {
                ParkedEngineOnEvent parkedEngineOnEvent2 = new ParkedEngineOnEvent(this);
                parkedEngineOnEvent2.acquiredPosition(getLocationProvider());
                addEvent(parkedEngineOnEvent2);
            }
        } else {
            this.curPeriod.setDates(null, null);
            this.hasNotifiedCurPeriod = false;
        }
        updateScore();
        manageScoreUpdate();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateScore() {
        int iMax;
        List<CounterInfo> list = this.engineHotCounters;
        if (list != null) {
            Iterator<CounterInfo> it = list.iterator();
            int value = 0;
            while (it.hasNext()) {
                value += it.next().getValue();
            }
            if (value >= BASE_COUNT_MIN) {
                long jDateDifference = 0;
                for (BaseScore.ScoreRelevantPeriod scoreRelevantPeriod : this.scoreRelevantPeriods) {
                    if (scoreRelevantPeriod.beginDate != null && scoreRelevantPeriod.endDate != null) {
                        jDateDifference += Utils.dateDifference(scoreRelevantPeriod.beginDate, scoreRelevantPeriod.endDate);
                    }
                }
                if (isInTargetZone_period(this.curPeriod) && this.curPeriod.endDate != null && this.curPeriod.beginDate != null) {
                    jDateDifference += Utils.dateDifference(this.curPeriod.beginDate, this.curPeriod.endDate);
                }
                double d = this.MAX_SCORE;
                iMax = Math.max(0, (int) (d - ((jDateDifference * d) / 1080.0d)));
            } else {
                iMax = -1;
            }
        }
        setScore(iMax);
    }

    private boolean isInTargetZone(TargetValues targetValues) {
        return targetValues.rpm != null && targetValues.speed != null && targetValues.engineTemp != null && isInTargetZone_rpm(targetValues.rpm) && isInTargetZone_speed(targetValues.speed) && isInTargetZone_engineTemp(targetValues.engineTemp);
    }

    private boolean isInTargetZone_rpm(Double d) {
        return d.doubleValue() >= RPM_TARGET_MIN;
    }

    private boolean isInTargetZone_speed(Double d) {
        return d.doubleValue() <= SPEED_TARGET_MAX;
    }

    private boolean isInTargetZone_engineTemp(Double d) {
        return d.doubleValue() >= ENGINE_TEMP_MIN;
    }

    private boolean isInTargetZone_period(BaseScore.ScoreRelevantPeriod scoreRelevantPeriod) {
        return (scoreRelevantPeriod.endDate == null || scoreRelevantPeriod.beginDate == null || ((double) Utils.dateDifference(scoreRelevantPeriod.beginDate, scoreRelevantPeriod.endDate)) < EVENT_DURATION_MIN_S) ? false : true;
    }

    @Override // com.texa.care.eco_driving.score.IScore
    public ScoreType getType() {
        return ScoreType.PARKED_ENGINE_ON;
    }

    @Override // com.texa.care.eco_driving.score.BaseScore
    public ScoreUpdateEvent createScoreUpdateEvent() {
        return new ParkedEngineOnUpdateScoreEvent(this);
    }

    private class TargetValues {
        private Double rpm = Double.valueOf(0.0d);
        private Double speed = Double.valueOf(100.0d);
        private Double engineTemp = Double.valueOf(ParkedEngineOnScore.BASE_COUNT_MIN);

        TargetValues() {
        }
    }
}
