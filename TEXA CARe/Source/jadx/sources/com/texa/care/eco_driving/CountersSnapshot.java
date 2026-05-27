package com.texa.care.eco_driving;

import com.google.gson.annotations.Expose;
import com.texa.carelib.core.CounterInfo;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CountersSnapshot {

    @Expose
    public TupleSupport count;

    @Expose
    public List<CounterInfo> counters;

    @Expose
    public Date time;

    public CountersSnapshot(List<CounterInfo> list, Date date, TupleSupport tupleSupport) {
        this.count = new TupleSupport(0.0d, 0.0d);
        this.counters = list;
        this.time = date;
        this.count = tupleSupport;
    }
}
