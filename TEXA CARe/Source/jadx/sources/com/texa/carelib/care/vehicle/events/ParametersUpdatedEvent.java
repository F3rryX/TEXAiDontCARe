package com.texa.carelib.care.vehicle.events;

import com.texa.carelib.core.events.EventBase;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class ParametersUpdatedEvent extends EventBase {
    private final Set<Long> mUpdatedParameterIds;

    public ParametersUpdatedEvent(Object obj, Set<Long> set) {
        super(obj);
        this.mUpdatedParameterIds = set;
    }

    public Set<Long> getUpdatedParametersIDs() {
        return this.mUpdatedParameterIds;
    }
}
