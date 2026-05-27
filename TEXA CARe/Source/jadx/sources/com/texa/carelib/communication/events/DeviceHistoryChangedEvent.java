package com.texa.carelib.communication.events;

import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.core.events.EventBase;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceHistoryChangedEvent extends EventBase {
    private final List<DeviceInfo> mItems;

    public DeviceHistoryChangedEvent(Object obj, List<DeviceInfo> list) {
        super(obj);
        this.mItems = list;
    }

    public List<DeviceInfo> getItems() {
        return this.mItems;
    }
}
