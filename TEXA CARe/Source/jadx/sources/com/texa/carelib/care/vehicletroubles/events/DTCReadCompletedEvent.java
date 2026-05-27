package com.texa.carelib.care.vehicletroubles.events;

import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;

/* JADX INFO: loaded from: classes2.dex */
public class DTCReadCompletedEvent extends ErrorEventBase {
    public DTCReadCompletedEvent(Object obj, CareError careError) {
        super(obj, careError);
    }
}
