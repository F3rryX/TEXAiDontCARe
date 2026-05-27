package com.texa.carelib.profile.internal;

import com.texa.carelib.care.profile.CareProxyProtectionSessionCompletedEvent;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.profile.ProfileType;
import com.texa.carelib.profile.ProfileTypeProxy;
import com.texa.carelib.profile.events.AuthenticationCompletedEvent;
import java.beans.PropertyChangeEvent;

/* JADX INFO: loaded from: classes2.dex */
public class MockProfile extends ProfileBase implements ProfileTypeProxy {
    public static final String HARDWARE_TOKEN = "Gl/7nDHBJINTwQqM81YAfKLHBAD+aq4AzcOlwkECtsGHAvAziALnSlSS6cg0w8Dk0r3VDHEEMr9sRqnlJqqn5H/XESRusc5S+PscSB42d9PRM50c1+jPczHtUamOku00Sy+vKa25PLo7d8w53ufOHHyFppoVSnacp5m0ShcK7p6hhoJ3xMMzD51rivOr1tqNp61n3E7Qyg+HoMYs8vdy9UqqlI52N/U9Xgfnwn7zLfDH3xm9BWy4dEE6RUHLnG/TnoFtmErSFyYMEVujVjYeb6Fue52gqe2g2KrqzJmyA4rpZ4uVq8mFvVJTEz5sSVMqIvex1xHUv1IwH7Y2d9dhUQ==";
    public static final String TAG = "MockProfile";
    private final Communication mCommunication;

    @Override // com.texa.carelib.care.profile.CareProxy
    public boolean beginProtectionSession(Callback<CareProxyProtectionSessionCompletedEvent> callback) {
        return true;
    }

    @Override // com.texa.carelib.profile.Profile
    public void shutdown() {
    }

    public MockProfile(Communication communication) {
        this.mCommunication = communication;
    }

    @Override // com.texa.carelib.profile.Profile
    public DeviceInfo getCurrentDevice() {
        return this.mCommunication.getCurrentDevice();
    }

    @Override // com.texa.carelib.profile.Profile
    public void forceAuthentication(Callback<AuthenticationCompletedEvent> callback) throws CareLibException {
        beginAuthentication(this.mCommunication.getCurrentDevice(), callback);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.texa.carelib.profile.internal.ProfileBase
    public void onCommunicationStatusChanged(PropertyChangeEvent propertyChangeEvent) {
        if (CommunicationStatus.CONNECTED == ((CommunicationStatus) propertyChangeEvent.getNewValue())) {
            onDeviceConnected();
        }
        super.onCommunicationStatusChanged(propertyChangeEvent);
    }

    private void onDeviceConnected() {
        try {
            beginAuthentication(this.mCommunication.getCurrentDevice(), null);
        } catch (CareLibException unused) {
        }
    }

    private void beginAuthentication(DeviceInfo deviceInfo, Callback<AuthenticationCompletedEvent> callback) throws CareLibException {
        throw new IllegalStateException("Not implemented");
    }

    @Override // com.texa.carelib.profile.ProfileTypeProxy
    public ProfileType getType() {
        return ProfileType.MOCK;
    }
}
