package com.texa.carelib.communication.internal;

import android.content.Context;
import com.texa.carelib.communication.DeviceFilter;

/* JADX INFO: loaded from: classes2.dex */
public interface DeviceScanner {
    DeviceScannerState getScanState();

    void setCallback(DeviceScannerCallback deviceScannerCallback);

    void setFilter(DeviceFilter deviceFilter);

    boolean startScan(Context context);

    boolean stopScan(Context context);
}
