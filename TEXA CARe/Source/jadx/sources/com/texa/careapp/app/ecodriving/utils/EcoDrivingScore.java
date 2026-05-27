package com.texa.careapp.app.ecodriving.utils;

import com.texa.careapp.utils.Utils;

/* JADX INFO: loaded from: classes2.dex */
public class EcoDrivingScore {
    private final Float distance;
    private Float duration;
    private final String tripId;
    private final Integer typeId;
    private final Double value;

    public Integer getTypeId() {
        return this.typeId;
    }

    public Float getDistance() {
        return this.distance;
    }

    public Float getDuration() {
        return this.duration;
    }

    public void setDuration(Float f) {
        this.duration = f;
    }

    public Double getValue() {
        return this.value;
    }

    public String getTripId() {
        return this.tripId;
    }

    public EcoDrivingScore(Integer num, Float f, Float f2, Double d, String str) {
        this.tripId = str;
        this.typeId = num;
        this.distance = f;
        this.duration = f2;
        this.value = d;
    }

    public String toString() {
        return Utils.buildGsonInstance().toJson(this);
    }
}
