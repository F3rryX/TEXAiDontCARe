package com.texa.carelib.communication.internal;

import android.bluetooth.BluetoothDevice;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DeviceScannerCallback {
    public void onDeviceFound(BluetoothDevice bluetoothDevice, Integer num) {
    }

    public void onDeviceNameChanged(BluetoothDevice bluetoothDevice) {
    }

    public void onScanFailed() {
    }

    public void onScanFinished() {
    }

    public void onScanStarted() {
    }
}
