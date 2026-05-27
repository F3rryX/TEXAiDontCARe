package com.texa.careapp.app.ecodriving.serviceserializer;

import android.location.Location;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes2.dex */
public class LocationEntity {
    protected static final int INVALID_DATA = -1;

    @Expose
    Double accuracy;

    @SerializedName("elevation")
    @Expose
    Integer altitude;

    @Expose
    Double latitude;

    @Expose
    Double longitude;

    protected boolean canEqual(Object obj) {
        return obj instanceof LocationEntity;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LocationEntity)) {
            return false;
        }
        LocationEntity locationEntity = (LocationEntity) obj;
        if (!locationEntity.canEqual(this)) {
            return false;
        }
        Double latitude = getLatitude();
        Double latitude2 = locationEntity.getLatitude();
        if (latitude != null ? !latitude.equals(latitude2) : latitude2 != null) {
            return false;
        }
        Double longitude = getLongitude();
        Double longitude2 = locationEntity.getLongitude();
        if (longitude != null ? !longitude.equals(longitude2) : longitude2 != null) {
            return false;
        }
        Double accuracy = getAccuracy();
        Double accuracy2 = locationEntity.getAccuracy();
        if (accuracy != null ? !accuracy.equals(accuracy2) : accuracy2 != null) {
            return false;
        }
        Integer altitude = getAltitude();
        Integer altitude2 = locationEntity.getAltitude();
        return altitude != null ? altitude.equals(altitude2) : altitude2 == null;
    }

    public int hashCode() {
        Double latitude = getLatitude();
        int iHashCode = latitude == null ? 43 : latitude.hashCode();
        Double longitude = getLongitude();
        int iHashCode2 = ((iHashCode + 59) * 59) + (longitude == null ? 43 : longitude.hashCode());
        Double accuracy = getAccuracy();
        int iHashCode3 = (iHashCode2 * 59) + (accuracy == null ? 43 : accuracy.hashCode());
        Integer altitude = getAltitude();
        return (iHashCode3 * 59) + (altitude != null ? altitude.hashCode() : 43);
    }

    public void setAccuracy(Double d) {
        this.accuracy = d;
    }

    public void setAltitude(Integer num) {
        this.altitude = num;
    }

    public void setLatitude(Double d) {
        this.latitude = d;
    }

    public void setLongitude(Double d) {
        this.longitude = d;
    }

    public String toString() {
        return "LocationEntity(latitude=" + getLatitude() + ", longitude=" + getLongitude() + ", accuracy=" + getAccuracy() + ", altitude=" + getAltitude() + ")";
    }

    public Double getLatitude() {
        return this.latitude;
    }

    public Double getLongitude() {
        return this.longitude;
    }

    public Double getAccuracy() {
        return this.accuracy;
    }

    public Integer getAltitude() {
        return this.altitude;
    }

    public LocationEntity(Location location) {
        this(Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude()), Double.valueOf(location.getAltitude()), Float.valueOf(location.getAccuracy()));
    }

    public LocationEntity(Double d, Double d2, Double d3, Float f) {
        this.latitude = d;
        this.longitude = d2;
        this.accuracy = Double.valueOf(f.doubleValue());
        this.altitude = d3 != null ? Integer.valueOf(d3.intValue()) : null;
    }
}
