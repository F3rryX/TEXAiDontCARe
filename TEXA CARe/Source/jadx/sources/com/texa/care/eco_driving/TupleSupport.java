package com.texa.care.eco_driving;

import com.google.gson.annotations.Expose;

/* JADX INFO: loaded from: classes.dex */
public class TupleSupport {

    @Expose
    public double nSamples;

    @Expose
    public double result;

    public TupleSupport(double d, double d2) {
        this.result = d;
        this.nSamples = d2;
    }
}
