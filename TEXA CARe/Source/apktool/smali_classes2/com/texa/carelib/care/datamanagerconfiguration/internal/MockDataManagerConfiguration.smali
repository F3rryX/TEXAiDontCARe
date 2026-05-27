.class public Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;
.super Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;
.source "MockDataManagerConfiguration.java"


# static fields
.field private static final DEFAULT_ACCELERATION_THRESHOLD:Ljava/lang/Float;

.field private static final DEFAULT_BRAKE_THRESHOLD:Ljava/lang/Float;

.field private static final DEFAULT_DRIVER_ID:Ljava/util/UUID;

.field private static final DEFAULT_ODOMETER:Ljava/lang/Float;

.field private static final DEFAULT_RPM_THRESHOLD:Ljava/lang/Integer;

.field private static final DEFAULT_SOS_ENABLED:Ljava/lang/Boolean;

.field private static final DEFAULT_TEMPERATURE_THRESHOLD:Ljava/lang/Integer;

.field private static final DEFAULT_TIMEZONE_OFFSET:Ljava/lang/Integer;

.field private static final DELAY:I = 0xc8

.field private static final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private mIsConfigurationLoading:Z

.field private final mProfile:Lcom/texa/carelib/profile/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    .line 26
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->DEFAULT_ACCELERATION_THRESHOLD:Ljava/lang/Float;

    const v0, 0x3e99999a    # 0.3f

    .line 27
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->DEFAULT_BRAKE_THRESHOLD:Ljava/lang/Float;

    .line 28
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->DEFAULT_DRIVER_ID:Ljava/util/UUID;

    const v0, 0x482ec31a

    .line 29
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->DEFAULT_ODOMETER:Ljava/lang/Float;

    const/16 v0, 0x320

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->DEFAULT_RPM_THRESHOLD:Ljava/lang/Integer;

    const/16 v0, 0x5a

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->DEFAULT_TEMPERATURE_THRESHOLD:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->DEFAULT_TIMEZONE_OFFSET:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 33
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->DEFAULT_SOS_ENABLED:Ljava/lang/Boolean;

    .line 35
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V
    .locals 0

    .line 40
    invoke-direct {p0, p2}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;-><init>(Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V

    .line 42
    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->mProfile:Lcom/texa/carelib/profile/Profile;

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->mIsConfigurationLoading:Z

    return-void
.end method

.method static synthetic access$001(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;Ljava/lang/Float;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setAccelerationThreshold(Ljava/lang/Float;)V

    return-void
.end method

.method static synthetic access$101(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;Ljava/lang/Float;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setBrakeThreshold(Ljava/lang/Float;)V

    return-void
.end method

.method static synthetic access$201(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;Ljava/util/UUID;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->_setDriverID(Ljava/util/UUID;)V

    return-void
.end method

.method static synthetic access$301(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;Ljava/lang/Float;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setStartingOdometer(Ljava/lang/Float;)V

    return-void
.end method

.method static synthetic access$401(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;Ljava/lang/Integer;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setRPMThreshold(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$501(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;Ljava/lang/Integer;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setTemperatureThreshold(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$601(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;Ljava/lang/Integer;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setTimeZoneOffset(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$701(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;Ljava/lang/Boolean;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setSOSEnabled(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic _setLedBehaviour(Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->_setLedBehaviour(Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;)V

    return-void
.end method

.method public bridge synthetic getAccelerationMaxRange()Ljava/lang/Integer;
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getAccelerationMaxRange()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAccelerationThreshold()Ljava/lang/Float;
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getAccelerationThreshold()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBrakeThreshold()Ljava/lang/Float;
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getBrakeThreshold()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDriverID()Ljava/util/UUID;
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getDriverID()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDrivingTimeLowRPMMaxThreshold()Ljava/lang/Integer;
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getDrivingTimeLowRPMMaxThreshold()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDrivingTimeLowRPMMinThreshold()Ljava/lang/Integer;
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getDrivingTimeLowRPMMinThreshold()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLedBehaviour()Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getLedBehaviour()Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    move-result-object v0

    return-object v0
.end method

.method public getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-object v0
.end method

.method public bridge synthetic getRPMThreshold()Ljava/lang/Integer;
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getRPMThreshold()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStartingOdometer()Ljava/lang/Float;
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getStartingOdometer()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTemperatureThreshold()Ljava/lang/Integer;
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getTemperatureThreshold()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimeZoneOffset()Ljava/lang/Integer;
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getTimeZoneOffset()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTripNumberDevice()Ljava/lang/Long;
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getTripNumberDevice()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTripNumberVehicle()Ljava/lang/Integer;
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getTripNumberVehicle()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isSOSEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->isSOSEnabled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isSOSEnabledLowPowerMode()Ljava/lang/Boolean;
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->isSOSEnabledLowPowerMode()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$loadConfigurationValues$0$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration()V
    .locals 1

    .line 65
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->DEFAULT_ACCELERATION_THRESHOLD:Ljava/lang/Float;

    invoke-static {p0, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->access$001(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;Ljava/lang/Float;)V

    .line 66
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->DEFAULT_BRAKE_THRESHOLD:Ljava/lang/Float;

    invoke-static {p0, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->access$101(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;Ljava/lang/Float;)V

    .line 67
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->DEFAULT_DRIVER_ID:Ljava/util/UUID;

    invoke-static {p0, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->access$201(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;Ljava/util/UUID;)V

    .line 68
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->DEFAULT_ODOMETER:Ljava/lang/Float;

    invoke-static {p0, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->access$301(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;Ljava/lang/Float;)V

    .line 69
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->DEFAULT_RPM_THRESHOLD:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->access$401(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;Ljava/lang/Integer;)V

    .line 70
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->DEFAULT_TEMPERATURE_THRESHOLD:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->access$501(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;Ljava/lang/Integer;)V

    .line 71
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->DEFAULT_TIMEZONE_OFFSET:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->access$601(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;Ljava/lang/Integer;)V

    .line 72
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->DEFAULT_SOS_ENABLED:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->access$701(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->mIsConfigurationLoading:Z

    return-void
.end method

.method public synthetic lambda$setAccelerationMaxRange$12$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration(I)V
    .locals 0

    .line 132
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setAccelerationMaxRange(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic lambda$setAccelerationThreshold$1$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration(F)V
    .locals 0

    .line 79
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setAccelerationThreshold(Ljava/lang/Float;)V

    return-void
.end method

.method public synthetic lambda$setBrakeThreshold$2$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration(F)V
    .locals 0

    .line 84
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setBrakeThreshold(Ljava/lang/Float;)V

    return-void
.end method

.method public synthetic lambda$setDriverID$6$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration(Ljava/util/UUID;)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->_setDriverID(Ljava/util/UUID;)V

    return-void
.end method

.method public synthetic lambda$setDrivingTimeLowRPMMaxThreshold$14$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration(I)V
    .locals 0

    .line 142
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setDrivingTimeLowRPMMaxThreshold(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic lambda$setDrivingTimeLowRPMMinThreshold$13$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration(I)V
    .locals 0

    .line 137
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setDrivingTimeLowRPMMinThreshold(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic lambda$setLedBehaviour$15$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration(Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;)V
    .locals 0

    .line 147
    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->_setLedBehaviour(Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;)V

    return-void
.end method

.method public synthetic lambda$setRPMThreshold$3$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration(I)V
    .locals 0

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setRPMThreshold(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic lambda$setSOSEnabled$8$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration(Z)V
    .locals 0

    .line 114
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setSOSEnabled(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic lambda$setSOSEnabledLowPowerMode$9$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration(Z)V
    .locals 0

    .line 119
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setSOSEnabledLowPowerMode(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic lambda$setStartingOdometer$5$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration(F)V
    .locals 0

    .line 99
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setStartingOdometer(Ljava/lang/Float;)V

    return-void
.end method

.method public synthetic lambda$setTemperatureThreshold$4$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration(I)V
    .locals 0

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setTemperatureThreshold(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic lambda$setTimeZoneOffset$7$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration(I)V
    .locals 0

    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setTimeZoneOffset(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic lambda$setTripNumberDevice$10$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration(J)V
    .locals 0

    .line 123
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setTripNumberDevice(Ljava/lang/Long;)V

    return-void
.end method

.method public synthetic lambda$setTripNumberVehicle$11$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration(I)V
    .locals 0

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setTripNumberVehicle(Ljava/lang/Integer;)V

    return-void
.end method

.method public loadConfigurationValues()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-boolean v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->mIsConfigurationLoading:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->mIsConfigurationLoading:Z

    .line 64
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;)V

    const-wide/16 v2, 0xc8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    invoke-direct {v0}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>()V

    throw v0

    .line 55
    :cond_1
    new-instance v0, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {v0}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw v0
.end method

.method public bridge synthetic onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V

    return-void
.end method

.method public setAccelerationMaxRange(I)V
    .locals 4

    .line 132
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda10;-><init>(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;I)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public setAccelerationThreshold(F)V
    .locals 4

    .line 79
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda7;-><init>(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;F)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public setBrakeThreshold(F)V
    .locals 4

    .line 84
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda8;-><init>(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;F)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public setDriverID(Ljava/util/UUID;)V
    .locals 4

    .line 104
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda4;-><init>(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;Ljava/util/UUID;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public setDrivingTimeLowRPMMaxThreshold(I)V
    .locals 4

    .line 142
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda11;-><init>(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;I)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public setDrivingTimeLowRPMMinThreshold(I)V
    .locals 4

    .line 137
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda12;-><init>(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;I)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public setLedBehaviour(Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;)V
    .locals 4

    .line 147
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda3;-><init>(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public setRPMThreshold(I)V
    .locals 4

    .line 89
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda13;-><init>(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;I)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public setSOSEnabled(Z)V
    .locals 4

    .line 114
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda5;-><init>(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;Z)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public setSOSEnabledLowPowerMode(Z)V
    .locals 4

    .line 119
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda6;-><init>(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;Z)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public setStartingOdometer(F)V
    .locals 4

    .line 99
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda9;-><init>(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;F)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public setTemperatureThreshold(I)V
    .locals 4

    .line 94
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda14;-><init>(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;I)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public setTimeZoneOffset(I)V
    .locals 4

    .line 109
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda15;-><init>(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;I)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public bridge synthetic setTimeZoneOffset(Ljava/lang/Integer;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setTimeZoneOffset(Ljava/lang/Integer;)V

    return-void
.end method

.method public setTripNumberDevice(J)V
    .locals 4

    .line 123
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda2;-><init>(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;J)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public setTripNumberVehicle(I)V
    .locals 4

    .line 127
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;I)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
