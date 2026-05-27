.class public interface abstract Lcom/texa/carelib/care/featureverifier/FeatureVerifier;
.super Ljava/lang/Object;
.source "FeatureVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/featureverifier/FeatureVerifier$Feature;
    }
.end annotation


# static fields
.field public static final FEATURE_ATTITUDE:I = 0x7

.field public static final FEATURE_BATTERY_ANALYZER:I = 0x9

.field public static final FEATURE_DIAGNOSTIC_PARAMETERS:I = 0x0

.field public static final FEATURE_DTC:I = 0x1

.field public static final FEATURE_IMPACTS:I = 0x4

.field public static final FEATURE_LOG:I = 0x6

.field public static final FEATURE_PDU:I = 0xa

.field public static final FEATURE_REBOOT_DEVICE:I = 0x2

.field public static final FEATURE_SIMULATE_IMPACT:I = 0x8

.field public static final FEATURE_TRIP_DATA_RECORDER:I = 0xb

.field public static final FEATURE_TRIP_MANAGEMENT:I = 0x3

.field public static final FEATURE_VEHICLE_ACCELERATIONS:I = 0x5


# virtual methods
.method public abstract canChangeLedBehaviour()Z
.end method

.method public abstract canDeleteConfiguration()Z
.end method

.method public abstract canEraseTripDataLog()Z
.end method

.method public abstract canLoadImpacts()Z
.end method

.method public abstract canReadLogBook()Z
.end method

.method public abstract canReadTripDataLog()Z
.end method

.method public abstract canRebootToMainApp()Z
.end method

.method public abstract canRebootToServiceApp()Z
.end method

.method public abstract canResetDevice()Z
.end method

.method public abstract hasFeature(I)Z
.end method

.method public abstract isAuthenticated()Z
.end method

.method public abstract isCallPDUAvailable()Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isCurrentTripAvailable()Z
.end method

.method public abstract isDTCReadingAvailable()Z
.end method

.method public abstract isMainAppUpgradable()Z
.end method

.method public abstract isParametersAvailable()Z
.end method

.method public abstract isParametersPollingAvailable()Z
.end method

.method public abstract isParametersSubscriptionAvailable()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract isServiceAppUpgradable()Z
.end method

.method public abstract isVehicleConfigurationNeeded()Z
.end method

.method public abstract isVehicleConfigurationUpgradable()Z
.end method

.method public abstract isVehicleInfoAvailable()Z
.end method
