package com.texa.careapp.app.ecodriving.serviceserializer;

import com.google.gson.annotations.Expose;
import com.texa.careapp.app.ecodriving.model.TripEventModel;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class EventInfoEntity {

    @Expose
    List<GeoDataEntity> geoData = new ArrayList();

    @Expose
    String label;

    @Expose
    LocationEntity location;

    @Expose
    int odometer;

    @Expose
    Date timestamp;

    @Expose
    long timestampMillis;

    protected boolean canEqual(Object obj) {
        return obj instanceof EventInfoEntity;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof EventInfoEntity)) {
            return false;
        }
        EventInfoEntity eventInfoEntity = (EventInfoEntity) obj;
        if (!eventInfoEntity.canEqual(this) || getOdometer() != eventInfoEntity.getOdometer()) {
            return false;
        }
        Date timestamp = getTimestamp();
        Date timestamp2 = eventInfoEntity.getTimestamp();
        if (timestamp != null ? !timestamp.equals(timestamp2) : timestamp2 != null) {
            return false;
        }
        if (getTimestampMillis() != eventInfoEntity.getTimestampMillis()) {
            return false;
        }
        LocationEntity location = getLocation();
        LocationEntity location2 = eventInfoEntity.getLocation();
        if (location != null ? !location.equals(location2) : location2 != null) {
            return false;
        }
        List<GeoDataEntity> geoData = getGeoData();
        List<GeoDataEntity> geoData2 = eventInfoEntity.getGeoData();
        if (geoData != null ? !geoData.equals(geoData2) : geoData2 != null) {
            return false;
        }
        String label = getLabel();
        String label2 = eventInfoEntity.getLabel();
        return label != null ? label.equals(label2) : label2 == null;
    }

    public int hashCode() {
        int odometer = getOdometer() + 59;
        Date timestamp = getTimestamp();
        int i = odometer * 59;
        int iHashCode = timestamp == null ? 43 : timestamp.hashCode();
        long timestampMillis = getTimestampMillis();
        int i2 = ((i + iHashCode) * 59) + ((int) (timestampMillis ^ (timestampMillis >>> 32)));
        LocationEntity location = getLocation();
        int iHashCode2 = (i2 * 59) + (location == null ? 43 : location.hashCode());
        List<GeoDataEntity> geoData = getGeoData();
        int iHashCode3 = (iHashCode2 * 59) + (geoData == null ? 43 : geoData.hashCode());
        String label = getLabel();
        return (iHashCode3 * 59) + (label != null ? label.hashCode() : 43);
    }

    public void setGeoData(List<GeoDataEntity> list) {
        this.geoData = list;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public void setLocation(LocationEntity locationEntity) {
        this.location = locationEntity;
    }

    public void setOdometer(int i) {
        this.odometer = i;
    }

    public void setTimestamp(Date date) {
        this.timestamp = date;
    }

    public void setTimestampMillis(long j) {
        this.timestampMillis = j;
    }

    public String toString() {
        return "EventInfoEntity(odometer=" + getOdometer() + ", timestamp=" + getTimestamp() + ", timestampMillis=" + getTimestampMillis() + ", location=" + getLocation() + ", geoData=" + getGeoData() + ", label=" + getLabel() + ")";
    }

    public int getOdometer() {
        return this.odometer;
    }

    public Date getTimestamp() {
        return this.timestamp;
    }

    public long getTimestampMillis() {
        return this.timestampMillis;
    }

    public LocationEntity getLocation() {
        return this.location;
    }

    public List<GeoDataEntity> getGeoData() {
        return this.geoData;
    }

    public String getLabel() {
        return this.label;
    }

    public EventInfoEntity(TripEventModel tripEventModel) {
        this.odometer = tripEventModel.getOdometer().intValue();
        this.timestamp = new Date(tripEventModel.getTimestamp().longValue());
        this.timestampMillis = tripEventModel.getTimestamp().longValue();
        this.location = (tripEventModel.getLat() == null || tripEventModel.getLng() == null || tripEventModel.getAccuracy() == null) ? null : new LocationEntity(tripEventModel.getLat(), tripEventModel.getLng(), tripEventModel.getAltitude(), tripEventModel.getAccuracy());
        this.label = tripEventModel.getLabel();
    }
}
