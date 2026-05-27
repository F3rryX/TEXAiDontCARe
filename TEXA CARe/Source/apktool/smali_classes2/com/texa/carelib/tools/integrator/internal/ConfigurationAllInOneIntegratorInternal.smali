.class public Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;
.super Lcom/texa/carelib/core/ObservableObjectBase;
.source "ConfigurationAllInOneIntegratorInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;,
        Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;,
        Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation;,
        Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;,
        Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusReady;,
        Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;,
        Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserverResult;
    }
.end annotation


# static fields
.field private static final ACQUIRING_DEVICE_INFO_TIMEOUT_INTERVAL:I = 0x927c0

.field private static final CHECK_DEVICE_CONFIGURATION_STATUS_BUSY_TIMEOUT_INTERVAL:I = 0x7530

.field private static final CHECK_DEVICE_CONFIGURATION_STATUS_TIMEOUT_INTERVAL:I = 0x1d4c0

.field private static final CHECK_PROGRESS_1:F = 1.0f

.field private static final CHECK_PROGRESS_2:F = 55.0f

.field private static final CHECK_PROGRESS_MAX:F = 100.0f

.field private static final DOWNLOAD_PROGRESS_1:F = 1.0f

.field private static final DOWNLOAD_PROGRESS_MAX:F = 5.0f

.field private static final PROGRESS_MAX:F = 100.0f

.field public static final PROPERTY_STATUS:Ljava/lang/String; = "com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternal#PROPERTY_STATUS"

.field public static final TAG:Ljava/lang/String; = "ConfigurationAllInOneIntegratorInternal"

.field private static final UPGRADE_CONFIGURATION_TIMEOUT_INTERVAL:I = 0xdbba0

.field private static final USER_ACK_TIMEOUT_INTERVAL:J = 0xea60L


# instance fields
.field private final mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

.field private final mCommunication:Lcom/texa/carelib/communication/Communication;

.field private final mConfigurationProcedure:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

.field private mForceVehicleID:Ljava/lang/String;

.field private mLastError:Lcom/texa/carelib/core/CareError;

.field private mListener:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorListener;

.field private final mProfile:Lcom/texa/carelib/profile/Profile;

.field private mProgress:F

.field private final mServiceVehicleConfigurationInfo:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfo;

.field private final mServiceVehicleConfigurationProcedure:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;

.field private mSkipConfirmation:Z

.field private mState:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

.field private mStatusInternal:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;

.field private final mTaskSynchronizer:Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

.field private final mVehicleInfo:Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/communication/Communication;Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfo;Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/texa/carelib/core/ObservableObjectBase;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mCommunication:Lcom/texa/carelib/communication/Communication;

    .line 64
    iput-object p2, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mProfile:Lcom/texa/carelib/profile/Profile;

    .line 65
    iput-object p3, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    .line 66
    iput-object p4, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mVehicleInfo:Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;

    .line 67
    iput-object p5, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mConfigurationProcedure:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    .line 68
    iput-object p6, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mServiceVehicleConfigurationInfo:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfo;

    .line 69
    iput-object p7, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mServiceVehicleConfigurationProcedure:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;

    .line 70
    invoke-direct {p0, p2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->retrieveQueueExecutorIfSupported(Lcom/texa/carelib/profile/Profile;)Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object p2

    iput-object p2, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mTaskSynchronizer:Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    const/4 p2, 0x0

    .line 72
    iput-boolean p2, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mSkipConfirmation:Z

    .line 73
    sget-object p2, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;->Undef:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    iput-object p2, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mState:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    .line 74
    new-instance p2, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusReady;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusReady;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$1;)V

    iput-object p2, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mStatusInternal:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;

    .line 76
    new-instance p2, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)V

    invoke-interface {p1, p2}, Lcom/texa/carelib/communication/Communication;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfo;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mServiceVehicleConfigurationInfo:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfo;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mLastError:Lcom/texa/carelib/core/CareError;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->setStatusInternal(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)F
    .locals 0

    .line 59
    iget p0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mProgress:F

    return p0
.end method

.method static synthetic access$1500(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorListener;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->getConfigurationAllInOneIntegratorListener()Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mServiceVehicleConfigurationProcedure:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mConfigurationProcedure:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/care/accessory/Accessory;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    return-object p0
.end method

.method static synthetic access$300(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;F)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->setStateProgress(Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;F)V

    return-void
.end method

.method static synthetic access$400(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mVehicleInfo:Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;

    return-object p0
.end method

.method static synthetic access$500(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->getSerialNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->getVehicleID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Ljava/math/BigInteger;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->getInterpreterVersion()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/profile/Profile;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-object p0
.end method

.method static synthetic access$900(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mState:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    return-object p0
.end method

.method private execute(Ljava/lang/String;Ljava/lang/Runnable;I)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mTaskSynchronizer:Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;

    invoke-direct {v0, p1, p2}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p3}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->setTimeout(I)Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;

    move-result-object p1

    .line 214
    iget-object p2, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mTaskSynchronizer:Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->build()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->execute(Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private getConfigurationAllInOneIntegratorListener()Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorListener;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mListener:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorListener;

    return-object v0
.end method

.method private getInterpreterVersion()Ljava/math/BigInteger;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getInterpreterVersion()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVehicleID()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mForceVehicleID:Ljava/lang/String;

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mVehicleInfo:Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;

    invoke-interface {v0}, Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;->getVehicleID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mForceVehicleID:Ljava/lang/String;

    return-object v0
.end method

.method private isRunning()Z
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mStatusInternal:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;

    instance-of v0, v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusReady;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isWaitingUserAck()Z
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mStatusInternal:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;

    instance-of v0, v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation;

    return v0
.end method

.method private retrieveQueueExecutorIfSupported(Lcom/texa/carelib/profile/Profile;)Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;
    .locals 4

    const/4 v0, 0x0

    .line 102
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getQueueExecutor"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 103
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 105
    sget-object v1, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "retrieveQueueExecutorIfSupported() fails"

    invoke-static {v1, p1, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private declared-synchronized setStateProgress(Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;F)V
    .locals 6

    monitor-enter p0

    .line 256
    :try_start_0
    sget-object v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->TAG:Ljava/lang/String;

    const-string v1, "setStateProgress(%1$s, %2$f)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-static {v0, v1, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mState:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 258
    :goto_0
    iget v2, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mProgress:F

    cmpl-float v2, v2, p2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 262
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mState:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    .line 263
    new-instance v2, Ljava/beans/PropertyChangeEvent;

    const-string v4, "com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternal#PROPERTY_STATUS"

    invoke-direct {v2, p0, v4, v0, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_2
    if-nez v3, :cond_3

    if-eqz v1, :cond_4

    .line 267
    :cond_3
    invoke-static {}, Lcom/texa/carelib/core/CarelibSchedulers;->mainThread()Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$$ExternalSyntheticLambda2;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;F)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;->schedule(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setStatusInternal(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mStatusInternal:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;->onExit()V

    .line 198
    :cond_0
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mStatusInternal:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;

    if-eqz p1, :cond_1

    .line 201
    invoke-virtual {p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;->onEnter()V

    :cond_1
    return-void
.end method


# virtual methods
.method public beginDeviceProgrammingInternal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$1;)V

    invoke-direct {p0, v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->setStatusInternal(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;)V

    return-void
.end method

.method public checkDeviceConfigurationStatusInternal()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/OperationAlreadyRunningException;
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)V

    const v1, 0xdbba0

    const-string v2, "checkDeviceConfigurationStatusInternal"

    invoke-direct {p0, v2, v0, v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->execute(Ljava/lang/String;Ljava/lang/Runnable;I)V

    return-void

    .line 164
    :cond_0
    new-instance v0, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    invoke-direct {v0}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>()V

    throw v0
.end method

.method public getLastErrorInternal()Lcom/texa/carelib/core/CareError;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mLastError:Lcom/texa/carelib/core/CareError;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 280
    iget v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mProgress:F

    return v0
.end method

.method public declared-synchronized getStatusInternal()Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;
    .locals 1

    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mState:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$checkDeviceConfigurationStatusInternal$1$com-texa-carelib-tools-integrator-internal-ConfigurationAllInOneIntegratorInternal()V
    .locals 1

    .line 168
    new-instance v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;

    invoke-direct {v0, p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)V

    invoke-direct {p0, v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->setStatusInternal(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;)V

    return-void
.end method

.method public synthetic lambda$new$0$com-texa-carelib-tools-integrator-internal-ConfigurationAllInOneIntegratorInternal(Ljava/beans/PropertyChangeEvent;)V
    .locals 3

    .line 77
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.texa.carelib.communication.Communication#PROPERTY_STATUS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;

    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/communication/CommunicationStatus;

    iget-object v2, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v2}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/communication/CommunicationStatus;Lcom/texa/carelib/communication/DeviceInfo;)V

    invoke-virtual {p0, v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setStateProgress$2$com-texa-carelib-tools-integrator-internal-ConfigurationAllInOneIntegratorInternal(Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;F)V
    .locals 2

    .line 268
    invoke-direct {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->getConfigurationAllInOneIntegratorListener()Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->getConfigurationAllInOneIntegratorListener()Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorListener;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/tools/integrator/events/ConfigurationAllInOneIntegratorProgressChangedEvent;

    invoke-direct {v1, p1, p2}, Lcom/texa/carelib/tools/integrator/events/ConfigurationAllInOneIntegratorProgressChangedEvent;-><init>(Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;F)V

    invoke-virtual {v0, v1}, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorListener;->onProgressChanged(Lcom/texa/carelib/tools/integrator/events/ConfigurationAllInOneIntegratorProgressChangedEvent;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$terminate$3$com-texa-carelib-tools-integrator-internal-ConfigurationAllInOneIntegratorInternal(ZLcom/texa/carelib/core/CareError;)V
    .locals 2

    .line 296
    invoke-direct {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->getConfigurationAllInOneIntegratorListener()Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->getConfigurationAllInOneIntegratorListener()Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorListener;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/tools/integrator/events/ConfigurationAllInOneIntegratorCompletedEvent;

    invoke-direct {v1, p0, p1, p2}, Lcom/texa/carelib/tools/integrator/events/ConfigurationAllInOneIntegratorCompletedEvent;-><init>(Ljava/lang/Object;ZLcom/texa/carelib/core/CareError;)V

    invoke-virtual {v0, v1}, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorListener;->onConfigurationCompleted(Lcom/texa/carelib/tools/integrator/events/ConfigurationAllInOneIntegratorCompletedEvent;)V

    :cond_0
    return-void
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 1

    .line 311
    sget-object v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    new-instance p1, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusReady;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusReady;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$1;)V

    invoke-direct {p0, p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->setStatusInternal(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;)V

    .line 317
    sget-object p1, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;->Undef:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->setStateProgress(Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;F)V

    :goto_0
    return-void
.end method

.method public setConfigurationAllInOneIntegratorListener(Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mListener:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorListener;

    return-void
.end method

.method public setForcedVehicleIDInternal(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mForceVehicleID:Ljava/lang/String;

    return-void
.end method

.method public setSkipConfirmation(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mSkipConfirmation:Z

    return-void
.end method

.method public skipConfirmation()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mSkipConfirmation:Z

    return v0
.end method

.method public terminate(ZLcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 292
    invoke-direct {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 294
    :try_start_0
    sget-object v1, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;->Terminated:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {p0, v1, v2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->setStateProgress(Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;F)V

    .line 295
    invoke-static {}, Lcom/texa/carelib/core/CarelibSchedulers;->mainThread()Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;

    move-result-object v1

    new-instance v2, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, p2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$$ExternalSyntheticLambda3;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;ZLcom/texa/carelib/core/CareError;)V

    invoke-interface {v1, v2}, Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;->schedule(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    new-instance p1, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusReady;

    invoke-direct {p1, p0, v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusReady;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$1;)V

    invoke-direct {p0, p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->setStatusInternal(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;)V

    .line 302
    iget-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mTaskSynchronizer:Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    if-eqz p1, :cond_1

    .line 303
    invoke-virtual {p1}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->executeNext()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 301
    new-instance p2, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusReady;

    invoke-direct {p2, p0, v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusReady;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$1;)V

    invoke-direct {p0, p2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->setStatusInternal(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;)V

    .line 302
    iget-object p2, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->mTaskSynchronizer:Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    if-eqz p2, :cond_0

    .line 303
    invoke-virtual {p2}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->executeNext()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    :cond_0
    throw p1

    :cond_1
    :goto_0
    return-void
.end method
