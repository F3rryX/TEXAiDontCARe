package com.texa.careapp.app.events;

/* JADX INFO: loaded from: classes2.dex */
public class AcceptTermOfServiceAndPrivacyPolicyEvent {
    private static final String TAG = "AcceptTermOfServiceAndPrivacyPolicyEvent";
    private int action;

    public AcceptTermOfServiceAndPrivacyPolicyEvent(int i) {
        this.action = 0;
        this.action = i;
    }

    public int getAction() {
        return this.action;
    }
}
