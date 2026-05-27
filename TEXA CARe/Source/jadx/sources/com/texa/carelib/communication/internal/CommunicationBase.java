package com.texa.carelib.communication.internal;

import android.os.Bundle;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationDelegate;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.DeviceDiscoveryListener;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.communication.events.DeviceBondStateChangedEvent;
import com.texa.carelib.communication.events.DeviceFoundEvent;
import com.texa.carelib.communication.events.DeviceNameChangedEvent;
import com.texa.carelib.core.ObservableObjectBase;
import com.texa.carelib.core.utils.ReentrantLockWrapper;
import com.texa.carelib.core.utils.internal.Utils;
import java.beans.PropertyChangeEvent;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CommunicationBase extends ObservableObjectBase implements Communication {
    private static final boolean AUTO_RECONNECT_ON_CONNECTION_LOST = true;
    public static final String TAG = "CommunicationBase";
    private final Bundle mArguments;
    private CommunicationDelegate mCommunicationDelegate;
    private DeviceInfo mCurrentDevice;
    private final List<DeviceDiscoveryListener> mDeviceDiscoveryListeners;
    private final ReentrantLockWrapper mDeviceDiscoveryListenersLock;
    private CommunicationStatus mStatus;
    private final ReentrantLockWrapper mStatusLock;

    @Override // com.texa.carelib.communication.Communication
    public CommunicationDelegate getCommunicationDelegate() {
        return this.mCommunicationDelegate;
    }

    @Override // com.texa.carelib.communication.Communication
    public void setCommunicationDelegate(CommunicationDelegate communicationDelegate) {
        this.mCommunicationDelegate = communicationDelegate;
    }

    @Override // com.texa.carelib.communication.Communication
    public Bundle getArguments() {
        return this.mArguments;
    }

    @Override // com.texa.carelib.communication.Communication
    public CommunicationStatus getStatus() {
        this.mStatusLock.lock("getStatus");
        try {
            return this.mStatus;
        } finally {
            this.mStatusLock.unlock("getStatus");
        }
    }

    protected void setStatus(CommunicationStatus communicationStatus) {
        try {
            this.mStatusLock.lock("setStatus");
            CommunicationStatus communicationStatus2 = this.mStatus;
            this.mStatus = communicationStatus;
            firePropertyChange(new PropertyChangeEvent(this, Communication.PROPERTY_STATUS, communicationStatus2, communicationStatus));
        } finally {
            this.mStatusLock.unlock("setStatus");
        }
    }

    protected boolean isAutoReconnectOnCommunicationLostEnabled() {
        return this.mArguments.getBoolean(Communication.EXTRA_AUTO_RECONNECT_ON_CONNECTION_LOST, true);
    }

    @Override // com.texa.carelib.communication.Communication
    public DeviceInfo getCurrentDevice() {
        return this.mCurrentDevice;
    }

    public CommunicationBase setCurrentDevice(DeviceInfo deviceInfo) {
        this.mCurrentDevice = deviceInfo;
        return this;
    }

    protected CommunicationBase() {
        String str = TAG;
        ReentrantLockWrapper reentrantLockWrapper = new ReentrantLockWrapper(str, "mDeviceDiscoveryListenersLock");
        this.mDeviceDiscoveryListenersLock = reentrantLockWrapper;
        ReentrantLockWrapper reentrantLockWrapper2 = new ReentrantLockWrapper(str, "mStatusLock");
        this.mStatusLock = reentrantLockWrapper2;
        this.mCurrentDevice = null;
        this.mArguments = new Bundle();
        reentrantLockWrapper2.lock("CommunicationBase()");
        try {
            this.mStatus = CommunicationStatus.IDLE;
            reentrantLockWrapper2.unlock("CommunicationBase()");
            reentrantLockWrapper.lock("CommunicationBase()");
            try {
                this.mDeviceDiscoveryListeners = new ArrayList();
                reentrantLockWrapper.unlock("CommunicationBase()");
            } catch (Throwable th) {
                this.mDeviceDiscoveryListenersLock.unlock("CommunicationBase()");
                throw th;
            }
        } catch (Throwable th2) {
            this.mStatusLock.unlock("CommunicationBase()");
            throw th2;
        }
    }

    @Override // com.texa.carelib.communication.Communication
    public DeviceDiscoveryListener addDeviceDiscoveryListener(DeviceDiscoveryListener deviceDiscoveryListener) {
        this.mDeviceDiscoveryListenersLock.lock("addDeviceDiscoveryListener");
        try {
            this.mDeviceDiscoveryListeners.add(deviceDiscoveryListener);
            return deviceDiscoveryListener;
        } finally {
            this.mDeviceDiscoveryListenersLock.unlock("addDeviceDiscoveryListener");
        }
    }

    @Override // com.texa.carelib.communication.Communication
    public void removeDeviceDiscoveryListener(DeviceDiscoveryListener deviceDiscoveryListener) {
        this.mDeviceDiscoveryListenersLock.lock("removeDeviceDiscoveryListener");
        try {
            this.mDeviceDiscoveryListeners.remove(deviceDiscoveryListener);
        } finally {
            this.mDeviceDiscoveryListenersLock.unlock("removeDeviceDiscoveryListener");
        }
    }

    protected void fireDeviceFound(DeviceInfo deviceInfo) {
        if (Utils.isEmpty(this.mDeviceDiscoveryListeners)) {
            return;
        }
        DeviceFoundEvent deviceFoundEvent = new DeviceFoundEvent(this, deviceInfo);
        this.mDeviceDiscoveryListenersLock.lock("fireDeviceFound");
        try {
            int size = this.mDeviceDiscoveryListeners.size();
            DeviceDiscoveryListener[] deviceDiscoveryListenerArr = new DeviceDiscoveryListener[size];
            this.mDeviceDiscoveryListeners.toArray(deviceDiscoveryListenerArr);
            this.mDeviceDiscoveryListenersLock.unlock("fireDeviceFound");
            for (int i = 0; i < size; i++) {
                DeviceDiscoveryListener deviceDiscoveryListener = deviceDiscoveryListenerArr[i];
                if (deviceDiscoveryListener != null) {
                    deviceDiscoveryListener.onDeviceFound(deviceFoundEvent);
                }
            }
        } catch (Throwable th) {
            this.mDeviceDiscoveryListenersLock.unlock("fireDeviceFound");
            throw th;
        }
    }

    protected void fireDeviceBondStateChanged(DeviceInfo deviceInfo) {
        if (Utils.isEmpty(this.mDeviceDiscoveryListeners)) {
            return;
        }
        DeviceBondStateChangedEvent deviceBondStateChangedEvent = new DeviceBondStateChangedEvent(this, deviceInfo);
        this.mDeviceDiscoveryListenersLock.lock("fireDeviceBondStateChanged");
        try {
            int size = this.mDeviceDiscoveryListeners.size();
            DeviceDiscoveryListener[] deviceDiscoveryListenerArr = new DeviceDiscoveryListener[size];
            this.mDeviceDiscoveryListeners.toArray(deviceDiscoveryListenerArr);
            this.mDeviceDiscoveryListenersLock.unlock("fireDeviceBondStateChanged");
            for (int i = 0; i < size; i++) {
                DeviceDiscoveryListener deviceDiscoveryListener = deviceDiscoveryListenerArr[i];
                if (deviceDiscoveryListener != null) {
                    deviceDiscoveryListener.onDeviceBondStateChanged(deviceBondStateChangedEvent);
                }
            }
        } catch (Throwable th) {
            this.mDeviceDiscoveryListenersLock.unlock("fireDeviceBondStateChanged");
            throw th;
        }
    }

    protected void fireDeviceNameChanged(DeviceInfo deviceInfo) {
        if (Utils.isEmpty(this.mDeviceDiscoveryListeners)) {
            return;
        }
        DeviceNameChangedEvent deviceNameChangedEvent = new DeviceNameChangedEvent(this, deviceInfo);
        this.mDeviceDiscoveryListenersLock.lock("fireDeviceNameChanged");
        try {
            int size = this.mDeviceDiscoveryListeners.size();
            DeviceDiscoveryListener[] deviceDiscoveryListenerArr = new DeviceDiscoveryListener[size];
            this.mDeviceDiscoveryListeners.toArray(deviceDiscoveryListenerArr);
            this.mDeviceDiscoveryListenersLock.unlock("fireDeviceNameChanged");
            for (int i = 0; i < size; i++) {
                DeviceDiscoveryListener deviceDiscoveryListener = deviceDiscoveryListenerArr[i];
                if (deviceDiscoveryListener != null) {
                    deviceDiscoveryListener.onDeviceNameChanged(deviceNameChangedEvent);
                }
            }
        } catch (Throwable th) {
            this.mDeviceDiscoveryListenersLock.unlock("fireDeviceNameChanged");
            throw th;
        }
    }
}
