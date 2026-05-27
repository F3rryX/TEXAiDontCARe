package com.texa.careapp.app.ecodriving.utils;

import com.texa.careapp.utils.Utils;

/* JADX INFO: loaded from: classes2.dex */
public class EcoDrivingAverage {
    private Double duration;
    private final Integer typeId;
    private final Double value;

    public Integer getTypeId() {
        return this.typeId;
    }

    public Double getValue() {
        return this.value;
    }

    public Double getDuration() {
        return this.duration;
    }

    public void setDuration(Double d) {
        this.duration = d;
    }

    EcoDrivingAverage(Integer num, Double d, double d2) {
        this.typeId = num;
        this.value = d;
        this.duration = Double.valueOf(d2);
    }

    public String toString() {
        return Utils.buildGsonInstance().toJson(this);
    }
}
