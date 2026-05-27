package com.texa.careapp.app.ecodriving.serviceserializer;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.app.ecodriving.model.TripEventModel;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class EventsEntity {

    @Expose
    String dataVersion;

    @Expose
    EventInfoEntity eventInfo;

    @SerializedName("event_type_id")
    @Expose
    int eventType;

    @Expose
    boolean hidden;

    @Expose
    String id;

    @Expose
    long intervalTime;

    @Expose
    Date modifiedAt;

    protected boolean canEqual(Object obj) {
        return obj instanceof EventsEntity;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof EventsEntity)) {
            return false;
        }
        EventsEntity eventsEntity = (EventsEntity) obj;
        if (!eventsEntity.canEqual(this)) {
            return false;
        }
        String id = getId();
        String id2 = eventsEntity.getId();
        if (id != null ? !id.equals(id2) : id2 != null) {
            return false;
        }
        if (getEventType() != eventsEntity.getEventType() || getIntervalTime() != eventsEntity.getIntervalTime() || isHidden() != eventsEntity.isHidden()) {
            return false;
        }
        EventInfoEntity eventInfo = getEventInfo();
        EventInfoEntity eventInfo2 = eventsEntity.getEventInfo();
        if (eventInfo != null ? !eventInfo.equals(eventInfo2) : eventInfo2 != null) {
            return false;
        }
        Date modifiedAt = getModifiedAt();
        Date modifiedAt2 = eventsEntity.getModifiedAt();
        if (modifiedAt != null ? !modifiedAt.equals(modifiedAt2) : modifiedAt2 != null) {
            return false;
        }
        String dataVersion = getDataVersion();
        String dataVersion2 = eventsEntity.getDataVersion();
        return dataVersion != null ? dataVersion.equals(dataVersion2) : dataVersion2 == null;
    }

    public int hashCode() {
        String id = getId();
        int iHashCode = (((id == null ? 43 : id.hashCode()) + 59) * 59) + getEventType();
        long intervalTime = getIntervalTime();
        int i = (((iHashCode * 59) + ((int) (intervalTime ^ (intervalTime >>> 32)))) * 59) + (isHidden() ? 79 : 97);
        EventInfoEntity eventInfo = getEventInfo();
        int iHashCode2 = (i * 59) + (eventInfo == null ? 43 : eventInfo.hashCode());
        Date modifiedAt = getModifiedAt();
        int iHashCode3 = (iHashCode2 * 59) + (modifiedAt == null ? 43 : modifiedAt.hashCode());
        String dataVersion = getDataVersion();
        return (iHashCode3 * 59) + (dataVersion != null ? dataVersion.hashCode() : 43);
    }

    public void setDataVersion(String str) {
        this.dataVersion = str;
    }

    public void setEventInfo(EventInfoEntity eventInfoEntity) {
        this.eventInfo = eventInfoEntity;
    }

    public void setEventType(int i) {
        this.eventType = i;
    }

    public void setHidden(boolean z) {
        this.hidden = z;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setIntervalTime(long j) {
        this.intervalTime = j;
    }

    public void setModifiedAt(Date date) {
        this.modifiedAt = date;
    }

    public String toString() {
        return "EventsEntity(id=" + getId() + ", eventType=" + getEventType() + ", intervalTime=" + getIntervalTime() + ", hidden=" + isHidden() + ", eventInfo=" + getEventInfo() + ", modifiedAt=" + getModifiedAt() + ", dataVersion=" + getDataVersion() + ")";
    }

    public String getId() {
        return this.id;
    }

    public int getEventType() {
        return this.eventType;
    }

    public long getIntervalTime() {
        return this.intervalTime;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    public EventInfoEntity getEventInfo() {
        return this.eventInfo;
    }

    public Date getModifiedAt() {
        return this.modifiedAt;
    }

    public String getDataVersion() {
        return this.dataVersion;
    }

    public EventsEntity(TripEventModel tripEventModel) {
        this.id = tripEventModel.getUuid();
        this.eventType = tripEventModel.getTypeId().intValue();
        this.intervalTime = tripEventModel.getIntervalTime();
        this.hidden = tripEventModel.isHidden();
        this.eventInfo = new EventInfoEntity(tripEventModel);
        this.modifiedAt = tripEventModel.getLastMod();
        this.dataVersion = tripEventModel.getDataVersion();
    }
}
