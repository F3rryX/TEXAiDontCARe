package com.texa.careapp.app.ecodriving.serviceserializer;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.app.ecodriving.model.TripScoreUpdateModel;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class ScoreEntity {

    @Expose
    String dataVersion;

    @Expose
    boolean hidden;

    @Expose
    String id;

    @Expose
    Date modifiedAt;

    @Expose
    int odometer;

    @Expose
    int previousValue;

    @SerializedName("score_type_id")
    @Expose
    int scoreType;

    @Expose
    Date timestamp;

    @Expose
    long timestampMillis;

    @Expose
    int value;

    protected boolean canEqual(Object obj) {
        return obj instanceof ScoreEntity;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ScoreEntity)) {
            return false;
        }
        ScoreEntity scoreEntity = (ScoreEntity) obj;
        if (!scoreEntity.canEqual(this)) {
            return false;
        }
        String id = getId();
        String id2 = scoreEntity.getId();
        if (id != null ? !id.equals(id2) : id2 != null) {
            return false;
        }
        if (getScoreType() != scoreEntity.getScoreType() || getValue() != scoreEntity.getValue() || getPreviousValue() != scoreEntity.getPreviousValue()) {
            return false;
        }
        Date timestamp = getTimestamp();
        Date timestamp2 = scoreEntity.getTimestamp();
        if (timestamp != null ? !timestamp.equals(timestamp2) : timestamp2 != null) {
            return false;
        }
        if (getTimestampMillis() != scoreEntity.getTimestampMillis() || getOdometer() != scoreEntity.getOdometer() || isHidden() != scoreEntity.isHidden()) {
            return false;
        }
        Date modifiedAt = getModifiedAt();
        Date modifiedAt2 = scoreEntity.getModifiedAt();
        if (modifiedAt != null ? !modifiedAt.equals(modifiedAt2) : modifiedAt2 != null) {
            return false;
        }
        String dataVersion = getDataVersion();
        String dataVersion2 = scoreEntity.getDataVersion();
        return dataVersion != null ? dataVersion.equals(dataVersion2) : dataVersion2 == null;
    }

    public int hashCode() {
        String id = getId();
        int iHashCode = (((((((id == null ? 43 : id.hashCode()) + 59) * 59) + getScoreType()) * 59) + getValue()) * 59) + getPreviousValue();
        Date timestamp = getTimestamp();
        int iHashCode2 = (iHashCode * 59) + (timestamp == null ? 43 : timestamp.hashCode());
        long timestampMillis = getTimestampMillis();
        int odometer = (((((iHashCode2 * 59) + ((int) (timestampMillis ^ (timestampMillis >>> 32)))) * 59) + getOdometer()) * 59) + (isHidden() ? 79 : 97);
        Date modifiedAt = getModifiedAt();
        int iHashCode3 = (odometer * 59) + (modifiedAt == null ? 43 : modifiedAt.hashCode());
        String dataVersion = getDataVersion();
        return (iHashCode3 * 59) + (dataVersion != null ? dataVersion.hashCode() : 43);
    }

    public void setDataVersion(String str) {
        this.dataVersion = str;
    }

    public void setHidden(boolean z) {
        this.hidden = z;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setModifiedAt(Date date) {
        this.modifiedAt = date;
    }

    public void setOdometer(int i) {
        this.odometer = i;
    }

    public void setPreviousValue(int i) {
        this.previousValue = i;
    }

    public void setScoreType(int i) {
        this.scoreType = i;
    }

    public void setTimestamp(Date date) {
        this.timestamp = date;
    }

    public void setTimestampMillis(long j) {
        this.timestampMillis = j;
    }

    public void setValue(int i) {
        this.value = i;
    }

    public String toString() {
        return "ScoreEntity(id=" + getId() + ", scoreType=" + getScoreType() + ", value=" + getValue() + ", previousValue=" + getPreviousValue() + ", timestamp=" + getTimestamp() + ", timestampMillis=" + getTimestampMillis() + ", odometer=" + getOdometer() + ", hidden=" + isHidden() + ", modifiedAt=" + getModifiedAt() + ", dataVersion=" + getDataVersion() + ")";
    }

    public ScoreEntity(String str, int i, int i2, int i3, Date date, long j, int i4, boolean z, Date date2, String str2) {
        this.id = str;
        this.scoreType = i;
        this.value = i2;
        this.previousValue = i3;
        this.timestamp = date;
        this.timestampMillis = j;
        this.odometer = i4;
        this.hidden = z;
        this.modifiedAt = date2;
        this.dataVersion = str2;
    }

    public String getId() {
        return this.id;
    }

    public int getScoreType() {
        return this.scoreType;
    }

    public int getValue() {
        return this.value;
    }

    public int getPreviousValue() {
        return this.previousValue;
    }

    public Date getTimestamp() {
        return this.timestamp;
    }

    public long getTimestampMillis() {
        return this.timestampMillis;
    }

    public int getOdometer() {
        return this.odometer;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    public Date getModifiedAt() {
        return this.modifiedAt;
    }

    public String getDataVersion() {
        return this.dataVersion;
    }

    public ScoreEntity(TripScoreUpdateModel tripScoreUpdateModel) {
        this.id = tripScoreUpdateModel.getUuid();
        this.scoreType = tripScoreUpdateModel.getTypeId().intValue();
        this.value = tripScoreUpdateModel.getScore().intValue();
        this.previousValue = tripScoreUpdateModel.getPreviousScore().intValue();
        this.timestamp = new Date(tripScoreUpdateModel.getTimestamp());
        this.timestampMillis = tripScoreUpdateModel.getTimestamp();
        this.odometer = tripScoreUpdateModel.getOdometer().intValue();
        this.hidden = tripScoreUpdateModel.isHidden();
        this.modifiedAt = tripScoreUpdateModel.getLastMod();
        this.dataVersion = tripScoreUpdateModel.getDataVersion();
    }
}
