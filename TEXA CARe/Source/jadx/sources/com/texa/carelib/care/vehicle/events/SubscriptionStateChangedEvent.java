package com.texa.carelib.care.vehicle.events;

import com.texa.carelib.care.vehicle.SubscriptionState;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;

/* JADX INFO: loaded from: classes2.dex */
public class SubscriptionStateChangedEvent extends ErrorEventBase {
    private final SubscriptionState[] mSubscriptionStates;
    private final Long[] mUpdatedParameterIds;

    public SubscriptionStateChangedEvent(Object obj, Long[] lArr, SubscriptionState[] subscriptionStateArr, CareError careError) {
        super(obj, careError);
        this.mSubscriptionStates = subscriptionStateArr;
        this.mUpdatedParameterIds = lArr;
    }

    public SubscriptionState[] getSubscriptionStates() {
        return this.mSubscriptionStates;
    }

    public Long[] getUpdatedParametersIDs() {
        return this.mUpdatedParameterIds;
    }
}
