package com.texa.carelib.webservices.internal;

import com.texa.carelib.core.Callback;
import com.texa.carelib.webservices.events.BeginProtectionSessionCompletedEvent;

/* JADX INFO: loaded from: classes2.dex */
public interface ServiceProtectionProcedure {
    boolean beginProtectionSessionWithHWToken(byte[] bArr, String str, Callback<BeginProtectionSessionCompletedEvent> callback);
}
