package com.texa.careapp.app.ecodriving.model;

import com.activeandroid.Cache;
import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Select;
import com.texa.care.eco_driving.events.scoreevents.ScoreUpdateEvent;
import com.texa.careapp.app.ecodriving.serviceserializer.ScoreEntity;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.utils.Utils;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = TripScoreUpdateModel.TABLE_NAME)
public class TripScoreUpdateModel extends Model {
    public static final String COLUMN_DATA_TYPE = "DataType";
    public static final String COLUMN_DATA_VERSION = "DataVersion";
    public static final String COLUMN_HIDDEN = "Hidden";
    public static final String COLUMN_ID_EVENT = "UUID";
    public static final String COLUMN_ID_TRIP_OBJECT = "IdTripObject";
    private static final String COLUMN_LAST_MOD = "lastMod";
    public static final String COLUMN_ODOMETER = "Odometer";
    public static final String COLUMN_PREVIOUS_SCORE = "PreviousScore";
    public static final String COLUMN_SCORE = "Score";
    public static final String COLUMN_SCORE_TYPE = "TypeID";
    public static final String COLUMN_SYNC_NEEDED = "SyncNeeded";
    public static final String COLUMN_TIMESTAMP = "Timestamp";
    private static final String DATA_TYPE = "SCORE_UPDATE";
    public static final String TABLE_NAME = "TripScore";

    @Column(name = "DataType")
    private String dataType;

    @Column(name = "DataVersion")
    private String dataVersion;

    @Column(name = "Hidden")
    private boolean hidden;

    @Column(name = COLUMN_LAST_MOD)
    private Date lastMod = new Date(0);

    @Column(name = "Odometer")
    private Float odometer;

    @Column(name = COLUMN_PREVIOUS_SCORE)
    private Integer previousScore;

    @Column(name = "Score")
    private Integer score;

    @Column(name = "SyncNeeded")
    private boolean syncNeeded;

    @Column(index = true, name = "Timestamp")
    private long timestamp;

    @Column(name = "IdTripObject", onDelete = Column.ForeignKeyAction.CASCADE, uniqueGroups = {"key"})
    private TripObjectModel tripObject;

    @Column(index = true, name = "TypeID")
    private Integer typeId;

    @Column(name = "UUID", onUniqueConflict = Column.ConflictAction.REPLACE, unique = true)
    private String uuid;

    public String getUuid() {
        return this.uuid;
    }

    public Integer getTypeId() {
        return this.typeId;
    }

    public void setTypeId(Integer num) {
        this.typeId = num;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public Integer getPreviousScore() {
        return this.previousScore;
    }

    public Integer getScore() {
        return this.score;
    }

    public Float getOdometer() {
        return this.odometer;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    public String getDataVersion() {
        return this.dataVersion;
    }

    public void setDataVersion(String str) {
        this.dataVersion = str;
    }

    public String getDataType() {
        return this.dataType;
    }

    public Date getLastMod() {
        return this.lastMod;
    }

    public static TripScoreUpdateModel from(ScoreUpdateEvent scoreUpdateEvent, TripObjectModel tripObjectModel) {
        TripScoreUpdateModel tripScoreUpdateModel = new TripScoreUpdateModel();
        tripScoreUpdateModel.uuid = scoreUpdateEvent.getUuid();
        tripScoreUpdateModel.typeId = Integer.valueOf(scoreUpdateEvent.getType().getNumericType());
        tripScoreUpdateModel.timestamp = scoreUpdateEvent.getTimestamp();
        tripScoreUpdateModel.tripObject = tripObjectModel;
        tripScoreUpdateModel.previousScore = Integer.valueOf(scoreUpdateEvent.getPrevScore());
        tripScoreUpdateModel.score = Integer.valueOf(scoreUpdateEvent.getScore());
        tripScoreUpdateModel.odometer = Float.valueOf(scoreUpdateEvent.getOdometer());
        tripScoreUpdateModel.dataType = DATA_TYPE;
        tripScoreUpdateModel.syncNeeded = true;
        tripScoreUpdateModel.lastMod = new Date();
        return tripScoreUpdateModel;
    }

    public static TripScoreUpdateModel from(ScoreEntity scoreEntity, TripObjectModel tripObjectModel) {
        TripScoreUpdateModel tripScoreUpdateModel = (tripObjectModel == null || tripObjectModel.getId() == null) ? null : (TripScoreUpdateModel) new Select().from(TripScoreUpdateModel.class).where("UUID = ?", scoreEntity.getId()).and("IdTripObject = ?", tripObjectModel.getId()).executeSingle();
        if (tripScoreUpdateModel == null) {
            tripScoreUpdateModel = new TripScoreUpdateModel();
            tripScoreUpdateModel.lastMod = scoreEntity.getModifiedAt();
            tripScoreUpdateModel.syncNeeded = false;
        } else if (scoreEntity.getModifiedAt() != null && tripScoreUpdateModel.lastMod.after(scoreEntity.getModifiedAt())) {
            return null;
        }
        tripScoreUpdateModel.uuid = scoreEntity.getId();
        tripScoreUpdateModel.typeId = Integer.valueOf(scoreEntity.getScoreType());
        tripScoreUpdateModel.timestamp = scoreEntity.getTimestampMillis();
        tripScoreUpdateModel.previousScore = Integer.valueOf(scoreEntity.getPreviousValue());
        tripScoreUpdateModel.score = Integer.valueOf(scoreEntity.getValue());
        tripScoreUpdateModel.odometer = Float.valueOf(scoreEntity.getOdometer());
        tripScoreUpdateModel.hidden = scoreEntity.isHidden();
        tripScoreUpdateModel.dataVersion = scoreEntity.getDataVersion();
        tripScoreUpdateModel.dataType = DATA_TYPE;
        tripScoreUpdateModel.tripObject = tripObjectModel;
        tripScoreUpdateModel.syncNeeded = false;
        return tripScoreUpdateModel;
    }

    @Override // com.activeandroid.Model
    public String toString() {
        return "TripScoreUpdateModel{uuid='" + this.uuid + "', typeId=" + this.typeId + ", timestamp=" + this.timestamp + ", previousScore=" + this.previousScore + ", score=" + this.score + ", odometer=" + this.odometer + ", hidden=" + this.hidden + ", dataVersion='" + this.dataVersion + "', dataType='" + this.dataType + "', tripObject=" + this.tripObject + ", syncNeeded=" + this.syncNeeded + '}';
    }

    public boolean saveAsSynced() {
        if (getLastSavedMod().after(this.lastMod)) {
            return false;
        }
        this.syncNeeded = false;
        this.lastMod = new Date();
        try {
            Utils.safeModelSave(this, Cache.getContext());
            return true;
        } catch (DatabaseIOException unused) {
            return false;
        }
    }

    private Date getLastSavedMod() {
        return ((TripScoreUpdateModel) new Select().from(TripScoreUpdateModel.class).where("TripScore.id = ?", getId()).executeSingle()).getLastMod();
    }
}
