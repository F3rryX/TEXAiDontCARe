package com.texa.carelib.communication.internal;

import android.content.Context;
import com.texa.carelib.communication.DeviceInfo;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface DeviceReconnectionService {
    boolean isReconnecting();

    boolean reconnectToDevices(Context context, List<DeviceInfo> list);

    void setCallback(DeviceReconnectionServiceCallback deviceReconnectionServiceCallback);

    boolean stopReconnection(Context context);
}
