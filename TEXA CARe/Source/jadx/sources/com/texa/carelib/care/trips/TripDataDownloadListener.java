package com.texa.carelib.care.trips;

import com.texa.carelib.care.trips.events.TripDataDownloadCompletedEvent;
import com.texa.carelib.care.trips.events.TripDataDownloadProgressChangedEvent;

/* JADX INFO: loaded from: classes2.dex */
public interface TripDataDownloadListener {
    void onTripDataDownloadCompleted(TripDataDownloadCompletedEvent tripDataDownloadCompletedEvent);

    void onTripDataDownloadProgressChanged(TripDataDownloadProgressChangedEvent tripDataDownloadProgressChangedEvent);
}
