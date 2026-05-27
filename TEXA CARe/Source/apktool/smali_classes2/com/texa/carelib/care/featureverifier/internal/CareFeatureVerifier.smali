.class public Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;
.super Lcom/texa/carelib/profile/ProfileSubModule;
.source "CareFeatureVerifier.java"

# interfaces
.implements Lcom/texa/carelib/care/featureverifier/FeatureVerifier;


# static fields
.field private static final D:Z = false

.field public static final TAG:Ljava/lang/String;

.field private static final VIN_STATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

.field private mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

.field private final mProfile:Lcom/texa/carelib/profile/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x2

    .line 375
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x4

    .line 376
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/4 v3, 0x3

    .line 377
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0x84

    .line 378
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x82

    .line 379
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 374
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->VIN_STATES:Ljava/util/List;

    const-string v0, "CareFeatureVerifier"

    .line 385
    sput-object v0, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/texa/carelib/profile/ProfileSubModule;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    .line 31
    iput-object p1, p0, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-void
.end method

.method private isDiagnosisModeWorking()Z
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getDiagnosisMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isFirmwareUpgradable()Z
    .locals 2

    .line 242
    sget-object v0, Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;->YES:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    iget-object v1, p0, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v1}, Lcom/texa/carelib/care/accessory/Accessory;->getFirmwareUpgradePermission()Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public canChangeLedBehaviour()Z
    .locals 1

    .line 367
    invoke-virtual {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isAuthenticated()Z

    move-result v0

    return v0
.end method

.method public canDeleteConfiguration()Z
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public canEraseTripDataLog()Z
    .locals 1

    const/16 v0, 0xb

    .line 358
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isAuthenticated()Z

    move-result v0

    return v0
.end method

.method public canLoadImpacts()Z
    .locals 1

    const/4 v0, 0x4

    .line 331
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isAuthenticated()Z

    move-result v0

    return v0
.end method

.method public canReadLogBook()Z
    .locals 1

    const/4 v0, 0x3

    .line 307
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isAuthenticated()Z

    move-result v0

    return v0
.end method

.method public canReadTripDataLog()Z
    .locals 1

    const/16 v0, 0xb

    .line 349
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isAuthenticated()Z

    move-result v0

    return v0
.end method

.method public canRebootToMainApp()Z
    .locals 1

    const/4 v0, 0x2

    .line 67
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isAuthenticated()Z

    move-result v0

    return v0
.end method

.method public canRebootToServiceApp()Z
    .locals 1

    const/4 v0, 0x2

    .line 85
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isAuthenticated()Z

    move-result v0

    return v0
.end method

.method public canResetDevice()Z
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isAuthenticated()Z

    move-result v0

    return v0
.end method

.method protected getAccessory()Lcom/texa/carelib/care/accessory/Accessory;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    return-object v0
.end method

.method public getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-object v0
.end method

.method public hasFeature(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->isHostAuthenticated()Z

    move-result v0

    return v0
.end method

.method public isCallPDUAvailable()Z
    .locals 2

    const/16 v0, 0xa

    .line 340
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->hasFeature(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isDiagnosisModeWorking()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isConnected()Z
    .locals 2

    .line 57
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    iget-object v1, p0, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCurrentTripAvailable()Z
    .locals 1

    const/4 v0, 0x3

    .line 234
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isReady()Z

    move-result v0

    return v0
.end method

.method public isDTCReadingAvailable()Z
    .locals 3

    const/4 v0, 0x1

    .line 181
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->hasFeature(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isReady()Z

    move-result v0

    .line 187
    invoke-direct {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isDiagnosisModeWorking()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public isMainAppUpgradable()Z
    .locals 1

    .line 252
    invoke-virtual {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isFirmwareUpgradable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isParametersAvailable()Z
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isParametersPollingAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isParametersSubscriptionAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isParametersPollingAvailable()Z
    .locals 3

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isReady()Z

    move-result v1

    .line 144
    invoke-direct {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isDiagnosisModeWorking()Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public isParametersSubscriptionAvailable()Z
    .locals 3

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isReady()Z

    move-result v1

    .line 166
    invoke-direct {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isDiagnosisModeWorking()Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public isReady()Z
    .locals 2

    .line 203
    invoke-virtual {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    .line 205
    invoke-interface {v1}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x84

    iget-object v1, p0, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    .line 206
    invoke-interface {v1}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isServiceAppUpgradable()Z
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isFirmwareUpgradable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVehicleConfigurationNeeded()Z
    .locals 2

    .line 280
    invoke-virtual {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVehicleConfigurationUpgradable()Z
    .locals 2

    .line 293
    invoke-virtual {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    iget-object v1, p0, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v1}, Lcom/texa/carelib/care/accessory/Accessory;->getRunningApp()Lcom/texa/carelib/core/AppType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVehicleInfoAvailable()Z
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->VIN_STATES:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v1}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 0

    .line 47
    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    return-void
.end method
