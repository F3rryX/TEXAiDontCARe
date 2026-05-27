package com.texa.carelib.communication.internal;

import android.bluetooth.BluetoothDevice;
import android.os.Build;

/* JADX INFO: loaded from: classes2.dex */
public class BluetoothDeviceCompat {
    public static int getDeviceType(BluetoothDevice bluetoothDevice) {
        if (Build.VERSION.SDK_INT < 18) {
            return 0;
        }
        return bluetoothDevice.getType();
    }
}
