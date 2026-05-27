package com.texa.carelib.webservices.internal;

import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.webservices.VehicleConfigurationInfoLoadedEvent;
import com.texa.carelib.webservices.VehicleConfigurationStatus;
import java.math.BigInteger;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
class MockServiceVehicleConfigurationInfo extends ServiceVehicleConfigurationInfoBase {
    private static final int DELAY_RESPONSE = 1000;
    private static final ScheduledExecutorService mExecutor = Executors.newSingleThreadScheduledExecutor();

    @Override // com.texa.carelib.webservices.ServiceVehicleConfigurationInfo
    public void loadVehicleConfigurationInfo(String str, String str2, BigInteger bigInteger, final Callback<VehicleConfigurationInfoLoadedEvent> callback) throws CareLibException {
        ensureCanLoadVehicleConfigurationInfo(str, bigInteger);
        clear();
        mExecutor.schedule(new Runnable() { // from class: com.texa.carelib.webservices.internal.MockServiceVehicleConfigurationInfo$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m786x6195ef1(callback);
            }
        }, 1000L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: lambda$loadVehicleConfigurationInfo$0$com-texa-carelib-webservices-internal-MockServiceVehicleConfigurationInfo, reason: not valid java name */
    public /* synthetic */ void m786x6195ef1(Callback callback) {
        setVehicleConfigurationStatus(VehicleConfigurationStatus.NeedsUpdated);
        callback.onCompleted(new VehicleConfigurationInfoLoadedEvent(this, VehicleConfigurationStatus.NeedsUpdated, null));
    }
}
