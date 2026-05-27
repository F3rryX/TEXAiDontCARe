package com.texa.care.eco_driving.score;

import com.texa.care.eco_driving.CountersSnapshot;
import com.texa.care.eco_driving.CountersSnapshotStack;
import com.texa.care.eco_driving.TupleSupport;
import com.texa.care.eco_driving.Utils;
import com.texa.care.eco_driving.events.drivingevents.DrivingEvent;
import com.texa.care.eco_driving.events.drivingevents.HighRpmEngineColdEvent;
import com.texa.care.eco_driving.events.scoreevents.HighRpmEngineColdScoreUpdateEvent;
import com.texa.care.eco_driving.events.scoreevents.ScoreUpdateEvent;
import com.texa.carelib.core.CounterInfo;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes.dex */
public class HighRpmEngineColdScore extends BaseScore {
    private static final double BASE_COUNT_MIN = 10.0d;
    private static final double DEFAULT_THRESHOLD = 2000.0d;
    private static final double EVENT_MUTE_INTERVAL = 30.0d;
    private static final double EVENT_NOTIFICATION_COUNT = 2.0d;
    private static final double RPM_IDLE_DEFAULT = 800.0d;
    private static final double RPM_IDLE_MIN = 300.0d;
    private static final int SIGNIFICANT_SAMPLE_COUNT = 3;
    public static double TEMP_THRESHOLD_DEG_C = 50.0d;
    private static final double THRESHOLD_RATE_ON_IDLE = 3.0d;
    private final CountersSnapshotStack snapshotStack;

    public CountersSnapshotStack getSnapshotStack() {
        return this.snapshotStack;
    }

    HighRpmEngineColdScore(String str, int i) {
        super(str, i);
        this.snapshotStack = new CountersSnapshotStack(50, 20.0d);
    }

    public HighRpmEngineColdScore() {
        super("High RPM with engine cold score", 100);
        this.snapshotStack = new CountersSnapshotStack(50, 20.0d);
    }

    HighRpmEngineColdScore(int i) {
        super("High RPM with engine cold score", i);
        this.snapshotStack = new CountersSnapshotStack(50, 20.0d);
    }

    @Override // com.texa.care.eco_driving.score.BaseScore
    public void reset() {
        this.snapshotStack.reset();
        super.reset();
    }

    public void update(List<CounterInfo> list) {
        Date contextDate = getContextDate();
        this.snapshotStack.update(new CountersSnapshot(list, contextDate, highRpmSamples(list)));
        setScore(calcScore());
        manageScoreUpdate();
        if (shouldNotifyEvent(this.snapshotStack)) {
            HighRpmEngineColdEvent highRpmEngineColdEvent = new HighRpmEngineColdEvent(contextDate, this);
            highRpmEngineColdEvent.acquiredPosition(getLocationProvider());
            addEvent(highRpmEngineColdEvent);
        }
    }

    private boolean shouldNotifyEvent(CountersSnapshotStack countersSnapshotStack) {
        CountersSnapshot cur = countersSnapshotStack.getCur();
        CountersSnapshot prev = countersSnapshotStack.getPrev();
        if (prev == null || cur == null || cur.count.result - prev.count.result < EVENT_NOTIFICATION_COUNT) {
            return false;
        }
        DrivingEvent drivingEvent = !this.events.isEmpty() ? this.events.get(this.events.size() - 1) : null;
        return drivingEvent == null || ((double) Utils.dateDifference(drivingEvent.getTime(), cur.time)) >= EVENT_MUTE_INTERVAL;
    }

    private int calcScore() {
        CountersSnapshot cur = this.snapshotStack.getCur();
        if (cur == null || cur.count.nSamples <= BASE_COUNT_MIN) {
            return -1;
        }
        return (int) Math.round(((double) this.MAX_SCORE) * Math.min(1.0d, Math.max(0.0d, 1.0d - (cur.count.result / 120.0d))));
    }

    private TupleSupport highRpmSamples(List<CounterInfo> list) {
        double dCalcRpmThreshold = calcRpmThreshold(list);
        ListIterator<CounterInfo> listIterator = list.listIterator(list.size());
        double value = 0.0d;
        double value2 = 0.0d;
        while (listIterator.hasPrevious()) {
            CounterInfo counterInfoPrevious = listIterator.previous();
            value2 += (double) counterInfoPrevious.getValue();
            if (((Float) counterInfoPrevious.getRange().getLower()).floatValue() >= dCalcRpmThreshold) {
                value += (double) counterInfoPrevious.getValue();
            }
        }
        return new TupleSupport(value, value2);
    }

    private double calcRpmThreshold(List<CounterInfo> list) {
        double dCalcRpmMin = calcRpmMin(list) * THRESHOLD_RATE_ON_IDLE;
        Iterator<CounterInfo> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().getRange().contains(Float.valueOf((float) dCalcRpmMin))) {
                return ((Float) r2.getRange().getUpper()).floatValue();
            }
        }
        return RPM_IDLE_DEFAULT;
    }

    private double calcRpmMin(List<CounterInfo> list) {
        for (CounterInfo counterInfo : list) {
            double dFloatValue = ((Float) counterInfo.getRange().getUpper()).floatValue();
            if (dFloatValue >= RPM_IDLE_MIN && counterInfo.getValue() >= 3) {
                return dFloatValue;
            }
        }
        return RPM_IDLE_DEFAULT;
    }

    double getRpmThreshold() {
        return (this.snapshotStack.getCur() == null || this.snapshotStack.getCur().counters == null) ? DEFAULT_THRESHOLD : calcRpmThreshold(this.snapshotStack.getCur().counters);
    }

    @Override // com.texa.care.eco_driving.score.IScore
    public ScoreType getType() {
        return ScoreType.HIGH_RPM_ENGINE_COLD;
    }

    @Override // com.texa.care.eco_driving.score.BaseScore
    public ScoreUpdateEvent createScoreUpdateEvent() {
        return new HighRpmEngineColdScoreUpdateEvent(this);
    }
}
