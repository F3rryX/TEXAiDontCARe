package com.texa.care.eco_driving;

import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes.dex */
public class CountersSnapshotStack {
    private final int COUNT_MAX;
    private final double INTERVAL_MIN;
    private List<CountersSnapshot> collection = new ArrayList();
    private final double INTERVAL_MAX = 60.0d;

    public CountersSnapshot getCur() {
        if (this.collection.isEmpty()) {
            return null;
        }
        return this.collection.get(r0.size() - 1);
    }

    public CountersSnapshot getPrev() {
        CountersSnapshot cur = getCur();
        if (cur == null) {
            return null;
        }
        List<CountersSnapshot> list = this.collection;
        ListIterator<CountersSnapshot> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            CountersSnapshot countersSnapshotPrevious = listIterator.previous();
            double dDateDifference = Utils.dateDifference(countersSnapshotPrevious.time, cur.time);
            if (dDateDifference >= this.INTERVAL_MIN && dDateDifference <= this.INTERVAL_MAX) {
                return countersSnapshotPrevious;
            }
        }
        return null;
    }

    public CountersSnapshotStack(int i, double d) {
        this.COUNT_MAX = i;
        this.INTERVAL_MIN = d;
    }

    public void update(CountersSnapshot countersSnapshot) {
        if ((getCur() != null && !this.collection.isEmpty() && countersSnapshot.time.getTime() - getCur().time.getTime() >= 1000) || this.collection.isEmpty()) {
            this.collection.add(countersSnapshot);
        }
        if (this.collection.size() > this.COUNT_MAX) {
            this.collection.remove(0);
        }
    }

    public void reset() {
        this.collection.clear();
    }
}
