package com.texa.carelib.profile.internal;

import com.texa.carelib.communication.Message;
import com.texa.carelib.core.CareError;

/* JADX INFO: loaded from: classes2.dex */
public interface SerialProfileMessageReceiver {
    void onMessageReceived(Object obj, Message message, CareError careError);
}
