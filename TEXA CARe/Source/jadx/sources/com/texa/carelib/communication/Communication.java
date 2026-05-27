package com.texa.carelib.communication;

import android.os.Bundle;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.ObservableObject;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface Communication extends ObservableObject {
    public static final String EXTRA_AUTO_RECONNECT_ON_CONNECTION_LOST = "Communication#EXTRA_AUTO_RECONNECT_ON_CONNECTION_LOST";
    public static final String EXTRA_ENDLESS_CONNECTION = "Communication#EXTRA_ENDLESS_CONNECTION";
    public static final String EXTRA_IS_MASTER = "Communication#EXTRA_IS_MASTER";
    public static final String EXTRA_MAX_CONNECTION_INTERVAL = "Communication#EXTRA_MAX_CONNECTION_INTERVAL";
    public static final String EXTRA_USE_FALLBACK_SOCKET = "Communication#EXTRA_USE_FALLBACK_SOCKET";
    public static final String EXTRA_USE_SECURE_SOCKET = "Communication#EXTRA_USE_SECURE_SOCKET";
    public static final String PROPERTY_STATUS = "com.texa.carelib.communication.Communication#PROPERTY_STATUS";

    DeviceDiscoveryListener addDeviceDiscoveryListener(DeviceDiscoveryListener deviceDiscoveryListener);

    void connect(DeviceInfo deviceInfo) throws CareLibException;

    void disconnect() throws CareLibException;

    void forgetKnownDevices();

    Bundle getArguments();

    CommunicationDelegate getCommunicationDelegate();

    DeviceInfo getCurrentDevice();

    List<DeviceInfo> getDevices();

    List<DeviceInfo> getKnownDevices();

    Object getRemote();

    CommunicationStatus getStatus();

    boolean isConnected();

    void reconnect() throws CareLibException;

    void reconnectToDevices(List<DeviceInfo> list) throws CareLibException;

    void removeBond(String str) throws CareLibException;

    void removeDeviceDiscoveryListener(DeviceDiscoveryListener deviceDiscoveryListener);

    void setCommunicationDelegate(CommunicationDelegate communicationDelegate);

    void setDeviceFilter(DeviceFilter deviceFilter);

    void setKnownDeviceHistory(KnownDeviceHistory knownDeviceHistory);

    void shutdown() throws CareLibException;

    void startScan() throws CareLibException;

    void stop() throws CareLibException;

    void stopReconnect() throws CareLibException;

    void stopScan() throws CareLibException;
}
