package com.texa.carelib.profile;

import android.os.Bundle;
import com.texa.carelib.care.profile.CareProxy;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.ObservableObject;
import com.texa.carelib.profile.events.AuthenticationCompletedEvent;
import com.texa.carelib.webservices.ServiceProxy;

/* JADX INFO: loaded from: classes2.dex */
public interface Profile extends ObservableObject, CareProxy {
    public static final String EXTRA_TRANSFER_BLOCK_COUNT = "com.texa.carelib.profile.Profile#EXTRA_TRANSFER_BLOCK_COUNT";
    public static final String PROPERTY_READY = "com.texa.carelib.profile.Profile#PROPERTY_READY";

    ProfileListener addProfileListener(ProfileListener profileListener);

    void addProfileModule(ProfileSubModule profileSubModule);

    void forceAuthentication(Callback<AuthenticationCompletedEvent> callback) throws CareLibException;

    Bundle getArguments();

    DeviceInfo getCurrentDevice();

    ProfileDelegate getProfileDelegate();

    ServiceProxy getServiceProxy();

    boolean isReady();

    void removeProfileListener(ProfileListener profileListener);

    void removeProfileModule(ProfileSubModule profileSubModule);

    void setProfileDelegate(ProfileDelegate profileDelegate);

    void setServiceProxy(ServiceProxy serviceProxy);

    void shutdown();
}
