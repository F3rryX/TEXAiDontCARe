package com.texa.care.eco_driving.events.scoreevents;

import com.google.gson.annotations.Expose;
import com.texa.care.eco_driving.Utils;
import com.texa.care.eco_driving.score.BaseScore;
import com.texa.care.eco_driving.score.ScoreType;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Locale;
import java.util.UUID;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public abstract class ScoreUpdateEvent {
    private static final String TIMESTAMP_PATTERN = "dd-MM-yyyy HH:mm:ss";
    private final BaseScore baseScore;

    @Expose
    protected final HashMap<String, Object> extra;

    @Expose
    private final String hardwareId;

    @Expose
    private final float odometer;

    @Expose
    private final int prevScore;

    @Expose
    private final String readableType;

    @Expose
    private final String rideId;

    @Expose
    private final int score;

    @Expose
    private final long timestamp;

    @Expose
    private final Long tripNumber;

    @Expose
    private final UUID uuid;

    public abstract ScoreType getType();

    public Long getTripNumber() {
        return this.tripNumber;
    }

    public String getHardwareId() {
        return this.hardwareId;
    }

    public String getRideId() {
        return this.rideId;
    }

    public String getReadableType() {
        return this.readableType;
    }

    public BaseScore getBaseScore() {
        return this.baseScore;
    }

    public ScoreUpdateEvent(long j, BaseScore baseScore) {
        this.extra = new HashMap<>();
        this.score = baseScore.getScore();
        this.timestamp = j;
        this.prevScore = baseScore.getLastNotifiedScore();
        this.uuid = UUID.randomUUID();
        this.tripNumber = baseScore.getTripNumber();
        this.odometer = baseScore.getOdometer();
        this.rideId = baseScore.getTripId() != null ? baseScore.getTripId().toString() : null;
        this.hardwareId = baseScore.getTripId() != null ? baseScore.getTripId().getSerialNumber() : null;
        this.baseScore = baseScore;
        Timber.d("ECO-DRIVING-LIB current tripId ScoreUpdateEvent %s", getJson());
        this.readableType = getType().name();
    }

    public ScoreUpdateEvent(BaseScore baseScore) {
        this(baseScore.getContextDate().getTime(), baseScore);
    }

    public int getScore() {
        return this.score;
    }

    public int getPrevScore() {
        return this.prevScore;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public float getOdometer() {
        return this.odometer;
    }

    public String getUuid() {
        return this.uuid.toString();
    }

    public String getJson() {
        return Utils.buildGSONInstance().toJson(this);
    }

    public String getDescription() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(TIMESTAMP_PATTERN, Locale.getDefault());
        StringBuilder sb = new StringBuilder();
        sb.append(" Type: ");
        sb.append(getClass().getSimpleName());
        sb.append(" score: ");
        sb.append(this.score);
        sb.append(" timestamp: ");
        sb.append(simpleDateFormat.format(Long.valueOf(this.timestamp)));
        sb.append(" prevScore: ");
        sb.append(this.prevScore);
        if (this.tripNumber != null) {
            sb.append(" tripNumber: ");
            sb.append(this.tripNumber.toString());
        }
        return sb.toString();
    }

    public String toString() {
        return "ScoreUpdateEvent{uuid=" + this.uuid + ", timestamp=" + this.timestamp + ", odometer=" + this.odometer + ", tripNumber=" + this.tripNumber + ", hardwareId='" + this.hardwareId + "', rideId='" + this.rideId + "', score=" + this.score + ", prevScore=" + this.prevScore + ", readableType='" + this.readableType + "', extra=" + this.extra + '}';
    }
}
