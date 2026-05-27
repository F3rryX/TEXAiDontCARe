package com.texa.carelib.webservices.events;

import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;

/* JADX INFO: loaded from: classes2.dex */
public class BeginProtectionSessionCompletedEvent extends ErrorEventBase {
    private final String mSessionID;
    private final String mVerificationToken;

    public BeginProtectionSessionCompletedEvent(Object obj, String str, String str2, CareError careError) {
        super(obj, careError);
        this.mSessionID = str;
        this.mVerificationToken = str2;
    }

    public String getSessionID() {
        return this.mSessionID;
    }

    public String getVerificationToken() {
        return this.mVerificationToken;
    }
}
