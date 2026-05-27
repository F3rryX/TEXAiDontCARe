package com.texa.care.eco_driving.events.drivingevents;

import android.location.Location;
import com.google.android.gms.location.LocationRequest;
import com.google.gson.annotations.Expose;
import com.texa.care.eco_driving.EcoDrivingCallback;
import com.texa.care.eco_driving.Utils;
import com.texa.care.eco_driving.score.BaseScore;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Predicate;
import java.util.ConcurrentModificationException;
import java.util.Date;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import pl.charmas.android.reactivelocation2.ReactiveLocationProvider;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public abstract class DrivingEvent {
    public static final String UPDATE_LOCATION_DISPOSABLE_KEY = "UPDATE_LOCATION_DISPOSABLE_KEY";

    @Expose
    private final float distance;

    @Expose
    protected final HashMap<String, Object> extra;

    @Expose
    private final String hardwareId;

    @Expose
    private final long interval;

    @Expose
    private boolean isUpdate;
    private final LocationRequest locationRequest;
    private HashMap<String, Disposable> mDisposableHashMap;

    @Expose
    private final float odometer;

    @Expose
    private Location position;

    @Expose
    private final String readableType;

    @Expose
    private final String rideId;

    @Expose
    private final int score;

    @Expose
    private final Date time;

    @Expose
    private final Long tripNumber;

    @Expose
    private String uuid;

    public abstract DrivingEventType getType();

    public String getUuid() {
        return this.uuid;
    }

    public void setUuid(String str) {
        this.uuid = str;
    }

    public Date getTime() {
        return this.time;
    }

    public float getOdometer() {
        return this.odometer;
    }

    public String getHardwareId() {
        return this.hardwareId;
    }

    public int getScore() {
        return this.score;
    }

    public Location getPosition() {
        return this.position;
    }

    public boolean isUpdate() {
        return this.isUpdate;
    }

    public Long getTripNumber() {
        return this.tripNumber;
    }

    public String getRideId() {
        return this.rideId;
    }

    public float getDistance() {
        return this.distance;
    }

    public long getInterval() {
        return this.interval;
    }

    public String getReadableType() {
        return this.readableType;
    }

    public DrivingEvent(BaseScore baseScore) {
        this(baseScore.getContextDate(), baseScore);
    }

    public DrivingEvent(Date date, BaseScore baseScore) {
        this.extra = new HashMap<>();
        this.mDisposableHashMap = new HashMap<>();
        this.locationRequest = LocationRequest.create().setInterval(1000L).setFastestInterval(1000L).setPriority(100);
        this.time = date;
        this.score = baseScore.getScore();
        this.uuid = UUID.randomUUID().toString();
        this.tripNumber = baseScore.getTripNumber();
        this.odometer = baseScore.getOdometer();
        this.rideId = baseScore.getTripId() != null ? baseScore.getTripId().toString() : null;
        this.interval = baseScore.getInterval();
        this.distance = baseScore.getDistance() != null ? baseScore.getDistance().floatValue() : -1.0f;
        this.hardwareId = baseScore.getTripId() != null ? baseScore.getTripId().getSerialNumber() : null;
        this.readableType = getType().name();
    }

    public DrivingEvent(Date date, int i, Long l, float f, String str, long j, float f2, String str2) {
        this.extra = new HashMap<>();
        this.mDisposableHashMap = new HashMap<>();
        this.locationRequest = LocationRequest.create().setInterval(1000L).setFastestInterval(1000L).setPriority(100);
        this.time = date;
        this.score = i;
        this.uuid = UUID.randomUUID().toString();
        this.tripNumber = l;
        this.odometer = f;
        this.rideId = str;
        this.interval = j;
        this.distance = f2;
        this.hardwareId = str2;
        this.readableType = getType().name();
    }

    public void addExtra(String str, Object obj) {
        this.extra.put(str, obj);
    }

    public String getDescription() {
        return " Type: " + getType().name() + " loc: " + (getPosition() != null ? Utils.asString(getPosition()) : "---") + " time: " + Utils.asString(getTime());
    }

    public String getJson() {
        return Utils.buildGSONInstance().toJson(this);
    }

    public void acquiredPosition(ReactiveLocationProvider reactiveLocationProvider) {
        if (reactiveLocationProvider != null) {
            Utils.safeDispose(this.mDisposableHashMap, UPDATE_LOCATION_DISPOSABLE_KEY);
            this.mDisposableHashMap.put(UPDATE_LOCATION_DISPOSABLE_KEY, reactiveLocationProvider.getUpdatedLocation(this.locationRequest).take(5L).timeout(10L, TimeUnit.SECONDS).filter(new Predicate() { // from class: com.texa.care.eco_driving.events.drivingevents.DrivingEvent$$ExternalSyntheticLambda3
                @Override // io.reactivex.functions.Predicate
                public final boolean test(Object obj) {
                    return this.f$0.filterPosition((Location) obj).booleanValue();
                }
            }).subscribe(new Consumer() { // from class: com.texa.care.eco_driving.events.drivingevents.DrivingEvent$$ExternalSyntheticLambda1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    this.f$0.setLocation((Location) obj);
                }
            }, new Consumer() { // from class: com.texa.care.eco_driving.events.drivingevents.DrivingEvent$$ExternalSyntheticLambda2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Timber.w("EcoDriving position Error: %s", ((Throwable) obj).getMessage());
                }
            }, new Action() { // from class: com.texa.care.eco_driving.events.drivingevents.DrivingEvent$$ExternalSyntheticLambda0
                @Override // io.reactivex.functions.Action
                public final void run() {
                    this.f$0.updateEvent();
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Boolean filterPosition(Location location) {
        return Boolean.valueOf(this.position == null || (location != null && location.getAccuracy() < this.position.getAccuracy()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEvent() {
        if (this.position == null) {
            return;
        }
        this.isUpdate = true;
        try {
            for (EcoDrivingCallback ecoDrivingCallback : BaseScore.getCallbacks().keySet()) {
                if (ecoDrivingCallback != null) {
                    ecoDrivingCallback.drivingEventCall(this, false);
                }
            }
        } catch (ConcurrentModificationException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLocation(Location location) {
        this.position = location;
    }
}
