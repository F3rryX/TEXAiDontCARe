package com.texa.carelib.communication.internal;

import android.bluetooth.BluetoothSocket;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DeviceReconnectionServiceCallback {
    public void onReconnectionFails(Throwable th) {
    }

    public void onReconnectionStart() {
    }

    public void onReconnectionStop() {
    }

    public void onSocketReady(BluetoothSocket bluetoothSocket) {
    }
}
