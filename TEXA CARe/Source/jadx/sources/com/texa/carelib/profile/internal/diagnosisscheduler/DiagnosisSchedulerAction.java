package com.texa.carelib.profile.internal.diagnosisscheduler;

import com.texa.carelib.care.vehicle.SubscriptionState;
import com.texa.carelib.care.vehicle.internal.DataIDFormatter;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class DiagnosisSchedulerAction {
    private final DiagnosisSchedulerActionType mAction;
    private final Set<Long> mDataIDs;
    private final Long mInterval;
    private final int mObjectDataType;
    private final Long mOldSubscriptionInterval;
    private final SubscriptionState mOldSubscriptionState;

    public DiagnosisSchedulerAction(DiagnosisSchedulerActionType diagnosisSchedulerActionType, int i, Set<Long> set, SubscriptionState subscriptionState, Long l) {
        this(diagnosisSchedulerActionType, i, set, null, subscriptionState, l);
    }

    public DiagnosisSchedulerAction(DiagnosisSchedulerActionType diagnosisSchedulerActionType, int i, Set<Long> set, Long l, SubscriptionState subscriptionState, Long l2) {
        this.mAction = diagnosisSchedulerActionType;
        this.mObjectDataType = i;
        this.mDataIDs = set;
        this.mInterval = l;
        this.mOldSubscriptionState = subscriptionState;
        this.mOldSubscriptionInterval = l2;
    }

    public DiagnosisSchedulerActionType getAction() {
        return this.mAction;
    }

    public int getObjectDataType() {
        return this.mObjectDataType;
    }

    public Set<Long> getDataIDs() {
        return this.mDataIDs;
    }

    public Long getNewInterval() {
        return this.mInterval;
    }

    public SubscriptionState getOldSubscriptionState() {
        return this.mOldSubscriptionState;
    }

    public Long getOldInterval() {
        return this.mOldSubscriptionInterval;
    }

    public String toString() {
        return "DiagnosisSchedulerAction{mAction=" + this.mAction + ", mObjectDataType=" + this.mObjectDataType + ", mDataIDs=" + DataIDFormatter.toString(this.mDataIDs) + ", mInterval=" + this.mInterval + ", mOldSubscriptionState=" + this.mOldSubscriptionState + ", mOldSubscriptionInterval=" + this.mOldSubscriptionInterval + '}';
    }
}
