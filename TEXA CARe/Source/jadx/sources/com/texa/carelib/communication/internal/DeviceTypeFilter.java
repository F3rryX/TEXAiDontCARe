package com.texa.carelib.communication.internal;

import android.bluetooth.BluetoothDevice;
import android.os.Build;
import com.texa.carelib.core.logging.CareLog;

/* JADX INFO: loaded from: classes2.dex */
public final class DeviceTypeFilter implements BluetoothDeviceFilter {
    private static final String TAG = "DeviceTypeFilter";

    @Override // com.texa.carelib.communication.internal.BluetoothDeviceFilter
    public boolean matches(BluetoothDevice bluetoothDevice) {
        if (Build.VERSION.SDK_INT >= 18) {
            CareLog.v(TAG, "Device[Name=%s,MAC=%s,Type=%d]", bluetoothDevice.getName(), bluetoothDevice.getAddress(), Integer.valueOf(bluetoothDevice.getType()));
            if ((bluetoothDevice.getType() & 1) == 0) {
                return false;
            }
        }
        return true;
    }
}
