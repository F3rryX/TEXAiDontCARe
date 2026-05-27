package com.texa.carelib.profile.internal;

import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.profile.events.AuthenticationCompletedEvent;

/* JADX INFO: loaded from: classes2.dex */
interface AuthenticationProcedure {
    void beginAuthentication(String str, Callback<AuthenticationCompletedEvent> callback) throws CareLibException;
}
