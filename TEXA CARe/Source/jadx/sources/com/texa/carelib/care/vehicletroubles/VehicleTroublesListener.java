package com.texa.carelib.care.vehicletroubles;

import com.texa.carelib.care.vehicletroubles.events.DTCReadCompletedEvent;

/* JADX INFO: loaded from: classes2.dex */
public interface VehicleTroublesListener {
    void onDTCReadCompleted(DTCReadCompletedEvent dTCReadCompletedEvent);
}
