package com.texa.carelib.communication.internal.serial;

import android.content.Context;
import com.texa.carelib.communication.KnownDeviceHistory;
import com.texa.carelib.communication.internal.SharedPreferenceKnownDeviceHistory;

/* JADX INFO: loaded from: classes2.dex */
public class BluetoothCommunicationBuilder {
    private Context mContext;
    private KnownDeviceHistory mKnownDeviceHistory;

    public BluetoothCommunicationBuilder(Context context) {
        this.mContext = context;
        this.mKnownDeviceHistory = new SharedPreferenceKnownDeviceHistory(this.mContext);
    }

    public BluetoothCommunicationBuilder setKnownDeviceHistory(KnownDeviceHistory knownDeviceHistory) {
        this.mKnownDeviceHistory = knownDeviceHistory;
        return this;
    }

    public BluetoothCommunication build() {
        return new BluetoothCommunication(this.mContext, this.mKnownDeviceHistory);
    }
}
