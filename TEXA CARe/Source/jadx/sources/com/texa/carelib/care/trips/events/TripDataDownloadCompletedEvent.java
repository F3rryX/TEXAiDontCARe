package com.texa.carelib.care.trips.events;

import com.texa.carelib.care.trips.TripInfo;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TripDataDownloadCompletedEvent extends ErrorEventBase {
    private final List<TripInfo> mTripsInfo;

    public TripDataDownloadCompletedEvent(Object obj, List<TripInfo> list, CareError careError) {
        super(obj, careError);
        this.mTripsInfo = list;
    }

    public List<TripInfo> getTripsInfo() {
        return this.mTripsInfo;
    }
}
