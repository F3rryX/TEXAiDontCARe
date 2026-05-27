package com.texa.carelib.tools.integrator.events;

import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;

/* JADX INFO: loaded from: classes2.dex */
public class FirmwareUpgradeCompletedEvent extends ErrorEventBase {
    public FirmwareUpgradeCompletedEvent(Object obj, CareError careError) {
        super(obj, careError);
    }
}
