package com.texa.care.eco_driving;

import com.google.gson.annotations.Expose;
import com.texa.carelib.core.CounterInfo;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AccCountersSnapshot extends CountersSnapshot {

    @Expose
    final double speed;

    public double getSpeed() {
        return this.speed;
    }

    public AccCountersSnapshot(List<CounterInfo> list, Date date, TupleSupport tupleSupport, double d) {
        super(list, date, tupleSupport);
        this.speed = d;
    }
}
