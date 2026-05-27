package com.texa.careapp.utils.broadcastreceiver;

import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
public class ProximityIntentReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        boolean booleanExtra = intent.getBooleanExtra("entering", false);
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (!booleanExtra || defaultAdapter.isEnabled()) {
            return;
        }
        defaultAdapter.enable();
    }
}
