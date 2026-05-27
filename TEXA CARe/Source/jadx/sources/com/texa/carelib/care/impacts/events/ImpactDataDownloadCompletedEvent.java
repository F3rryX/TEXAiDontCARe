package com.texa.carelib.care.impacts.events;

import com.texa.carelib.care.impacts.CrashReport;
import com.texa.carelib.care.impacts.Impact;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ImpactDataDownloadCompletedEvent extends ErrorEventBase {
    private final List<CrashReport> mAccelerationEvents;
    private final List<Impact> mImpacts;

    public ImpactDataDownloadCompletedEvent(Object obj, List<Impact> list, List<CrashReport> list2, CareError careError) {
        super(obj, careError);
        if (list == null) {
            this.mImpacts = Collections.emptyList();
        } else {
            this.mImpacts = list;
        }
        if (list2 == null) {
            this.mAccelerationEvents = Collections.emptyList();
        } else {
            this.mAccelerationEvents = list2;
        }
    }

    public List<CrashReport> getAccelerationEvents() {
        return this.mAccelerationEvents;
    }

    public List<Impact> getImpacts() {
        return this.mImpacts;
    }
}
