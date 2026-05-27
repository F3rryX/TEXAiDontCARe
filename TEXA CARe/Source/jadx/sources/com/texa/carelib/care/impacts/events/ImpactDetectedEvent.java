package com.texa.carelib.care.impacts.events;

import com.texa.carelib.care.impacts.Impact;
import com.texa.carelib.core.events.EventBase;

/* JADX INFO: loaded from: classes2.dex */
public class ImpactDetectedEvent extends EventBase {
    private final Impact mImpact;

    public ImpactDetectedEvent(Object obj, Impact impact) {
        super(obj);
        this.mImpact = impact;
    }

    public Impact getImpact() {
        return this.mImpact;
    }
}
