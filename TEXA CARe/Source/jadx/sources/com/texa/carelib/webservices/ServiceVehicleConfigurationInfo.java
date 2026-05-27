package com.texa.carelib.webservices;

import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.ObservableObject;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public interface ServiceVehicleConfigurationInfo extends ObservableObject {
    public static final String PROPERTY_STATUS = "com.texa.carelib.webservices.ServiceVehicleConfigurationInfo#PROPERTY_STATUS";
    public static final String PROPERTY_VEHICLE_CONFIGURATION_STATUS = "com.texa.carelib.webservices.ServiceVehicleConfigurationInfo#PROPERTY_VEHICLE_CONFIGURATION_STATUS";

    ServiceVehicleConfigurationInfoStatus getStatus();

    VehicleConfigurationStatus getVehicleConfigurationStatus();

    void loadVehicleConfigurationInfo(String str, String str2, BigInteger bigInteger, Callback<VehicleConfigurationInfoLoadedEvent> callback) throws CareLibException;
}
