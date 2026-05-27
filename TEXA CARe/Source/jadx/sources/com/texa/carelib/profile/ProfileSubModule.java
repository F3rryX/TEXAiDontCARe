package com.texa.carelib.profile;

import android.os.Bundle;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.ObservableObjectBase;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ProfileSubModule extends ObservableObjectBase {
    private final Bundle mArguments = new Bundle();

    public abstract Profile getProfile();

    public void loadInfo() {
    }

    public abstract void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent);

    public void onMessageReceived(Object obj, Message message, CareError careError) {
    }

    public final Bundle getArguments() {
        return this.mArguments;
    }
}
