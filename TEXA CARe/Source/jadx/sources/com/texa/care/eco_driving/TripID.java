package com.texa.care.eco_driving;

import com.google.gson.annotations.Expose;

/* JADX INFO: loaded from: classes.dex */
public class TripID {

    @Expose
    private final String serialNumber;

    @Expose
    private final String tripNumber;

    public String getSerialNumber() {
        return this.serialNumber;
    }

    public String getTripNumber() {
        return this.tripNumber;
    }

    public TripID(String str, String str2) {
        this.serialNumber = str == null ? Constants.INVALID_SERIAL_NUMBER : str;
        this.tripNumber = str2;
    }

    public boolean isValid() {
        return !this.serialNumber.equals(Constants.INVALID_SERIAL_NUMBER);
    }

    public String toString() {
        return this.serialNumber + ":" + this.tripNumber;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TripID)) {
            return false;
        }
        TripID tripID = (TripID) obj;
        return this.serialNumber.equals(tripID.serialNumber) && this.tripNumber.equals(tripID.tripNumber);
    }
}
