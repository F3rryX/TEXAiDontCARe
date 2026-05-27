package com.texa.carelib.webservices;

import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.ObservableObject;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface ServiceVehicleInfo extends ObservableObject {
    public static final String PROPERTY_STATUS = "com.texa.carelib.webservices.ServiceVehicleInfo#PROPERTY_STATUS";
    public static final String PROPERTY_VEHICLES = "com.texa.carelib.webservices.ServiceVehicleInfo#PROPERTY_VEHICLES";

    ServiceVehicleInfoStatus getStatus();

    Map<String, VehicleInfo> getVehicles();

    void loadVehicleInfo(String[] strArr, Locale[] localeArr, Callback<VehicleInfoLoadedEvent> callback) throws CareLibException;
}
