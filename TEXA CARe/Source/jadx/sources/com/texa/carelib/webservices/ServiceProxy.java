package com.texa.carelib.webservices;

import com.texa.carelib.core.Callback;
import com.texa.carelib.webservices.events.BeginProtectionSessionCompletedEvent;

/* JADX INFO: loaded from: classes2.dex */
public interface ServiceProxy {
    boolean beginProtectionSessionWithHWToken(byte[] bArr, String str, Callback<BeginProtectionSessionCompletedEvent> callback);

    void clear();

    String getSessionID();

    void setSessionID(String str);
}
