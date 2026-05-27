package com.texa.carelib.care.trips;

import android.os.Bundle;
import com.texa.carelib.care.trips.events.TripDataErasedEvent;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.ObservableObject;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface TripLogBook extends ObservableObject {
    public static final String EXTRA_DUMP_LOGBOOK = "com.texa.carelib.care.trips.TripLogBook#EXTRA_DUMP_LOGBOOK";
    public static final String PROPERTY_TRIPS_INFO = "com.texa.carelib.care.trips.TripLogBook#PROPERTY_TRIPS_INFO";

    void eraseTripsInfo(Callback<TripDataErasedEvent> callback) throws CareLibException;

    Bundle getArguments();

    List<TripInfo> getTripsInfo();

    boolean isErasingTripsInfo();

    boolean isReadingTripsInfo();

    void readTripsInfo(TripDataDownloadListener tripDataDownloadListener) throws CareLibException;
}
