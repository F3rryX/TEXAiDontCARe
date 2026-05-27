package com.texa.care.eco_driving.score;

import com.texa.care.eco_driving.CountersSnapshot;
import com.texa.care.eco_driving.CountersSnapshotStack;
import com.texa.care.eco_driving.TupleSupport;
import com.texa.care.eco_driving.Utils;
import com.texa.care.eco_driving.events.drivingevents.DrivingEvent;
import com.texa.care.eco_driving.events.drivingevents.HighSpeedEvent;
import com.texa.care.eco_driving.events.scoreevents.HighSpeedScoreUpdateEvent;
import com.texa.care.eco_driving.events.scoreevents.ScoreUpdateEvent;
import com.texa.care.eco_driving.score.BaseScore;
import com.texa.carelib.core.CounterInfo;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class HighSpeedScore extends BaseScore {
    private static final int BASE_COUNT_MIN = 30;
    private static final long EVENT_MUTE_INTERVAL = 300;
    private static final double SPEED_BASE_KPH = 100.0d;
    private static final HashMap<BaseScore.DrivingProfile, Settings> settingsByProfile;
    private boolean shouldIgnoreEventMute;
    private final CountersSnapshotStack snapshotStack;

    @Override // com.texa.care.eco_driving.score.IScore
    public ScoreType getType() {
        return ScoreType.HIGH_SPEED;
    }

    @Override // com.texa.care.eco_driving.score.BaseScore
    public ScoreUpdateEvent createScoreUpdateEvent() {
        return new HighSpeedScoreUpdateEvent(this);
    }

    private static class Settings {
        private final double EVENT_NOTIFICATION_COUNT;
        private final double SPEED_THRESHOLD_KPH;

        public Settings() {
            this(110.0d, 1.0d);
        }

        public Settings(double d, double d2) {
            this.SPEED_THRESHOLD_KPH = d;
            this.EVENT_NOTIFICATION_COUNT = d2;
        }
    }

    static {
        HashMap<BaseScore.DrivingProfile, Settings> map = new HashMap<>();
        settingsByProfile = map;
        map.put(BaseScore.DrivingProfile.UNDEFINED, new Settings());
        map.put(BaseScore.DrivingProfile.CHAUFFEUR, new Settings());
        map.put(BaseScore.DrivingProfile.EXPERIENCED, new Settings(110.0d, 1.0d));
        map.put(BaseScore.DrivingProfile.NEWBIE, new Settings(110.0d, 1.0d));
    }

    public CountersSnapshotStack getSnapshotStack() {
        return this.snapshotStack;
    }

    public HighSpeedScore() {
        super("Speed limit score", 100);
        this.snapshotStack = new CountersSnapshotStack(50, 20.0d);
    }

    private Settings getSettings() {
        if (getScoreConfigurationProvider() != null) {
            return settingsByProfile.get(getScoreConfigurationProvider().getDrivingProfile());
        }
        return settingsByProfile.get(BaseScore.DrivingProfile.UNDEFINED);
    }

    public void update(List<CounterInfo> list) {
        Date contextDate = getContextDate();
        this.snapshotStack.update(new CountersSnapshot(list, contextDate, calcCount(list)));
        setScore(calcScore());
        manageScoreUpdate();
        if (countDelta() <= 0.0d) {
            this.shouldIgnoreEventMute = true;
        }
        if (shouldNotifyEvent(this.snapshotStack)) {
            HighSpeedEvent highSpeedEvent = new HighSpeedEvent(contextDate, this);
            highSpeedEvent.acquiredPosition(getLocationProvider());
            addEvent(highSpeedEvent);
        }
    }

    private double countDelta() {
        CountersSnapshot cur = this.snapshotStack.getCur();
        CountersSnapshot prev = this.snapshotStack.getPrev();
        if (cur == null || prev == null) {
            return 0.0d;
        }
        return cur.count.result - prev.count.result;
    }

    private boolean shouldNotifyEvent(CountersSnapshotStack countersSnapshotStack) {
        if (countDelta() >= getSettings().EVENT_NOTIFICATION_COUNT) {
            if (this.shouldIgnoreEventMute) {
                this.shouldIgnoreEventMute = false;
                return true;
            }
            CountersSnapshot cur = countersSnapshotStack.getCur();
            DrivingEvent drivingEvent = (DrivingEvent) Utils.getLast(this.events);
            if (cur != null && drivingEvent != null && Utils.dateDifference(cur.time, drivingEvent.getTime()) >= EVENT_MUTE_INTERVAL) {
                return true;
            }
        }
        return false;
    }

    private int calcScore() {
        CountersSnapshot cur = this.snapshotStack.getCur();
        if (cur == null || cur.count.nSamples <= 30.0d) {
            return -1;
        }
        return Math.min(this.MAX_SCORE, Math.max(0, (int) Math.round(((double) this.MAX_SCORE) * (1.0d - ((cur.count.result / 10.0d) / cur.count.nSamples)))));
    }

    private TupleSupport calcCount(List<CounterInfo> list) {
        double d = getSettings().SPEED_THRESHOLD_KPH;
        double dRound = 0.0d;
        double d2 = 0.0d;
        for (CounterInfo counterInfo : list) {
            double dFloatValue = ((Float) counterInfo.getRange().getLower()).floatValue();
            int value = counterInfo.getValue();
            if (dFloatValue >= SPEED_BASE_KPH) {
                d2 += (double) value;
            }
            if (dFloatValue >= d) {
                dRound += (double) (value * ((int) Math.round(dFloatValue - d)));
            }
        }
        return new TupleSupport(dRound, d2);
    }

    @Override // com.texa.care.eco_driving.score.BaseScore
    public void reset() {
        this.snapshotStack.reset();
        this.shouldIgnoreEventMute = false;
        super.reset();
    }
}
