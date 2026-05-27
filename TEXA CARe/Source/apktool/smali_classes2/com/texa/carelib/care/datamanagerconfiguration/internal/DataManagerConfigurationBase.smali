.class abstract Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;
.super Lcom/texa/carelib/profile/ProfileSubModule;
.source "DataManagerConfigurationBase.java"

# interfaces
.implements Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;


# instance fields
.field private mAccelerationMaxRange:Ljava/lang/Integer;

.field private mAccelerationThreshold:Ljava/lang/Float;

.field private mBrakeThreshold:Ljava/lang/Float;

.field private mDriverID:Ljava/util/UUID;

.field private mDrivingTimeLowRPMMaxThreshold:Ljava/lang/Integer;

.field private mDrivingTimeLowRPMMinThreshold:Ljava/lang/Integer;

.field private final mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

.field private mLedBehaviour:Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

.field private mRPMThreshold:Ljava/lang/Integer;

.field private mSOSEnabled:Ljava/lang/Boolean;

.field private mSOSEnabledLowPowerMode:Ljava/lang/Boolean;

.field private mStartingOdometer:Ljava/lang/Float;

.field private mTemperatureThreshold:Ljava/lang/Integer;

.field private mTimeZoneOffset:Ljava/lang/Integer;

.field private mTripNumberDevice:Ljava/lang/Long;

.field private mTripNumberVehicle:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V
    .locals 0

    .line 193
    invoke-direct {p0}, Lcom/texa/carelib/profile/ProfileSubModule;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    const/4 p1, 0x0

    .line 195
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->resetData(Z)V

    return-void
.end method


# virtual methods
.method _setDriverID(Ljava/util/UUID;)V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mDriverID:Ljava/util/UUID;

    .line 64
    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mDriverID:Ljava/util/UUID;

    .line 65
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mDriverID:Ljava/util/UUID;

    const-string v2, "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_DRIVER_ID"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method public _setLedBehaviour(Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;)V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mLedBehaviour:Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    .line 189
    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mLedBehaviour:Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    .line 190
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mLedBehaviour:Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    const-string v2, "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_LED_BEHAVIOUR"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method public getAccelerationMaxRange()Ljava/lang/Integer;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mAccelerationMaxRange:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAccelerationThreshold()Ljava/lang/Float;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mAccelerationThreshold:Ljava/lang/Float;

    return-object v0
.end method

.method public getBrakeThreshold()Ljava/lang/Float;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mBrakeThreshold:Ljava/lang/Float;

    return-object v0
.end method

.method public getDriverID()Ljava/util/UUID;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mDriverID:Ljava/util/UUID;

    return-object v0
.end method

.method public getDrivingTimeLowRPMMaxThreshold()Ljava/lang/Integer;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mDrivingTimeLowRPMMaxThreshold:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDrivingTimeLowRPMMinThreshold()Ljava/lang/Integer;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mDrivingTimeLowRPMMinThreshold:Ljava/lang/Integer;

    return-object v0
.end method

.method protected getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    return-object v0
.end method

.method public getLedBehaviour()Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mLedBehaviour:Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    return-object v0
.end method

.method public getRPMThreshold()Ljava/lang/Integer;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mRPMThreshold:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStartingOdometer()Ljava/lang/Float;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mStartingOdometer:Ljava/lang/Float;

    return-object v0
.end method

.method public getTemperatureThreshold()Ljava/lang/Integer;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mTemperatureThreshold:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTimeZoneOffset()Ljava/lang/Integer;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mTimeZoneOffset:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTripNumberDevice()Ljava/lang/Long;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mTripNumberDevice:Ljava/lang/Long;

    return-object v0
.end method

.method public getTripNumberVehicle()Ljava/lang/Integer;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mTripNumberVehicle:Ljava/lang/Integer;

    return-object v0
.end method

.method public isSOSEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mSOSEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSOSEnabledLowPowerMode()Ljava/lang/Boolean;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mSOSEnabledLowPowerMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 1

    .line 200
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 201
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->resetData(Z)V

    :cond_0
    return-void
.end method

.method resetData(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setAccelerationThreshold(Ljava/lang/Float;)V

    .line 214
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setBrakeThreshold(Ljava/lang/Float;)V

    .line 215
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->_setDriverID(Ljava/util/UUID;)V

    .line 216
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setRPMThreshold(Ljava/lang/Integer;)V

    .line 217
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setSOSEnabled(Ljava/lang/Boolean;)V

    .line 218
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setSOSEnabledLowPowerMode(Ljava/lang/Boolean;)V

    .line 219
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setStartingOdometer(Ljava/lang/Float;)V

    .line 220
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setTemperatureThreshold(Ljava/lang/Integer;)V

    .line 221
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setTimeZoneOffset(Ljava/lang/Integer;)V

    .line 222
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setTripNumberDevice(Ljava/lang/Long;)V

    .line 223
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setTripNumberVehicle(Ljava/lang/Integer;)V

    .line 224
    sget-object p1, Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;->Unknown:Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->_setLedBehaviour(Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;)V

    goto :goto_0

    .line 228
    :cond_0
    iput-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mAccelerationThreshold:Ljava/lang/Float;

    .line 229
    iput-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mBrakeThreshold:Ljava/lang/Float;

    .line 230
    iput-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mDriverID:Ljava/util/UUID;

    .line 231
    iput-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mRPMThreshold:Ljava/lang/Integer;

    .line 232
    iput-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mSOSEnabled:Ljava/lang/Boolean;

    .line 233
    iput-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mSOSEnabledLowPowerMode:Ljava/lang/Boolean;

    .line 234
    iput-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mStartingOdometer:Ljava/lang/Float;

    .line 235
    iput-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mTemperatureThreshold:Ljava/lang/Integer;

    .line 236
    iput-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mTimeZoneOffset:Ljava/lang/Integer;

    .line 237
    iput-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mTripNumberDevice:Ljava/lang/Long;

    .line 238
    iput-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mTripNumberVehicle:Ljava/lang/Integer;

    .line 239
    sget-object p1, Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;->Unknown:Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mLedBehaviour:Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    :goto_0
    return-void
.end method

.method setAccelerationMaxRange(Ljava/lang/Integer;)V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mAccelerationMaxRange:Ljava/lang/Integer;

    .line 153
    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mAccelerationMaxRange:Ljava/lang/Integer;

    .line 154
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mAccelerationMaxRange:Ljava/lang/Integer;

    const-string v2, "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_ACCELERATION_MAX_RANGE"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method setAccelerationThreshold(Ljava/lang/Float;)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mAccelerationThreshold:Ljava/lang/Float;

    .line 87
    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mAccelerationThreshold:Ljava/lang/Float;

    .line 88
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mAccelerationThreshold:Ljava/lang/Float;

    const-string v2, "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_ACCELERATION_THRESHOLD"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method setBrakeThreshold(Ljava/lang/Float;)V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mBrakeThreshold:Ljava/lang/Float;

    .line 98
    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mBrakeThreshold:Ljava/lang/Float;

    .line 99
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mBrakeThreshold:Ljava/lang/Float;

    const-string v2, "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_BRAKE_THRESHOLD"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method setDrivingTimeLowRPMMaxThreshold(Ljava/lang/Integer;)V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mDrivingTimeLowRPMMaxThreshold:Ljava/lang/Integer;

    .line 177
    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mDrivingTimeLowRPMMaxThreshold:Ljava/lang/Integer;

    .line 178
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mDrivingTimeLowRPMMaxThreshold:Ljava/lang/Integer;

    const-string v2, "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_DRIVING_TIME_LOW_RPM_MAX_THRESHOLD"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method setDrivingTimeLowRPMMinThreshold(Ljava/lang/Integer;)V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mDrivingTimeLowRPMMinThreshold:Ljava/lang/Integer;

    .line 165
    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mDrivingTimeLowRPMMinThreshold:Ljava/lang/Integer;

    .line 166
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mDrivingTimeLowRPMMinThreshold:Ljava/lang/Integer;

    const-string v2, "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_DRIVING_TIME_LOW_RPM_MIN_THRESHOLD"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method setRPMThreshold(Ljava/lang/Integer;)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mRPMThreshold:Ljava/lang/Integer;

    .line 108
    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mRPMThreshold:Ljava/lang/Integer;

    .line 109
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mRPMThreshold:Ljava/lang/Integer;

    const-string v2, "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_RPM_THRESHOLD"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method setSOSEnabled(Ljava/lang/Boolean;)V
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mSOSEnabled:Ljava/lang/Boolean;

    .line 28
    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mSOSEnabled:Ljava/lang/Boolean;

    .line 29
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mSOSEnabled:Ljava/lang/Boolean;

    const-string v2, "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_SOS_ENABLED"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method setSOSEnabledLowPowerMode(Ljava/lang/Boolean;)V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mSOSEnabledLowPowerMode:Ljava/lang/Boolean;

    .line 40
    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mSOSEnabledLowPowerMode:Ljava/lang/Boolean;

    .line 41
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mSOSEnabled:Ljava/lang/Boolean;

    const-string v2, "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_SOS_ENABLED_LOW_POWER_MODE"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method setStartingOdometer(Ljava/lang/Float;)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mStartingOdometer:Ljava/lang/Float;

    .line 52
    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mStartingOdometer:Ljava/lang/Float;

    .line 53
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mStartingOdometer:Ljava/lang/Float;

    const-string v2, "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_ODOMETER"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method setTemperatureThreshold(Ljava/lang/Integer;)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mTemperatureThreshold:Ljava/lang/Integer;

    .line 119
    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mTemperatureThreshold:Ljava/lang/Integer;

    .line 120
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mTemperatureThreshold:Ljava/lang/Integer;

    const-string v2, "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_TEMPERATURE_THRESHOLD"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method public setTimeZoneOffset(Ljava/lang/Integer;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mTimeZoneOffset:Ljava/lang/Integer;

    .line 76
    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mTimeZoneOffset:Ljava/lang/Integer;

    .line 77
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mTimeZoneOffset:Ljava/lang/Integer;

    const-string v2, "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_TIMEZONE_OFFSET"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method setTripNumberDevice(Ljava/lang/Long;)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mTripNumberDevice:Ljava/lang/Long;

    .line 130
    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mTripNumberDevice:Ljava/lang/Long;

    .line 131
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mTripNumberDevice:Ljava/lang/Long;

    const-string v2, "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_TRIP_NUMBER_DEVICE"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method setTripNumberVehicle(Ljava/lang/Integer;)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mTripNumberVehicle:Ljava/lang/Integer;

    .line 141
    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mTripNumberVehicle:Ljava/lang/Integer;

    .line 142
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->mTripNumberVehicle:Ljava/lang/Integer;

    const-string v2, "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_TRIP_NUMBER_VEHICLE"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method
