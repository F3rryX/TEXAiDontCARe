package com.texa.care.eco_driving.score;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.care.eco_driving.EcoDrivingCallback;
import com.texa.care.eco_driving.ScoreContextProvider;
import com.texa.care.eco_driving.ScoreListener;
import com.texa.care.eco_driving.TripID;
import com.texa.care.eco_driving.events.drivingevents.DrivingEvent;
import com.texa.care.eco_driving.events.scoreevents.ScoreUpdateEvent;
import com.texa.care.eco_driving.utils.jsonSerializer.ExcludedFromEventHub;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import pl.charmas.android.reactivelocation2.ReactiveLocationProvider;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseScore implements IScore {
    private static Map<EcoDrivingCallback, Object> callbacks = new ConcurrentHashMap();

    @SerializedName("max_score")
    @Expose
    public final int MAX_SCORE;
    private ReactiveLocationProvider locationProvider;

    @Expose
    private final String name;
    private ScoreConfigurationProvider scoreConfigurationProvider;
    private ScoreContextProvider scoreContextProvider;

    @ExcludedFromEventHub
    @Expose
    protected List<DrivingEvent> events = new ArrayList();

    @ExcludedFromEventHub
    @Expose
    protected List<ScoreUpdateEvent> scoreUpdates = new ArrayList();
    List<ScoreListener> listeners = new ArrayList();

    @Expose
    private int score = -1;

    @Expose
    protected int lastNotifiedScore = -1;

    @Expose
    private long interval = 0;

    @Expose
    private Float distance = Float.valueOf(0.0f);

    protected abstract ScoreUpdateEvent createScoreUpdateEvent();

    @Override // com.texa.care.eco_driving.score.IScore
    public int getScore() {
        return this.score;
    }

    public void setScore(int i) {
        this.score = i;
    }

    public int getLastNotifiedScore() {
        return this.lastNotifiedScore;
    }

    public long getInterval() {
        return this.interval;
    }

    public void setInterval(long j) {
        this.interval = j;
    }

    public String getName() {
        return this.name;
    }

    @Override // com.texa.care.eco_driving.score.IScore
    public List<DrivingEvent> getEvents() {
        return this.events;
    }

    @Override // com.texa.care.eco_driving.score.IScore
    public List<ScoreUpdateEvent> getScoreUpdates() {
        return this.scoreUpdates;
    }

    public Float getDistance() {
        return this.distance;
    }

    public void setDistance(Float f) {
        this.distance = f;
    }

    public ReactiveLocationProvider getLocationProvider() {
        return this.locationProvider;
    }

    public void setLocationProvider(ReactiveLocationProvider reactiveLocationProvider) {
        this.locationProvider = reactiveLocationProvider;
    }

    public ScoreContextProvider getScoreContextProvider() {
        return this.scoreContextProvider;
    }

    public void setScoreContextProvider(ScoreContextProvider scoreContextProvider) {
        this.scoreContextProvider = scoreContextProvider;
    }

    public ScoreConfigurationProvider getScoreConfigurationProvider() {
        return this.scoreConfigurationProvider;
    }

    public void setScoreConfigurationProvider(ScoreConfigurationProvider scoreConfigurationProvider) {
        this.scoreConfigurationProvider = scoreConfigurationProvider;
    }

    public BaseScore(String str, int i) {
        this.name = str;
        this.MAX_SCORE = i;
    }

    public float getOdometer() {
        if (getScoreContextProvider() != null) {
            return getScoreContextProvider().getOdometer();
        }
        return -1.0f;
    }

    double getNormScore() {
        return ((double) getScore()) / ((double) this.MAX_SCORE);
    }

    public TripID getTripId() {
        if (getScoreContextProvider() != null) {
            return getScoreContextProvider().getTripID();
        }
        return null;
    }

    public Long getTripNumber() {
        if (getScoreContextProvider() != null) {
            return getScoreContextProvider().getTripNumber();
        }
        return null;
    }

    public static void registerCallback(EcoDrivingCallback ecoDrivingCallback) {
        callbacks.put(ecoDrivingCallback, new Object());
    }

    public static void unRegisterCallback(EcoDrivingCallback ecoDrivingCallback) {
        callbacks.remove(ecoDrivingCallback);
    }

    public static Map<EcoDrivingCallback, Object> getCallbacks() {
        return Collections.synchronizedMap(callbacks);
    }

    public void reset() {
        this.score = -1;
        this.interval = 0L;
        this.events.clear();
        this.scoreUpdates.clear();
        this.lastNotifiedScore = -1;
        manageScoreUpdate();
    }

    public boolean isValid() {
        return getScore() != -1;
    }

    ScoreUpdateEvent manageScoreUpdate() {
        double d;
        ScoreUpdateEvent scoreUpdateEventCreateScoreUpdateEvent;
        int score = getScore();
        int i = this.lastNotifiedScore;
        boolean z = true;
        if (i != -1 || score == -1) {
            d = (((double) score) - ((double) i)) / ((double) this.MAX_SCORE);
            if (Math.abs(d) < (getScoreConfigurationProvider() != null ? getScoreConfigurationProvider().getScoreUpdateRate() : 0.05d)) {
                z = false;
            }
        } else {
            d = 0.0d;
        }
        if (z) {
            scoreUpdateEventCreateScoreUpdateEvent = createScoreUpdateEvent();
            this.lastNotifiedScore = score;
            this.scoreUpdates.add(scoreUpdateEventCreateScoreUpdateEvent);
            notifyScoreUpdate(scoreUpdateEventCreateScoreUpdateEvent);
        } else {
            scoreUpdateEventCreateScoreUpdateEvent = null;
        }
        if (d >= 0.01d) {
            Iterator<ScoreListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().update(this, this.lastNotifiedScore, score, this.MAX_SCORE);
            }
        }
        return scoreUpdateEventCreateScoreUpdateEvent;
    }

    DrivingEvent addEvent(DrivingEvent drivingEvent) {
        this.events.add(drivingEvent);
        notifyEvent(drivingEvent);
        return drivingEvent;
    }

    void notifyScoreUpdate(ScoreUpdateEvent scoreUpdateEvent) {
        for (Map.Entry<EcoDrivingCallback, Object> entry : callbacks.entrySet()) {
            if (entry.getKey() != null) {
                entry.getKey().scoreUpdateCall(scoreUpdateEvent);
            }
        }
    }

    void notifyEvent(DrivingEvent drivingEvent) {
        for (Map.Entry<EcoDrivingCallback, Object> entry : callbacks.entrySet()) {
            if (entry.getKey() != null) {
                entry.getKey().drivingEventCall(drivingEvent, false);
            }
        }
    }

    class ScoreRelevantPeriod {
        Date beginDate;
        Date endDate;

        ScoreRelevantPeriod(Date date, Date date2) {
            this.beginDate = date;
            this.endDate = date2;
        }

        ScoreRelevantPeriod() {
        }

        ScoreRelevantPeriod setDates(Date date, Date date2) {
            this.beginDate = date;
            this.endDate = date2;
            return this;
        }
    }

    public enum DrivingProfile {
        UNDEFINED(0),
        CHAUFFEUR(1),
        EXPERIENCED(2),
        NEWBIE(3);

        private int type;

        DrivingProfile(int i) {
            this.type = i;
        }

        public int getNumericType() {
            return this.type;
        }
    }

    public Date getContextDate() {
        return getScoreContextProvider() != null ? getScoreContextProvider().getDate() : new Date();
    }
}
