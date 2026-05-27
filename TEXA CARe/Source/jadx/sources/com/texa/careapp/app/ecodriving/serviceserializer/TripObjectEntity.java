package com.texa.careapp.app.ecodriving.serviceserializer;

import com.google.gson.annotations.Expose;
import com.texa.careapp.app.ecodriving.model.TripEventModel;
import com.texa.careapp.app.ecodriving.model.TripObjectModel;
import com.texa.careapp.app.ecodriving.model.TripScoreUpdateModel;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TripObjectEntity {

    @Expose
    String dataVersion;

    @Expose
    boolean hidden;

    @Expose
    String hwid;

    @Expose
    String id;

    @Expose
    Date modifiedAt;

    @Expose
    String parentId;

    @Expose
    TripDataEntity tripEnd;

    @Expose
    TripDataEntity tripStart;

    @Expose
    String userId;

    @Expose
    String vehicleId;

    @Expose
    List<ScoreEntity> scores = new ArrayList();

    @Expose
    List<EventsEntity> events = new ArrayList();

    protected boolean canEqual(Object obj) {
        return obj instanceof TripObjectEntity;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TripObjectEntity)) {
            return false;
        }
        TripObjectEntity tripObjectEntity = (TripObjectEntity) obj;
        if (!tripObjectEntity.canEqual(this)) {
            return false;
        }
        String id = getId();
        String id2 = tripObjectEntity.getId();
        if (id != null ? !id.equals(id2) : id2 != null) {
            return false;
        }
        String parentId = getParentId();
        String parentId2 = tripObjectEntity.getParentId();
        if (parentId != null ? !parentId.equals(parentId2) : parentId2 != null) {
            return false;
        }
        String userId = getUserId();
        String userId2 = tripObjectEntity.getUserId();
        if (userId != null ? !userId.equals(userId2) : userId2 != null) {
            return false;
        }
        String vehicleId = getVehicleId();
        String vehicleId2 = tripObjectEntity.getVehicleId();
        if (vehicleId != null ? !vehicleId.equals(vehicleId2) : vehicleId2 != null) {
            return false;
        }
        String hwid = getHwid();
        String hwid2 = tripObjectEntity.getHwid();
        if (hwid != null ? !hwid.equals(hwid2) : hwid2 != null) {
            return false;
        }
        if (isHidden() != tripObjectEntity.isHidden()) {
            return false;
        }
        TripDataEntity tripStart = getTripStart();
        TripDataEntity tripStart2 = tripObjectEntity.getTripStart();
        if (tripStart != null ? !tripStart.equals(tripStart2) : tripStart2 != null) {
            return false;
        }
        TripDataEntity tripEnd = getTripEnd();
        TripDataEntity tripEnd2 = tripObjectEntity.getTripEnd();
        if (tripEnd != null ? !tripEnd.equals(tripEnd2) : tripEnd2 != null) {
            return false;
        }
        List<ScoreEntity> scores = getScores();
        List<ScoreEntity> scores2 = tripObjectEntity.getScores();
        if (scores != null ? !scores.equals(scores2) : scores2 != null) {
            return false;
        }
        List<EventsEntity> events = getEvents();
        List<EventsEntity> events2 = tripObjectEntity.getEvents();
        if (events != null ? !events.equals(events2) : events2 != null) {
            return false;
        }
        Date modifiedAt = getModifiedAt();
        Date modifiedAt2 = tripObjectEntity.getModifiedAt();
        if (modifiedAt != null ? !modifiedAt.equals(modifiedAt2) : modifiedAt2 != null) {
            return false;
        }
        String dataVersion = getDataVersion();
        String dataVersion2 = tripObjectEntity.getDataVersion();
        return dataVersion != null ? dataVersion.equals(dataVersion2) : dataVersion2 == null;
    }

    public int hashCode() {
        String id = getId();
        int iHashCode = id == null ? 43 : id.hashCode();
        String parentId = getParentId();
        int iHashCode2 = ((iHashCode + 59) * 59) + (parentId == null ? 43 : parentId.hashCode());
        String userId = getUserId();
        int iHashCode3 = (iHashCode2 * 59) + (userId == null ? 43 : userId.hashCode());
        String vehicleId = getVehicleId();
        int iHashCode4 = (iHashCode3 * 59) + (vehicleId == null ? 43 : vehicleId.hashCode());
        String hwid = getHwid();
        int iHashCode5 = (((iHashCode4 * 59) + (hwid == null ? 43 : hwid.hashCode())) * 59) + (isHidden() ? 79 : 97);
        TripDataEntity tripStart = getTripStart();
        int iHashCode6 = (iHashCode5 * 59) + (tripStart == null ? 43 : tripStart.hashCode());
        TripDataEntity tripEnd = getTripEnd();
        int iHashCode7 = (iHashCode6 * 59) + (tripEnd == null ? 43 : tripEnd.hashCode());
        List<ScoreEntity> scores = getScores();
        int iHashCode8 = (iHashCode7 * 59) + (scores == null ? 43 : scores.hashCode());
        List<EventsEntity> events = getEvents();
        int iHashCode9 = (iHashCode8 * 59) + (events == null ? 43 : events.hashCode());
        Date modifiedAt = getModifiedAt();
        int iHashCode10 = (iHashCode9 * 59) + (modifiedAt == null ? 43 : modifiedAt.hashCode());
        String dataVersion = getDataVersion();
        return (iHashCode10 * 59) + (dataVersion != null ? dataVersion.hashCode() : 43);
    }

    public void setDataVersion(String str) {
        this.dataVersion = str;
    }

    public void setEvents(List<EventsEntity> list) {
        this.events = list;
    }

    public void setHidden(boolean z) {
        this.hidden = z;
    }

    public void setHwid(String str) {
        this.hwid = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setModifiedAt(Date date) {
        this.modifiedAt = date;
    }

    public void setParentId(String str) {
        this.parentId = str;
    }

    public void setScores(List<ScoreEntity> list) {
        this.scores = list;
    }

    public void setTripEnd(TripDataEntity tripDataEntity) {
        this.tripEnd = tripDataEntity;
    }

    public void setTripStart(TripDataEntity tripDataEntity) {
        this.tripStart = tripDataEntity;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setVehicleId(String str) {
        this.vehicleId = str;
    }

    public String getId() {
        return this.id;
    }

    public String getParentId() {
        return this.parentId;
    }

    public String getUserId() {
        return this.userId;
    }

    public String getVehicleId() {
        return this.vehicleId;
    }

    public String getHwid() {
        return this.hwid;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    public TripDataEntity getTripStart() {
        return this.tripStart;
    }

    public TripDataEntity getTripEnd() {
        return this.tripEnd;
    }

    public List<ScoreEntity> getScores() {
        return this.scores;
    }

    public List<EventsEntity> getEvents() {
        return this.events;
    }

    public Date getModifiedAt() {
        return this.modifiedAt;
    }

    public String getDataVersion() {
        return this.dataVersion;
    }

    public TripObjectEntity(TripObjectModel tripObjectModel) {
        this.id = tripObjectModel.getUuid();
        this.parentId = tripObjectModel.getIdParent();
        this.userId = tripObjectModel.getDriverId();
        this.vehicleId = tripObjectModel.getVehicleId();
        this.hwid = tripObjectModel.getHwId();
        this.hidden = tripObjectModel.isHidden();
        this.tripStart = new TripDataEntity(tripObjectModel.getStartOdo(), tripObjectModel.getStartTrip(), tripObjectModel.getStartLocationLat(), tripObjectModel.getStartLocationLng(), tripObjectModel.getStartLocationAltitude(), tripObjectModel.getStartLocationAccuracy(), tripObjectModel.getStartLabel());
        this.tripEnd = new TripDataEntity(tripObjectModel.getEndOdo(), tripObjectModel.getEndTrip(), tripObjectModel.getEndLocationLat(), tripObjectModel.getEndLocationLng(), tripObjectModel.getEndLocationAltitude(), tripObjectModel.getEndLocationAccuracy(), tripObjectModel.getEndLabel());
        Iterator<TripScoreUpdateModel> it = tripObjectModel.getUnsyncScoreUpdateSnapshot().iterator();
        while (it.hasNext()) {
            this.scores.add(new ScoreEntity(it.next()));
        }
        Iterator<TripEventModel> it2 = tripObjectModel.getUnsyncEventSnapshot().iterator();
        while (it2.hasNext()) {
            this.events.add(new EventsEntity(it2.next()));
        }
        this.modifiedAt = tripObjectModel.getLastMod();
        this.dataVersion = tripObjectModel.getDataVersion();
    }

    public String toString() {
        return "TripObjectEntity{id='" + this.id + "', parentId='" + this.parentId + "', userId='" + this.userId + "', vehicleId='" + this.vehicleId + "', hwid='" + this.hwid + "', hidden=" + this.hidden + ", tripStart=" + this.tripStart + ", tripEnd=" + this.tripEnd + ", scores=" + this.scores + ", events=" + this.events + ", modifiedAt=" + this.modifiedAt + ", dataVersion='" + this.dataVersion + "'}";
    }
}
