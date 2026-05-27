package com.texa.care.eco_driving.score;

import androidx.core.util.Pair;
import com.texa.care.eco_driving.AccCountersSnapshot;
import com.texa.care.eco_driving.Constants;
import com.texa.care.eco_driving.CountersSnapshot;
import com.texa.care.eco_driving.CountersSnapshotStack;
import com.texa.care.eco_driving.TupleSupport;
import com.texa.care.eco_driving.Utils;
import com.texa.care.eco_driving.events.drivingevents.BrakesEvent;
import com.texa.care.eco_driving.events.scoreevents.BrakesScoreUpdateEvent;
import com.texa.care.eco_driving.events.scoreevents.ScoreUpdateEvent;
import com.texa.care.eco_driving.score.BaseScore;
import com.texa.carelib.core.CounterInfo;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class BrakesScore extends BaseScore {
    public static final double ACC_THRESHOLD_G = 0.25d;
    private static final double ACC_THRESHOLD_MS2 = -0.6d;
    private static final double BASE_COUNT_MIN = 10.0d;
    private static final double EVENT_MUTE_INTERVAL = 30.0d;
    private static final double SPEED_INVALID = -1.0d;
    private static final HashMap<BaseScore.DrivingProfile, Settings> settingsByProfile;
    private Date lastEventsTimeStamp;
    private final CountersSnapshotStack snapshotStack;
    private double speed;

    @Override // com.texa.care.eco_driving.score.IScore
    public ScoreType getType() {
        return ScoreType.BRAKES;
    }

    @Override // com.texa.care.eco_driving.score.BaseScore
    public ScoreUpdateEvent createScoreUpdateEvent() {
        return new BrakesScoreUpdateEvent(this);
    }

    private static class Settings {
        private final double EVENT_NOTIFICATION_COUNT;
        private final double PENALTY_FUNC_A;

        public Settings() {
            this(1.0d, 5.3d);
        }

        public Settings(double d, double d2) {
            this.PENALTY_FUNC_A = d;
            this.EVENT_NOTIFICATION_COUNT = d2;
        }
    }

    static {
        HashMap<BaseScore.DrivingProfile, Settings> map = new HashMap<>();
        settingsByProfile = map;
        map.put(BaseScore.DrivingProfile.UNDEFINED, new Settings());
        map.put(BaseScore.DrivingProfile.CHAUFFEUR, new Settings(0.65d, 5.3d));
        map.put(BaseScore.DrivingProfile.EXPERIENCED, new Settings(0.6d, 5.3d));
        map.put(BaseScore.DrivingProfile.NEWBIE, new Settings(1.0d, 5.3d));
    }

    public CountersSnapshotStack getSnapshotStack() {
        return this.snapshotStack;
    }

    private Settings getSettings() {
        if (getScoreConfigurationProvider() != null) {
            return settingsByProfile.get(getScoreConfigurationProvider().getDrivingProfile());
        }
        return settingsByProfile.get(BaseScore.DrivingProfile.UNDEFINED);
    }

    public BrakesScore() {
        super("Harsh brakes (progressive) score", 100);
        this.speed = SPEED_INVALID;
        this.snapshotStack = new CountersSnapshotStack(50, 20.0d);
        this.speed = SPEED_INVALID;
        this.lastEventsTimeStamp = null;
    }

    BrakesScore(String str, int i) {
        super(str, i);
        this.speed = SPEED_INVALID;
        this.snapshotStack = new CountersSnapshotStack(50, 20.0d);
        this.speed = SPEED_INVALID;
        this.lastEventsTimeStamp = null;
    }

    @Override // com.texa.care.eco_driving.score.BaseScore
    public void reset() {
        this.speed = SPEED_INVALID;
        this.snapshotStack.reset();
        this.lastEventsTimeStamp = null;
        super.reset();
    }

    public void update(List<CounterInfo> list) {
        Date contextDate = getContextDate();
        this.snapshotStack.update(new AccCountersSnapshot(list, contextDate, calcCount(list), this.speed));
        setScore(calcScore());
        manageScoreUpdate();
        if (shouldNotifyEvent(this.snapshotStack)) {
            this.lastEventsTimeStamp = contextDate;
            BrakesEvent brakesEvent = new BrakesEvent(contextDate, this);
            Pair<Double, Double> pairEventCounts = eventCounts(this.snapshotStack);
            if (pairEventCounts != null) {
                brakesEvent.addExtra(Constants.COUNT, pairEventCounts.first);
                brakesEvent.addExtra(Constants.COUNT_FOR_EVENTS, pairEventCounts.second);
            }
            brakesEvent.acquiredPosition(getLocationProvider());
            addEvent(brakesEvent);
        }
    }

    public void updateSpeed(double d) {
        this.speed = d;
    }

    private TupleSupport calcCount(List<CounterInfo> list) {
        double d = 0.0d;
        double d2 = 0.0d;
        for (CounterInfo counterInfo : list) {
            double value = counterInfo.getValue();
            double dFloatValue = ((Float) counterInfo.getRange().getUpper()).floatValue();
            if (dFloatValue <= ACC_THRESHOLD_MS2) {
                d += getSettings().PENALTY_FUNC_A * (-dFloatValue) * value;
            }
            d2 += value;
        }
        Timber.d("BRAKES SCORE COUNT --> %s", Double.valueOf(d));
        return new TupleSupport(d, d2);
    }

    private int calcScore() {
        CountersSnapshot cur = this.snapshotStack.getCur();
        if (cur == null || cur.count.nSamples <= BASE_COUNT_MIN) {
            return -1;
        }
        return Math.min(this.MAX_SCORE, Math.max(0, (int) (((double) this.MAX_SCORE) * (1.0d - ((cur.count.result * 3600.0d) / (cur.count.nSamples * 1236.0d))))));
    }

    private Pair<Double, Double> eventCounts(CountersSnapshotStack countersSnapshotStack) {
        CountersSnapshot cur = countersSnapshotStack.getCur();
        CountersSnapshot prev = countersSnapshotStack.getPrev();
        if (prev == null || cur == null) {
            return null;
        }
        double d = ((cur.count.result - prev.count.result) * 20.0d) / (cur.count.nSamples - prev.count.nSamples);
        double dCountForEventNotification = countForEventNotification(((AccCountersSnapshot) prev).getSpeed());
        Timber.d("BRAKES SCORE COUNT NORM --> %s / %s", Double.valueOf(d), Double.valueOf(dCountForEventNotification));
        return new Pair<>(Double.valueOf(d), Double.valueOf(dCountForEventNotification));
    }

    private boolean shouldNotifyEvent(CountersSnapshotStack countersSnapshotStack) {
        Pair<Double, Double> pairEventCounts;
        CountersSnapshot cur = countersSnapshotStack.getCur();
        if (cur == null || (pairEventCounts = eventCounts(countersSnapshotStack)) == null || pairEventCounts.first.doubleValue() < pairEventCounts.second.doubleValue()) {
            return false;
        }
        Date date = this.lastEventsTimeStamp;
        return date == null || ((double) Utils.dateDifference(date, cur.time)) >= EVENT_MUTE_INTERVAL;
    }

    private double countForEventNotification(double d) {
        return d != SPEED_INVALID ? (getSettings().EVENT_NOTIFICATION_COUNT + 1.8d) - Math.log10(d) : getSettings().EVENT_NOTIFICATION_COUNT;
    }
}
