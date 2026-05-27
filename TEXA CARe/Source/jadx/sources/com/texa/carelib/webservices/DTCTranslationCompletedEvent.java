package com.texa.carelib.webservices;

import com.texa.carelib.care.vehicletroubles.DTC;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DTCTranslationCompletedEvent extends ErrorEventBase {
    private final List<DTC> mDTCs;

    public DTCTranslationCompletedEvent(Object obj, List<DTC> list, CareError careError) {
        super(obj, careError);
        this.mDTCs = list;
    }

    public List<DTC> getDTCs() {
        return this.mDTCs;
    }
}
