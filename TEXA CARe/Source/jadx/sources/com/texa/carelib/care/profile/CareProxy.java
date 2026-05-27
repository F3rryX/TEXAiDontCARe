package com.texa.carelib.care.profile;

import com.texa.carelib.core.Callback;

/* JADX INFO: loaded from: classes2.dex */
public interface CareProxy {
    boolean beginProtectionSession(Callback<CareProxyProtectionSessionCompletedEvent> callback);
}
