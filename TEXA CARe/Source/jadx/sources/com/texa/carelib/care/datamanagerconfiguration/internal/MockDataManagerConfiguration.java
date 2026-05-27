package com.texa.carelib.care.datamanagerconfiguration.internal;

import com.texa.carelib.care.datamanagerconfiguration.LedBehaviour;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.DongleNotConnectedException;
import com.texa.carelib.core.OperationAlreadyRunningException;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class MockDataManagerConfiguration extends DataManagerConfigurationBase {
    private static final int DELAY = 200;
    private boolean mIsConfigurationLoading;
    private final Profile mProfile;
    private static final Float DEFAULT_ACCELERATION_THRESHOLD = Float.valueOf(0.2f);
    private static final Float DEFAULT_BRAKE_THRESHOLD = Float.valueOf(0.3f);
    private static final UUID DEFAULT_DRIVER_ID = UUID.randomUUID();
    private static final Float DEFAULT_ODOMETER = Float.valueOf(178956.4f);
    private static final Integer DEFAULT_RPM_THRESHOLD = 800;
    private static final Integer DEFAULT_TEMPERATURE_THRESHOLD = 90;
    private static final Integer DEFAULT_TIMEZONE_OFFSET = 0;
    private static final Boolean DEFAULT_SOS_ENABLED = true;
    private static final ScheduledExecutorService mExecutor = Executors.newSingleThreadScheduledExecutor();

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase
    public /* bridge */ /* synthetic */ void _setLedBehaviour(LedBehaviour ledBehaviour) {
        super._setLedBehaviour(ledBehaviour);
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Integer getAccelerationMaxRange() {
        return super.getAccelerationMaxRange();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Float getAccelerationThreshold() {
        return super.getAccelerationThreshold();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Float getBrakeThreshold() {
        return super.getBrakeThreshold();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ UUID getDriverID() {
        return super.getDriverID();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Integer getDrivingTimeLowRPMMaxThreshold() {
        return super.getDrivingTimeLowRPMMaxThreshold();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Integer getDrivingTimeLowRPMMinThreshold() {
        return super.getDrivingTimeLowRPMMinThreshold();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ LedBehaviour getLedBehaviour() {
        return super.getLedBehaviour();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Integer getRPMThreshold() {
        return super.getRPMThreshold();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Float getStartingOdometer() {
        return super.getStartingOdometer();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Integer getTemperatureThreshold() {
        return super.getTemperatureThreshold();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Integer getTimeZoneOffset() {
        return super.getTimeZoneOffset();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Long getTripNumberDevice() {
        return super.getTripNumberDevice();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Integer getTripNumberVehicle() {
        return super.getTripNumberVehicle();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Boolean isSOSEnabled() {
        return super.isSOSEnabled();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Boolean isSOSEnabledLowPowerMode() {
        return super.isSOSEnabledLowPowerMode();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.profile.ProfileSubModule
    public /* bridge */ /* synthetic */ void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        super.onCommunicationStatusChanged(communicationStatusChangedEvent);
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase
    public /* bridge */ /* synthetic */ void setTimeZoneOffset(Integer num) {
        super.setTimeZoneOffset(num);
    }

    public MockDataManagerConfiguration(Profile profile, FeatureVerifier featureVerifier) {
        super(featureVerifier);
        this.mProfile = profile;
        this.mIsConfigurationLoading = false;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public Profile getProfile() {
        return this.mProfile;
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void loadConfigurationValues() throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (this.mIsConfigurationLoading) {
            throw new OperationAlreadyRunningException();
        }
        this.mIsConfigurationLoading = true;
        mExecutor.schedule(new Runnable() { // from class: com.texa.carelib.care.datamanagerconfiguration.internal.MockDataManagerConfiguration$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m681x75e93672();
            }
        }, 200L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: lambda$loadConfigurationValues$0$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration, reason: not valid java name */
    public /* synthetic */ void m681x75e93672() {
        super.setAccelerationThreshold(DEFAULT_ACCELERATION_THRESHOLD);
        super.setBrakeThreshold(DEFAULT_BRAKE_THRESHOLD);
        super._setDriverID(DEFAULT_DRIVER_ID);
        super.setStartingOdometer(DEFAULT_ODOMETER);
        super.setRPMThreshold(DEFAULT_RPM_THRESHOLD);
        super.setTemperatureThreshold(DEFAULT_TEMPERATURE_THRESHOLD);
        super.setTimeZoneOffset(DEFAULT_TIMEZONE_OFFSET);
        super.setSOSEnabled(DEFAULT_SOS_ENABLED);
        this.mIsConfigurationLoading = false;
    }

    /* JADX INFO: renamed from: lambda$setAccelerationThreshold$1$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration, reason: not valid java name */
    public /* synthetic */ void m683xa57ab840(float f) {
        super.setAccelerationThreshold(Float.valueOf(f));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setAccelerationThreshold(final float f) {
        mExecutor.schedule(new Runnable() { // from class: com.texa.carelib.care.datamanagerconfiguration.internal.MockDataManagerConfiguration$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m683xa57ab840(f);
            }
        }, 200L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: lambda$setBrakeThreshold$2$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration, reason: not valid java name */
    public /* synthetic */ void m684x4870d7e0(float f) {
        super.setBrakeThreshold(Float.valueOf(f));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setBrakeThreshold(final float f) {
        mExecutor.schedule(new Runnable() { // from class: com.texa.carelib.care.datamanagerconfiguration.internal.MockDataManagerConfiguration$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m684x4870d7e0(f);
            }
        }, 200L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: lambda$setRPMThreshold$3$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration, reason: not valid java name */
    public /* synthetic */ void m689x473c5803(int i) {
        super.setRPMThreshold(Integer.valueOf(i));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setRPMThreshold(final int i) {
        mExecutor.schedule(new Runnable() { // from class: com.texa.carelib.care.datamanagerconfiguration.internal.MockDataManagerConfiguration$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m689x473c5803(i);
            }
        }, 200L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: lambda$setTemperatureThreshold$4$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration, reason: not valid java name */
    public /* synthetic */ void m693x10f8c327(int i) {
        super.setTemperatureThreshold(Integer.valueOf(i));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setTemperatureThreshold(final int i) {
        mExecutor.schedule(new Runnable() { // from class: com.texa.carelib.care.datamanagerconfiguration.internal.MockDataManagerConfiguration$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m693x10f8c327(i);
            }
        }, 200L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: lambda$setStartingOdometer$5$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration, reason: not valid java name */
    public /* synthetic */ void m692xce9f7aae(float f) {
        super.setStartingOdometer(Float.valueOf(f));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setStartingOdometer(final float f) {
        mExecutor.schedule(new Runnable() { // from class: com.texa.carelib.care.datamanagerconfiguration.internal.MockDataManagerConfiguration$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m692xce9f7aae(f);
            }
        }, 200L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: lambda$setDriverID$6$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration, reason: not valid java name */
    public /* synthetic */ void m685x8b62a979(UUID uuid) {
        super._setDriverID(uuid);
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setDriverID(final UUID uuid) {
        mExecutor.schedule(new Runnable() { // from class: com.texa.carelib.care.datamanagerconfiguration.internal.MockDataManagerConfiguration$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m685x8b62a979(uuid);
            }
        }, 200L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: lambda$setTimeZoneOffset$7$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration, reason: not valid java name */
    public /* synthetic */ void m694x9dfc6aef(int i) {
        super.setTimeZoneOffset(Integer.valueOf(i));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setTimeZoneOffset(final int i) {
        mExecutor.schedule(new Runnable() { // from class: com.texa.carelib.care.datamanagerconfiguration.internal.MockDataManagerConfiguration$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m694x9dfc6aef(i);
            }
        }, 200L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: lambda$setSOSEnabled$8$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration, reason: not valid java name */
    public /* synthetic */ void m690xae6b35b0(boolean z) {
        super.setSOSEnabled(Boolean.valueOf(z));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setSOSEnabled(final boolean z) {
        mExecutor.schedule(new Runnable() { // from class: com.texa.carelib.care.datamanagerconfiguration.internal.MockDataManagerConfiguration$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m690xae6b35b0(z);
            }
        }, 200L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: lambda$setSOSEnabledLowPowerMode$9$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration, reason: not valid java name */
    public /* synthetic */ void m691x12d028db(boolean z) {
        super.setSOSEnabledLowPowerMode(Boolean.valueOf(z));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setSOSEnabledLowPowerMode(final boolean z) {
        mExecutor.schedule(new Runnable() { // from class: com.texa.carelib.care.datamanagerconfiguration.internal.MockDataManagerConfiguration$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m691x12d028db(z);
            }
        }, 200L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: lambda$setTripNumberDevice$10$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration, reason: not valid java name */
    public /* synthetic */ void m695x5983bb9(long j) {
        super.setTripNumberDevice(Long.valueOf(j));
    }

    public void setTripNumberDevice(final long j) {
        mExecutor.schedule(new Runnable() { // from class: com.texa.carelib.care.datamanagerconfiguration.internal.MockDataManagerConfiguration$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m695x5983bb9(j);
            }
        }, 200L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: lambda$setTripNumberVehicle$11$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration, reason: not valid java name */
    public /* synthetic */ void m696xf7248e68(int i) {
        super.setTripNumberVehicle(Integer.valueOf(i));
    }

    public void setTripNumberVehicle(final int i) {
        mExecutor.schedule(new Runnable() { // from class: com.texa.carelib.care.datamanagerconfiguration.internal.MockDataManagerConfiguration$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m696xf7248e68(i);
            }
        }, 200L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: lambda$setAccelerationMaxRange$12$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration, reason: not valid java name */
    public /* synthetic */ void m682x1c0f268c(int i) {
        super.setAccelerationMaxRange(Integer.valueOf(i));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setAccelerationMaxRange(final int i) {
        mExecutor.schedule(new Runnable() { // from class: com.texa.carelib.care.datamanagerconfiguration.internal.MockDataManagerConfiguration$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m682x1c0f268c(i);
            }
        }, 200L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: lambda$setDrivingTimeLowRPMMinThreshold$13$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration, reason: not valid java name */
    public /* synthetic */ void m687x757bc3d0(int i) {
        super.setDrivingTimeLowRPMMinThreshold(Integer.valueOf(i));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setDrivingTimeLowRPMMinThreshold(final int i) {
        mExecutor.schedule(new Runnable() { // from class: com.texa.carelib.care.datamanagerconfiguration.internal.MockDataManagerConfiguration$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m687x757bc3d0(i);
            }
        }, 200L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: lambda$setDrivingTimeLowRPMMaxThreshold$14$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration, reason: not valid java name */
    public /* synthetic */ void m686x8d24419d(int i) {
        super.setDrivingTimeLowRPMMaxThreshold(Integer.valueOf(i));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setDrivingTimeLowRPMMaxThreshold(final int i) {
        mExecutor.schedule(new Runnable() { // from class: com.texa.carelib.care.datamanagerconfiguration.internal.MockDataManagerConfiguration$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m686x8d24419d(i);
            }
        }, 200L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: lambda$setLedBehaviour$15$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration, reason: not valid java name */
    public /* synthetic */ void m688x6a943882(LedBehaviour ledBehaviour) {
        super._setLedBehaviour(ledBehaviour);
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setLedBehaviour(final LedBehaviour ledBehaviour) {
        mExecutor.schedule(new Runnable() { // from class: com.texa.carelib.care.datamanagerconfiguration.internal.MockDataManagerConfiguration$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m688x6a943882(ledBehaviour);
            }
        }, 200L, TimeUnit.MILLISECONDS);
    }
}
