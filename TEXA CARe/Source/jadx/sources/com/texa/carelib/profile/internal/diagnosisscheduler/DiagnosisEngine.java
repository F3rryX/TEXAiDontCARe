package com.texa.carelib.profile.internal.diagnosisscheduler;

import com.texa.carelib.care.vehicle.SubscriptionState;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.AvailableParameterUpdateCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.DiagnosisEngineReadCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.DiagnosisEngineSubscribeCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.DiagnosisEngineUnsubscribeCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.DiagnosisEngineUpdateSubscriptionCountersCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.ECUUpdateCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.SubscribedObjectsPayloadComposerCreatedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.SupportedParameterUpdateCompletedEvent;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public interface DiagnosisEngine {
    void createSubscribedObjectsPayloadComposer(Callback<SubscribedObjectsPayloadComposerCreatedEvent> callback);

    void onSubscriptionStateChanged(Long l, SubscriptionState subscriptionState, CareError careError);

    void read(int i, Set<Long> set, Callback<DiagnosisEngineReadCompletedEvent> callback);

    void subscribe(int i, Long l, Set<Long> set, Callback<DiagnosisEngineSubscribeCompletedEvent> callback);

    void unsubscribe(int i, Set<Long> set, Callback<DiagnosisEngineUnsubscribeCompletedEvent> callback);

    void updateAvailableParameters(Callback<AvailableParameterUpdateCompletedEvent> callback);

    void updateECUs(Callback<ECUUpdateCompletedEvent> callback);

    void updateSubscriptionCounters(Callback<DiagnosisEngineUpdateSubscriptionCountersCompletedEvent> callback);

    void updateSupportedParameters(Callback<SupportedParameterUpdateCompletedEvent> callback);
}
