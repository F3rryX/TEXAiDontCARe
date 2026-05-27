package com.texa.careapp.networking;

import android.location.Location;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class EmergencyLocation {

    @Expose
    private float accuracy;

    @Expose
    private double latitude;

    @SerializedName("timestamp")
    @Expose
    private Date locationTimestamp;

    @Expose
    private double longitude;

    protected boolean canEqual(Object obj) {
        return obj instanceof EmergencyLocation;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof EmergencyLocation)) {
            return false;
        }
        EmergencyLocation emergencyLocation = (EmergencyLocation) obj;
        if (!emergencyLocation.canEqual(this) || Double.compare(getLatitude(), emergencyLocation.getLatitude()) != 0 || Double.compare(getLongitude(), emergencyLocation.getLongitude()) != 0 || Float.compare(getAccuracy(), emergencyLocation.getAccuracy()) != 0) {
            return false;
        }
        Date locationTimestamp = getLocationTimestamp();
        Date locationTimestamp2 = emergencyLocation.getLocationTimestamp();
        return locationTimestamp != null ? locationTimestamp.equals(locationTimestamp2) : locationTimestamp2 == null;
    }

    public int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(getLatitude());
        long jDoubleToLongBits2 = Double.doubleToLongBits(getLongitude());
        int iFloatToIntBits = ((((((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32))) + 59) * 59) + ((int) ((jDoubleToLongBits2 >>> 32) ^ jDoubleToLongBits2))) * 59) + Float.floatToIntBits(getAccuracy());
        Date locationTimestamp = getLocationTimestamp();
        return (iFloatToIntBits * 59) + (locationTimestamp == null ? 43 : locationTimestamp.hashCode());
    }

    public void setAccuracy(float f) {
        this.accuracy = f;
    }

    public void setLatitude(double d) {
        this.latitude = d;
    }

    public void setLocationTimestamp(Date date) {
        this.locationTimestamp = date;
    }

    public void setLongitude(double d) {
        this.longitude = d;
    }

    public String toString() {
        return "EmergencyLocation(latitude=" + getLatitude() + ", longitude=" + getLongitude() + ", accuracy=" + getAccuracy() + ", locationTimestamp=" + getLocationTimestamp() + ")";
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public float getAccuracy() {
        return this.accuracy;
    }

    public Date getLocationTimestamp() {
        return this.locationTimestamp;
    }

    public static EmergencyLocation from(Location location) {
        EmergencyLocation emergencyLocation = new EmergencyLocation();
        emergencyLocation.setLatitude(location.getLatitude());
        emergencyLocation.setLongitude(location.getLongitude());
        emergencyLocation.setAccuracy(location.getAccuracy());
        emergencyLocation.setLocationTimestamp(new Date(location.getTime()));
        return emergencyLocation;
    }
}
