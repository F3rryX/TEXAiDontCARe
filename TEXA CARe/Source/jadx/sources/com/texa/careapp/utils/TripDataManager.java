package com.texa.careapp.utils;

import com.activeandroid.query.Select;
import com.texa.careapp.model.TripModel;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TripDataManager {
    public TripModel getTripDataCached() {
        return (TripModel) new Select().from(TripModel.class).executeSingle();
    }

    public TripModel getTripDataCached(long j) {
        return (TripModel) new Select().from(TripModel.class).where("trip_number=?", Long.valueOf(j)).executeSingle();
    }

    public List<TripModel> getAll() {
        return new Select().from(TripModel.class).execute();
    }
}
