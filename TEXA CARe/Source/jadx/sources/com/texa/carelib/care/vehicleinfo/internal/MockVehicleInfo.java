package com.texa.carelib.care.vehicleinfo.internal;

import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.profile.internal.MockProfile;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class MockVehicleInfo extends VehicleInfoBase {
    public static final int DELAY_DATA_UPDATED = 2000;
    public static final int READY_STATE_DELAY = 1000;
    public static final String TAG = "MockVehicleInfo";
    public static final String VEHICLE_ID = "WF6AXXGCASRY00667";
    private static final ScheduledExecutorService mExecutor = Executors.newSingleThreadScheduledExecutor();
    private final FeatureVerifier mFeatureVerifier;
    private boolean mIsDataAvailable = false;
    private final MockProfile mProfile;

    public MockVehicleInfo(Profile profile, FeatureVerifier featureVerifier) {
        this.mProfile = (MockProfile) profile;
        this.mFeatureVerifier = featureVerifier;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public MockProfile getProfile() {
        return this.mProfile;
    }

    @Override // com.texa.carelib.care.vehicleinfo.internal.VehicleInfoBase, com.texa.carelib.care.vehicleinfo.VehicleInfo
    public String getVehicleID() {
        if (this.mIsDataAvailable) {
            return "WF6AXXGCASRY00667";
        }
        return null;
    }

    public boolean loadVehicleInfo() {
        if (!this.mFeatureVerifier.isVehicleInfoAvailable()) {
            return false;
        }
        Thread thread = new Thread(new Runnable() { // from class: com.texa.carelib.care.vehicleinfo.internal.MockVehicleInfo$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m730xa7bd8ff0();
            }
        }, TAG + "_LoadVehicleInfo");
        thread.setPriority(1);
        thread.start();
        return true;
    }

    /* JADX INFO: renamed from: lambda$loadVehicleInfo$0$com-texa-carelib-care-vehicleinfo-internal-MockVehicleInfo, reason: not valid java name */
    public /* synthetic */ void m730xa7bd8ff0() {
        try {
            Thread.sleep(2000L);
        } catch (InterruptedException e) {
            CareLog.e(TAG, e, "Wait has failed.", new Object[0]);
        }
        setVehicleID("WF6AXXGCASRY00667");
    }

    @Override // com.texa.carelib.care.vehicleinfo.internal.VehicleInfoBase, com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        if (CommunicationStatus.CONNECTED == communicationStatusChangedEvent.getCommunicationStatus()) {
            mExecutor.schedule(new Callable() { // from class: com.texa.carelib.care.vehicleinfo.internal.MockVehicleInfo$$ExternalSyntheticLambda1
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f$0.m731x4040641e();
                }
            }, 1000L, TimeUnit.MILLISECONDS);
        } else {
            this.mIsDataAvailable = false;
        }
    }

    /* JADX INFO: renamed from: lambda$onCommunicationStatusChanged$1$com-texa-carelib-care-vehicleinfo-internal-MockVehicleInfo, reason: not valid java name */
    public /* synthetic */ Boolean m731x4040641e() throws Exception {
        this.mIsDataAvailable = true;
        return true;
    }
}
