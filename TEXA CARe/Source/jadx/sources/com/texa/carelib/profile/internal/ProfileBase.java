package com.texa.carelib.profile.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.ObservableObjectBase;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.Utils;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileDelegate;
import com.texa.carelib.profile.ProfileListener;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.events.AuthenticationErrorEvent;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.webservices.ServiceProxy;
import java.beans.PropertyChangeEvent;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ProfileBase extends ObservableObjectBase implements Profile {
    private static final String TAG = "ProfileBase";
    private ProfileDelegate mProfileDelegate;
    private ServiceProxy mServiceProxy;
    private boolean mReady = false;
    private final ArrayList<ProfileListener> mProfileListeners = new ArrayList<>();
    private final List<ProfileSubModule> mProfileSubModules = new ArrayList();
    private final Handler mUIHandler = new Handler(Looper.getMainLooper());
    private final Bundle mArguments = new Bundle();

    private ProfileSubModule[] getProfileModules() {
        ProfileSubModule[] profileSubModuleArr;
        synchronized (this.mProfileSubModules) {
            profileSubModuleArr = new ProfileSubModule[this.mProfileSubModules.size()];
            this.mProfileSubModules.toArray(profileSubModuleArr);
        }
        return profileSubModuleArr;
    }

    @Override // com.texa.carelib.profile.Profile
    public Bundle getArguments() {
        return this.mArguments;
    }

    protected void loadAllInfo() {
        for (ProfileSubModule profileSubModule : getProfileModules()) {
            Log.v(TAG, "Loading info from: " + profileSubModule.getClass().getName());
            profileSubModule.loadInfo();
        }
    }

    @Override // com.texa.carelib.profile.Profile
    public ProfileListener addProfileListener(ProfileListener profileListener) {
        this.mProfileListeners.add(profileListener);
        return profileListener;
    }

    @Override // com.texa.carelib.profile.Profile
    public void removeProfileListener(ProfileListener profileListener) {
        this.mProfileListeners.remove(profileListener);
    }

    @Override // com.texa.carelib.profile.Profile
    public void addProfileModule(ProfileSubModule profileSubModule) {
        synchronized (this.mProfileSubModules) {
            if (!this.mProfileSubModules.contains(profileSubModule)) {
                CareLog.v(TAG, "Adding module: " + profileSubModule.getClass().getName(), new Object[0]);
                this.mProfileSubModules.add(profileSubModule);
                if (isReady()) {
                    profileSubModule.loadInfo();
                }
            } else {
                CareLog.w(TAG, "Skipping module: " + profileSubModule.getClass().getName() + ". Module is already attached.", new Object[0]);
            }
        }
    }

    @Override // com.texa.carelib.profile.Profile
    public void removeProfileModule(ProfileSubModule profileSubModule) {
        CareLog.v(TAG, "Removing module: " + profileSubModule.getClass().getName(), new Object[0]);
        synchronized (this.mProfileSubModules) {
            this.mProfileSubModules.remove(profileSubModule);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onCommunicationStatusChanged(PropertyChangeEvent propertyChangeEvent) {
        Communication communication = (Communication) propertyChangeEvent.getSource();
        CommunicationStatus communicationStatus = (CommunicationStatus) propertyChangeEvent.getNewValue();
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communicationStatus.ordinal()];
        if ((i == 1 || i == 2 || i == 3 || i == 4 || i == 5) && getServiceProxy() != null) {
            getServiceProxy().clear();
        }
        setReady(false);
        if (CommunicationStatus.CONNECTED == communicationStatus && getServiceProxy() != null) {
            getServiceProxy().clear();
        }
        for (ProfileSubModule profileSubModule : getProfileModules()) {
            if (profileSubModule != null) {
                try {
                    CareLog.v(TAG, "Forwarding source status %s to:%s.", communicationStatus, profileSubModule.getClass().getSimpleName());
                    profileSubModule.onCommunicationStatusChanged(new CommunicationStatusChangedEvent(this, communicationStatus, communication.getCurrentDevice()));
                } catch (Exception e) {
                    CareLog.e(TAG, e, "An exception has occurred in the listener.", new Object[0]);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.texa.carelib.profile.internal.ProfileBase$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$CommunicationStatus;

        static {
            int[] iArr = new int[CommunicationStatus.values().length];
            $SwitchMap$com$texa$carelib$communication$CommunicationStatus = iArr;
            try {
                iArr[CommunicationStatus.CONNECTION_LOST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NOT_SUPPORTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.DISCONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NO_MEDIUM_ACTIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.CONNECTED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    protected void fireAuthenticationError(DeviceInfo deviceInfo, CareError careError) {
        if (Utils.isEmpty(this.mProfileListeners)) {
            CareLog.v(TAG, "Subscribed listeners: %d", Integer.valueOf(this.mProfileListeners.size()));
            return;
        }
        AuthenticationErrorEvent authenticationErrorEvent = new AuthenticationErrorEvent(this, deviceInfo, careError);
        int size = this.mProfileListeners.size();
        ProfileListener[] profileListenerArr = new ProfileListener[size];
        this.mProfileListeners.toArray(profileListenerArr);
        for (int i = 0; i < size; i++) {
            profileListenerArr[i].onAuthenticationError(authenticationErrorEvent);
        }
    }

    @Override // com.texa.carelib.profile.Profile
    public ServiceProxy getServiceProxy() {
        return this.mServiceProxy;
    }

    @Override // com.texa.carelib.profile.Profile
    public void setServiceProxy(ServiceProxy serviceProxy) {
        this.mServiceProxy = serviceProxy;
    }

    @Override // com.texa.carelib.profile.Profile
    public ProfileDelegate getProfileDelegate() {
        ProfileDelegate profileDelegate = this.mProfileDelegate;
        if (profileDelegate != null) {
            return profileDelegate;
        }
        throw new IllegalStateException("ProfileDelegate has not be set.");
    }

    @Override // com.texa.carelib.profile.Profile
    public void setProfileDelegate(ProfileDelegate profileDelegate) {
        this.mProfileDelegate = profileDelegate;
    }

    @Override // com.texa.carelib.profile.Profile
    public boolean isReady() {
        return this.mReady;
    }

    protected void setReady(boolean z) {
        boolean z2 = this.mReady;
        this.mReady = z;
        firePropertyChange(new PropertyChangeEvent(this, Profile.PROPERTY_READY, Boolean.valueOf(z2), Boolean.valueOf(z)));
    }
}
