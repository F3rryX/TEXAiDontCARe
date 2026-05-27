package com.texa.carelib.profile.events;

import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;

/* JADX INFO: loaded from: classes2.dex */
public class AuthenticationCompletedEvent extends ErrorEventBase {
    public AuthenticationCompletedEvent(Object obj, CareError careError) {
        super(obj, careError);
    }
}
