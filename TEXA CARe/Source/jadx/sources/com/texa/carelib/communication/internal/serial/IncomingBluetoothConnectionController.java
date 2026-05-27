package com.texa.carelib.communication.internal.serial;

import android.bluetooth.BluetoothSocket;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.core.logging.CareLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
class IncomingBluetoothConnectionController {
    private static final int ACCEPT_CONNECTION_DELAY = 5000;
    public static final int DEFAULT_CONNECTION_PRIORITY = Integer.MIN_VALUE;
    public static final String TAG = "IncomingBluetoothConnectionController";
    private static final ScheduledExecutorService mScheduledExecutorService = Executors.newSingleThreadScheduledExecutor();
    private Runnable mAcceptConnectionRunnable;
    private int mCurrentConnectionPriority;
    private List<DeviceInfo> mDevices;
    private ConnectionAcceptedListener mListener;
    private ScheduledFuture mScheduledFuture;

    interface ConnectionAcceptedListener {
        void onConnectionAccepted(BluetoothConnectionAcceptedEvent bluetoothConnectionAcceptedEvent);
    }

    public void setConnectionAcceptedListener(ConnectionAcceptedListener connectionAcceptedListener) {
        this.mListener = connectionAcceptedListener;
    }

    public IncomingBluetoothConnectionController() {
        this.mCurrentConnectionPriority = Integer.MIN_VALUE;
        this.mDevices = new ArrayList();
    }

    public IncomingBluetoothConnectionController(List<DeviceInfo> list) {
        this();
        this.mDevices = list;
    }

    private DeviceInfo getRemoteDeviceInfo(BluetoothSocket bluetoothSocket) {
        if (bluetoothSocket.getRemoteDevice() == null) {
            return null;
        }
        return new DeviceInfo(bluetoothSocket.getRemoteDevice());
    }

    private boolean isFirstIncomingConnection() {
        return this.mAcceptConnectionRunnable == null;
    }

    public void handleConnection(BluetoothSocket bluetoothSocket) {
        DeviceInfo remoteDeviceInfo = getRemoteDeviceInfo(bluetoothSocket);
        if (remoteDeviceInfo == null) {
            CareLog.e(TAG, "Remote device is null! Cannot evaluate device priority. Aborting connection request.", new Object[0]);
            return;
        }
        String str = TAG;
        CareLog.v(str, "Received connection from device: %s", remoteDeviceInfo);
        int connectionPriority = getConnectionPriority(remoteDeviceInfo);
        CareLog.v(str, "Current connection priority: %d, Device %s connection priority: %d", Integer.valueOf(this.mCurrentConnectionPriority), remoteDeviceInfo.getName(), Integer.valueOf(connectionPriority));
        if (isFirstIncomingConnection() || connectionPriority > this.mCurrentConnectionPriority) {
            acceptConnection(bluetoothSocket, connectionPriority);
        }
    }

    private void acceptConnection(BluetoothSocket bluetoothSocket, int i) {
        String str = TAG;
        CareLog.v(str, "Setting current connection priority to: %d", Integer.valueOf(i));
        this.mCurrentConnectionPriority = i;
        CareLog.v(str, "Removing older connection handler with lower priority.", new Object[0]);
        ScheduledFuture scheduledFuture = this.mScheduledFuture;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        CareLog.v(str, "Waiting for connection callback...", new Object[0]);
        AcceptConnectionRunnable acceptConnectionRunnable = new AcceptConnectionRunnable(bluetoothSocket);
        this.mAcceptConnectionRunnable = acceptConnectionRunnable;
        this.mScheduledFuture = mScheduledExecutorService.schedule(acceptConnectionRunnable, 5000L, TimeUnit.MILLISECONDS);
    }

    public void cancelPendingConnection() {
        CareLog.v(TAG, "Cancel pending connection...", new Object[0]);
        ScheduledFuture scheduledFuture = this.mScheduledFuture;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.mScheduledFuture.cancel(true);
            this.mScheduledFuture = null;
        }
        this.mAcceptConnectionRunnable = null;
    }

    private int getConnectionPriority(DeviceInfo deviceInfo) {
        return indexOf(deviceInfo);
    }

    private int indexOf(DeviceInfo deviceInfo) {
        Iterator<DeviceInfo> it = this.mDevices.iterator();
        int i = -1;
        while (it.hasNext()) {
            i++;
            if (it.next().getAddress().equals(deviceInfo.getAddress())) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fireConnectionAccepted(BluetoothSocket bluetoothSocket) {
        if (this.mListener != null) {
            CareLog.v(TAG, "Firing connection accepted....", new Object[0]);
            this.mListener.onConnectionAccepted(new BluetoothConnectionAcceptedEvent(bluetoothSocket));
        } else {
            CareLog.w(TAG, "Connection accepted but the listener is NULL!!!", new Object[0]);
        }
    }

    public void reset() {
        cancelPendingConnection();
        this.mCurrentConnectionPriority = Integer.MIN_VALUE;
    }

    private class AcceptConnectionRunnable implements Runnable {
        private final BluetoothSocket mSocket;

        public AcceptConnectionRunnable(BluetoothSocket bluetoothSocket) {
            this.mSocket = bluetoothSocket;
        }

        @Override // java.lang.Runnable
        public void run() {
            IncomingBluetoothConnectionController.this.fireConnectionAccepted(this.mSocket);
        }
    }

    class BluetoothConnectionAcceptedEvent {
        private final BluetoothSocket mSocket;

        public BluetoothSocket getSocket() {
            return this.mSocket;
        }

        BluetoothConnectionAcceptedEvent(BluetoothSocket bluetoothSocket) {
            this.mSocket = bluetoothSocket;
        }
    }
}
