package com.texa.carelib.webservices;

import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleInfoLoadedEvent extends ErrorEventBase {
    private final Map<String, VehicleInfo> mVehicles;

    public VehicleInfoLoadedEvent(Object obj, Map<String, VehicleInfo> map, CareError careError) {
        super(obj, careError);
        this.mVehicles = map;
    }

    public Map<String, VehicleInfo> getVehicles() {
        return this.mVehicles;
    }
}
