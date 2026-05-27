package com.texa.carelib.webservices;

import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleConfigurationInfoLoadedEvent extends ErrorEventBase {
    private final VehicleConfigurationStatus mVehicleConfigurationStatus;

    public VehicleConfigurationInfoLoadedEvent(Object obj, VehicleConfigurationStatus vehicleConfigurationStatus, CareError careError) {
        super(obj, careError);
        this.mVehicleConfigurationStatus = vehicleConfigurationStatus;
    }

    public VehicleConfigurationStatus getVehicleConfigurationStatus() {
        return this.mVehicleConfigurationStatus;
    }
}
