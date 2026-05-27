package com.texa.carelib.profile.internal;

import com.texa.carelib.care.featureverifier.internal.CommandVerifier;
import com.texa.carelib.communication.Message;
import com.texa.carelib.profile.internal.filecarrier.SerialFileCarrierFacade;

/* JADX INFO: loaded from: classes2.dex */
public interface SerialProfileProxy {
    void enableCommandSubscription(boolean z, int i);

    CommandVerifier getCommandVerifier();

    SerialFileCarrierFacade getSerialFileCarrier();

    void sendMessage(Message message);
}
