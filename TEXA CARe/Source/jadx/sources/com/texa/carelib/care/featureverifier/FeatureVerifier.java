package com.texa.carelib.care.featureverifier;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public interface FeatureVerifier {
    public static final int FEATURE_ATTITUDE = 7;
    public static final int FEATURE_BATTERY_ANALYZER = 9;
    public static final int FEATURE_DIAGNOSTIC_PARAMETERS = 0;
    public static final int FEATURE_DTC = 1;
    public static final int FEATURE_IMPACTS = 4;
    public static final int FEATURE_LOG = 6;
    public static final int FEATURE_PDU = 10;
    public static final int FEATURE_REBOOT_DEVICE = 2;
    public static final int FEATURE_SIMULATE_IMPACT = 8;
    public static final int FEATURE_TRIP_DATA_RECORDER = 11;
    public static final int FEATURE_TRIP_MANAGEMENT = 3;
    public static final int FEATURE_VEHICLE_ACCELERATIONS = 5;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Feature {
    }

    boolean canChangeLedBehaviour();

    boolean canDeleteConfiguration();

    boolean canEraseTripDataLog();

    boolean canLoadImpacts();

    boolean canReadLogBook();

    boolean canReadTripDataLog();

    boolean canRebootToMainApp();

    boolean canRebootToServiceApp();

    boolean canResetDevice();

    boolean hasFeature(int i);

    boolean isAuthenticated();

    boolean isCallPDUAvailable();

    boolean isConnected();

    boolean isCurrentTripAvailable();

    boolean isDTCReadingAvailable();

    boolean isMainAppUpgradable();

    boolean isParametersAvailable();

    boolean isParametersPollingAvailable();

    boolean isParametersSubscriptionAvailable();

    boolean isReady();

    boolean isServiceAppUpgradable();

    boolean isVehicleConfigurationNeeded();

    boolean isVehicleConfigurationUpgradable();

    boolean isVehicleInfoAvailable();
}
