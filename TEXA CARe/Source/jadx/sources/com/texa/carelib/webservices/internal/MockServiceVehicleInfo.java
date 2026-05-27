package com.texa.carelib.webservices.internal;

import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.OperationAlreadyRunningException;
import com.texa.carelib.webservices.SelectionItem;
import com.texa.carelib.webservices.ServiceVehicleInfoStatus;
import com.texa.carelib.webservices.VehicleInfo;
import com.texa.carelib.webservices.VehicleInfoLoadedEvent;
import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
class MockServiceVehicleInfo extends ServiceVehicleInfoBase {
    private static final int DELAY_RESPONSE = 1000;
    private static final String KEY_BRAND = "brand";
    private static final String KEY_ENGINE = "engine";
    private static final String KEY_MODEL = "model";
    private static final String KEY_VEHICLE_CODE = "vehicle_code";
    private static final String MOCK_BRAND = "ALFA ROMEO";
    private static final String MOCK_ENGINE = "2.0 16v JTDm";
    private static final String MOCK_MODEL = "Giulietta [10>] (940)";
    private static final String MOCK_PLATE = "D3M0003";
    private static final String MOCK_VEHICLE_CODE = "940 B 4.000 (Kw 129) [--/14>]";
    private static final String MOCK_VEHICLE_ID = "2BEDC652-4AAC-4A2E-8FBC-3D02CDC6AA91";
    private static final ScheduledExecutorService mExecutor = Executors.newSingleThreadScheduledExecutor();

    @Override // com.texa.carelib.webservices.ServiceVehicleInfo
    public void loadVehicleInfo(final String[] strArr, Locale[] localeArr, final Callback<VehicleInfoLoadedEvent> callback) throws CareLibException {
        if (ServiceVehicleInfoStatus.Pending == getStatus()) {
            throw new OperationAlreadyRunningException("Load vehicle info is already running.");
        }
        if (strArr.length == 0) {
            throw new CareLibException("Could not getItems vehicles info. Hardware IDs list cannot be null or empty.");
        }
        clear();
        mExecutor.schedule(new Runnable() { // from class: com.texa.carelib.webservices.internal.MockServiceVehicleInfo$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m789x59e73d45(strArr, callback);
            }
        }, 1000L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: lambda$loadVehicleInfo$0$com-texa-carelib-webservices-internal-MockServiceVehicleInfo, reason: not valid java name */
    public /* synthetic */ void m789x59e73d45(String[] strArr, Callback callback) {
        HashMap map = new HashMap();
        for (String str : strArr) {
            VehicleInfo vehicleInfo = new VehicleInfo();
            vehicleInfo.setHardwareID(str);
            vehicleInfo.setPlate(MOCK_PLATE);
            vehicleInfo.setVehicleID(MOCK_VEHICLE_ID);
            HashMap map2 = new HashMap();
            map2.put(KEY_BRAND, new SelectionItem(0, MOCK_BRAND));
            map2.put(KEY_MODEL, new SelectionItem(1, MOCK_MODEL));
            map2.put(KEY_ENGINE, new SelectionItem(2, MOCK_ENGINE));
            map2.put(KEY_VEHICLE_CODE, new SelectionItem(3, MOCK_VEHICLE_CODE));
            vehicleInfo.setVehicleSelection(map2);
            map.put(vehicleInfo.getHardwareID(), vehicleInfo);
        }
        setVehicles(map);
        callback.onCompleted(new VehicleInfoLoadedEvent(this, getVehicles(), null));
    }
}
