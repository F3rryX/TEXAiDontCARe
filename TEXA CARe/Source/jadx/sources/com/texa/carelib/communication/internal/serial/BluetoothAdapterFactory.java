package com.texa.carelib.communication.internal.serial;

import android.bluetooth.BluetoothAdapter;

/* JADX INFO: loaded from: classes2.dex */
public class BluetoothAdapterFactory {
    public static BluetoothAdapter create() {
        return BluetoothAdapter.getDefaultAdapter();
    }
}
