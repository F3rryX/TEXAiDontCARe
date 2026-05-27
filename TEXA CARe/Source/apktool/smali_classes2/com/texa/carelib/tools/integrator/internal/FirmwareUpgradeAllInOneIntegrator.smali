.class public Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;
.super Lcom/texa/carelib/core/ObservableObjectBase;
.source "FirmwareUpgradeAllInOneIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;,
        Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$UpgradeFirmwareStatusObserver;,
        Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;
    }
.end annotation


# static fields
.field public static final PROPERTY_STATE:Ljava/lang/String; = "com.texa.carelib.tools.integrator.internal.FirmwareUpgradeAllInOneIntegrator#PROPERTY_STATE"

.field public static final TAG:Ljava/lang/String; = "FirmwareUpgradeAllInOneIntegrator"


# instance fields
.field private final mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

.field private final mCheckFirmwareUpgradeStatusObserver:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;

.field private final mCommunication:Lcom/texa/carelib/communication/Communication;

.field private final mProfile:Lcom/texa/carelib/profile/Profile;

.field private mState:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

.field private final mTexaService:Lcom/texa/carelib/webservices/TexaService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/communication/Communication;Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/webservices/TexaService;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/texa/carelib/core/ObservableObjectBase;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->mCommunication:Lcom/texa/carelib/communication/Communication;

    .line 77
    iput-object p2, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->mProfile:Lcom/texa/carelib/profile/Profile;

    .line 78
    iput-object p3, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    .line 79
    iput-object p4, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    .line 81
    new-instance p1, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;-><init>(Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$1;)V

    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->mCheckFirmwareUpgradeStatusObserver:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;

    return-void
.end method


# virtual methods
.method public checkDeviceConfigurationStatus(Lcom/texa/carelib/core/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/OperationAlreadyRunningException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->mCheckFirmwareUpgradeStatusObserver:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;

    invoke-virtual {v0}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->countObservers()I

    move-result v0

    if-gtz v0, :cond_0

    .line 116
    sget-object v0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;->Checking:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->setStatus(Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;)Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;

    .line 118
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->mCheckFirmwareUpgradeStatusObserver:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/accessory/Accessory;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    .line 120
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->mCheckFirmwareUpgradeStatusObserver:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;

    new-instance v1, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$$ExternalSyntheticLambda2;-><init>(Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;Lcom/texa/carelib/core/Callback;)V

    invoke-virtual {v0, v1}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->addObserver(Ljava/util/Observer;)V

    .line 136
    iget-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->mCheckFirmwareUpgradeStatusObserver:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;

    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v1}, Lcom/texa/carelib/care/accessory/Accessory;->getMainAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v2}, Lcom/texa/carelib/care/accessory/Accessory;->getServiceAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->evaluate(Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Z

    return-void

    .line 114
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    const-string v0, "Currently waiting info needed to check configuration status."

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized getStatus()Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;
    .locals 1

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->mState:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$checkDeviceConfigurationStatus$0$com-texa-carelib-tools-integrator-internal-FirmwareUpgradeAllInOneIntegrator(Lcom/texa/carelib/core/Callback;Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    .line 121
    check-cast p2, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;

    .line 123
    iget-object p3, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->mCheckFirmwareUpgradeStatusObserver:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;

    invoke-interface {p3, v0}, Lcom/texa/carelib/care/accessory/Accessory;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 125
    iget-object p3, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->mCheckFirmwareUpgradeStatusObserver:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;

    invoke-virtual {p3}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->deleteObservers()V

    .line 127
    invoke-virtual {p2}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->getSerialNumber()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->getMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->getServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 129
    :try_start_0
    iget-object p3, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    invoke-interface {p3}, Lcom/texa/carelib/webservices/TexaService;->getFirmwareInfoProcedure()Lcom/texa/carelib/webservices/ServiceFirmwareInfo;

    move-result-object p3

    invoke-virtual {p2}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->getMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v1

    invoke-virtual {p2}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->getServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/core/Callback;)V

    invoke-interface {p3, v0, v1, p2, v2}, Lcom/texa/carelib/webservices/ServiceFirmwareInfo;->loadFirmwareInfo(Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/Callback;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public synthetic lambda$upgradeFirmware$1$com-texa-carelib-tools-integrator-internal-FirmwareUpgradeAllInOneIntegrator(Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;)V
    .locals 1

    .line 150
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 151
    sget-object p1, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;->Upgrading:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->setStatus(Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;)Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;

    goto :goto_0

    .line 154
    :cond_0
    sget-object v0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;->Terminated:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->setStatus(Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;)Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;

    .line 155
    new-instance v0, Lcom/texa/carelib/tools/integrator/events/FirmwareUpgradeCompletedEvent;

    invoke-virtual {p2}, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Lcom/texa/carelib/tools/integrator/events/FirmwareUpgradeCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected declared-synchronized setStatus(Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;)Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;
    .locals 3

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->mState:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

    .line 101
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->mState:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

    .line 102
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    const-string v2, "com.texa.carelib.tools.integrator.internal.FirmwareUpgradeAllInOneIntegrator#PROPERTY_STATE"

    invoke-direct {v1, p0, v2, v0, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public upgradeFirmware(Ljava/lang/String;Lcom/texa/carelib/webservices/FirmwareType;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/webservices/FirmwareType;",
            "Lcom/texa/carelib/core/utils/FirmwareVersion;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/tools/integrator/events/FirmwareUpgradeCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    invoke-interface {v0}, Lcom/texa/carelib/webservices/TexaService;->getFirmwareDownloadProcedure()Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedure;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p4}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;Lcom/texa/carelib/core/Callback;)V

    invoke-interface {v0, p2, p3, p1, v1}, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedure;->downloadFirmware(Lcom/texa/carelib/webservices/FirmwareType;Lcom/texa/carelib/core/utils/FirmwareVersion;Ljava/lang/String;Lcom/texa/carelib/core/Callback;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
