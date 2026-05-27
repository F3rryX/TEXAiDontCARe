package com.texa.careapp.app.ecodriving.serviceserializer;

import com.google.gson.annotations.Expose;

/* JADX INFO: loaded from: classes2.dex */
public class HideTripEntity {

    @Expose
    private String rideId;

    public String getRideId() {
        return this.rideId;
    }

    public void setRideId(String str) {
        this.rideId = str;
    }

    public HideTripEntity(String str) {
        this.rideId = str;
    }
}
