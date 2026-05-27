package com.texa.carelib.communication.internal;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes2.dex */
public class BluetoothAdapterSupport {
    private static final SparseArray<String> mBluetoothAdapterWrapperStates;

    static {
        SparseArray<String> sparseArray = new SparseArray<>();
        mBluetoothAdapterWrapperStates = sparseArray;
        sparseArray.put(2, "STATE_CONNECTED");
        sparseArray.put(1, "STATE_CONNECTING");
        sparseArray.put(0, "STATE_DISCONNECTED");
        sparseArray.put(3, "STATE_DISCONNECTING");
        sparseArray.put(10, "STATE_OFF");
        sparseArray.put(12, "STATE_ON");
        sparseArray.put(13, "STATE_TURNING_OFF");
        sparseArray.put(11, "STATE_TURNING_ON");
    }

    public static String getStateName(int i) {
        return mBluetoothAdapterWrapperStates.get(i, "STATE_UNKNOWN");
    }
}
