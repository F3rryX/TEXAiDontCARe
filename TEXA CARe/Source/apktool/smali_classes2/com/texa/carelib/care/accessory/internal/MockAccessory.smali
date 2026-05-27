.class public Lcom/texa/carelib/care/accessory/internal/MockAccessory;
.super Lcom/texa/carelib/profile/ProfileSubModule;
.source "MockAccessory.java"

# interfaces
.implements Lcom/texa/carelib/care/accessory/Accessory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;
    }
.end annotation


# static fields
.field private static final CARE_LEGACY_FIRMWARE_VERSION:Lcom/texa/carelib/core/utils/Version;

.field public static final DATA_AVAILABLE_DELAY:I = 0xfa

.field public static final DATA_UPDATED_PERIOD:I = 0x9c4

.field public static final DATA_UPDATE_DELAY:I = 0x9c4

.field public static final HARDWARE_REVISION:Lcom/texa/carelib/core/utils/Version;

.field public static final MAC_ADDRESS:Ljava/lang/String; = "00-B0-D0-86-BB-F7"

.field public static final MAIN_APP_VERSION:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field public static final MANUFACTURER_NAME:Ljava/lang/String; = "TEXA S.p.A."

.field public static final MICRO_LOADER_REVISION:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field public static final MOCK_INTERPRETER_VERSION:Ljava/math/BigInteger;

.field public static final PENDING_MAIN_APP_VERSION:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field public static final PENDING_SERVICE_APP_VERSION:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field public static final SERVICE_APP_VERSION:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field public static final TAG:Ljava/lang/String; = "MockAccessory"


# instance fields
.field private final mAccessoryStatusUpdater:Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;

.field private mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

.field private mConfigurationID:Ljava/math/BigInteger;

.field private mCurrentDate:Ljava/util/Date;

.field private mDiagnosisMode:I

.field private mFactoryResetThread:Ljava/lang/Thread;

.field private mFirmwareUpgradePermission:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

.field private mHardwareRevision:Lcom/texa/carelib/core/utils/Version;

.field private mInterpreterVersion:Ljava/math/BigInteger;

.field private mIsFactoryResetInProgress:Z

.field private mIsHostAuthenticated:Ljava/lang/Boolean;

.field private mLastPlugEventDate:Ljava/util/Date;

.field private mLastUnplugEventDate:Ljava/util/Date;

.field private mMACAddress:Ljava/lang/String;

.field private mMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field private mManufacturerName:Ljava/lang/String;

.field private mMicroLoaderVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field private mPendingMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field private mPendingServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field private final mProfile:Lcom/texa/carelib/profile/internal/MockProfile;

.field private mResetToFactoryCallback:Lcom/texa/carelib/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/accessory/events/FactoryResetCompletedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningApp:Lcom/texa/carelib/core/AppType;

.field private mSerialNumber:Ljava/lang/String;

.field private mServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field private mSessionID:Ljava/lang/String;

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 51
    new-instance v0, Lcom/texa/carelib/core/utils/FirmwareVersion;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->SERVICE_APP_VERSION:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 53
    new-instance v3, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {v3, v1, v2, v2, v2}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v3, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->MAIN_APP_VERSION:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 55
    new-instance v4, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {v4, v1, v2, v2, v2}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v4, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->MICRO_LOADER_REVISION:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 57
    new-instance v4, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {v4, v2, v2, v2, v2}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v4, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->PENDING_MAIN_APP_VERSION:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 58
    new-instance v4, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {v4, v2, v2, v2, v2}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v4, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->PENDING_SERVICE_APP_VERSION:Lcom/texa/carelib/core/utils/FirmwareVersion;

    const-string v4, "DEF"

    .line 61
    invoke-virtual {v0, v4}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setApplicationName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setBoardName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    const-string v5, "TEX"

    invoke-virtual {v0, v5}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setCustomerName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    const-string v6, "CARE"

    invoke-virtual {v0, v6}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setProductName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 62
    invoke-virtual {v3, v4}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setApplicationName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setBoardName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setCustomerName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setProductName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 66
    new-instance v0, Lcom/texa/carelib/core/utils/Version;

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/texa/carelib/core/utils/Version;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->HARDWARE_REVISION:Lcom/texa/carelib/core/utils/Version;

    const-wide/16 v3, 0x1

    .line 74
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->MOCK_INTERPRETER_VERSION:Ljava/math/BigInteger;

    .line 899
    new-instance v0, Lcom/texa/carelib/core/utils/Version;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/texa/carelib/core/utils/Version;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->CARE_LEGACY_FIRMWARE_VERSION:Lcom/texa/carelib/core/utils/Version;

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/Profile;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/texa/carelib/profile/ProfileSubModule;-><init>()V

    .line 89
    check-cast p1, Lcom/texa/carelib/profile/internal/MockProfile;

    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mProfile:Lcom/texa/carelib/profile/internal/MockProfile;

    .line 90
    iput-object p2, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mSerialNumber:Ljava/lang/String;

    .line 91
    new-instance p1, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;

    invoke-direct {p1, p0, p0}, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;-><init>(Lcom/texa/carelib/care/accessory/internal/MockAccessory;Lcom/texa/carelib/care/accessory/internal/MockAccessory;)V

    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mAccessoryStatusUpdater:Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;

    const/4 p1, 0x0

    .line 92
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mIsHostAuthenticated:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$200(Lcom/texa/carelib/care/accessory/internal/MockAccessory;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->setStatus(I)V

    return-void
.end method

.method private setAuthenticationStatus(Z)V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mIsHostAuthenticated:Ljava/lang/Boolean;

    .line 322
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mIsHostAuthenticated:Ljava/lang/Boolean;

    .line 323
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mIsHostAuthenticated:Ljava/lang/Boolean;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_IS_AUTHENTICATED"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setConfigurationID(Ljava/math/BigInteger;)V
    .locals 3

    .line 510
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mConfigurationID:Ljava/math/BigInteger;

    .line 511
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mConfigurationID:Ljava/math/BigInteger;

    .line 512
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mConfigurationID:Ljava/math/BigInteger;

    const-string v2, "com.texa.carelib.care.accessory.internal.SerialAccessory#PROPERTY_CONFIGURATION_ID"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setCurrentDate(Ljava/util/Date;)V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mCurrentDate:Ljava/util/Date;

    .line 333
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mCurrentDate:Ljava/util/Date;

    .line 334
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mCurrentDate:Ljava/util/Date;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_CURRENT_DATE"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setDiagnosisMode(I)V
    .locals 3

    .line 344
    iget v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mDiagnosisMode:I

    .line 345
    iput p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mDiagnosisMode:I

    .line 346
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mDiagnosisMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_DIAGNOSIS_MODE"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setFirmwareUpgradePermission(Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;)V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mFirmwareUpgradePermission:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    .line 356
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mFirmwareUpgradePermission:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    .line 357
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mFirmwareUpgradePermission:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_FIRMWARE_UPGRADE_PERMISSION"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setHardwareRevision(Lcom/texa/carelib/core/utils/Version;)V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mHardwareRevision:Lcom/texa/carelib/core/utils/Version;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/core/utils/Version;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mHardwareRevision:Lcom/texa/carelib/core/utils/Version;

    .line 370
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mHardwareRevision:Lcom/texa/carelib/core/utils/Version;

    .line 371
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mHardwareRevision:Lcom/texa/carelib/core/utils/Version;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_HARDWARE_REVISION"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_0
    return-void
.end method

.method private setInterpreterVersion(Ljava/math/BigInteger;)V
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mInterpreterVersion:Ljava/math/BigInteger;

    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mInterpreterVersion:Ljava/math/BigInteger;

    .line 383
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mInterpreterVersion:Ljava/math/BigInteger;

    .line 384
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mInterpreterVersion:Ljava/math/BigInteger;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_INTERPRETER_VERSION"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_0
    return-void
.end method

.method private setLastPlugEventDate(Ljava/util/Date;)V
    .locals 3

    .line 394
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mLastPlugEventDate:Ljava/util/Date;

    .line 395
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mLastPlugEventDate:Ljava/util/Date;

    .line 396
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mLastPlugEventDate:Ljava/util/Date;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_LAST_PLUG_DATE"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setLastUnplugEventDate(Ljava/util/Date;)V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mLastUnplugEventDate:Ljava/util/Date;

    .line 406
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mLastUnplugEventDate:Ljava/util/Date;

    .line 407
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mLastUnplugEventDate:Ljava/util/Date;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_LAST_UNPLUG_DATE"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setMACAddress(Ljava/lang/String;)V
    .locals 3

    .line 416
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mMACAddress:Ljava/lang/String;

    .line 417
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mMACAddress:Ljava/lang/String;

    .line 418
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mMACAddress:Ljava/lang/String;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_MAC_ADDRESS"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setMainAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 431
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 432
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_MAIN_APP_VERSION"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_0
    return-void
.end method

.method private setManufacturerName(Ljava/lang/String;)V
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mManufacturerName:Ljava/lang/String;

    .line 443
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mManufacturerName:Ljava/lang/String;

    .line 444
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mManufacturerName:Ljava/lang/String;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_MANUFACTURER_NAME"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setMicroLoaderVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mMicroLoaderVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mMicroLoaderVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 457
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mMicroLoaderVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 458
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mMicroLoaderVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_MICRO_LOADER_VERSION"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_0
    return-void
.end method

.method private setPendingMainAPPVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 3

    .line 468
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mPendingMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mPendingMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 472
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mPendingMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 473
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mPendingMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_PENDING_MAIN_APP_VERSION"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_0
    return-void
.end method

.method private setPendingServiceAPPVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mPendingServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mPendingServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 487
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mPendingServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 488
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mPendingServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_PENDING_SERVICE_APP_VERSION"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_0
    return-void
.end method

.method private setRunningApp(Lcom/texa/carelib/core/AppType;)V
    .locals 3

    .line 498
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mRunningApp:Lcom/texa/carelib/core/AppType;

    .line 499
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mRunningApp:Lcom/texa/carelib/core/AppType;

    .line 500
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mRunningApp:Lcom/texa/carelib/core/AppType;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_RUNNING_APP"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setSerialNumber(Ljava/lang/String;)V
    .locals 3

    .line 532
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mSerialNumber:Ljava/lang/String;

    .line 533
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mSerialNumber:Ljava/lang/String;

    .line 534
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mSerialNumber:Ljava/lang/String;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_SERIAL_NUMBER"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setServiceAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 547
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 548
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_SERVICE_APP_VERSION"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_0
    return-void
.end method

.method private setSessionID(Ljava/lang/String;)V
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mSessionID:Ljava/lang/String;

    .line 522
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mSessionID:Ljava/lang/String;

    .line 523
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mSessionID:Ljava/lang/String;

    const-string v2, "com.texa.carelib.care.accessory.internal.SerialAccessory#PROPERTY_SESSION_ID"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setStatus(I)V
    .locals 3

    .line 559
    iget v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mStatus:I

    .line 560
    iput p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mStatus:I

    .line 561
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_STATUS"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method


# virtual methods
.method getConfigurationID()Ljava/math/BigInteger;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mConfigurationID:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getCurrentDate()Ljava/util/Date;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mCurrentDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDiagnosisMode()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mDiagnosisMode:I

    return v0
.end method

.method public getDiagnosticConfigurationType()Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;
    .locals 1

    .line 297
    sget-object v0, Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;->ConfigurationFiles:Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    return-object v0
.end method

.method public getEncryptionLevel()Lcom/texa/carelib/care/accessory/EncryptionLevel;
    .locals 1

    .line 303
    sget-object v0, Lcom/texa/carelib/care/accessory/EncryptionLevel;->DoubleLevelEncryption:Lcom/texa/carelib/care/accessory/EncryptionLevel;

    return-object v0
.end method

.method getFactoryResetModeFromFirmwareVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)Lcom/texa/carelib/care/accessory/internal/SerialAccessory$FactoryResetMode;
    .locals 2

    if-eqz p1, :cond_0

    .line 308
    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getProductName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CARE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->CARE_LEGACY_FIRMWARE_VERSION:Lcom/texa/carelib/core/utils/Version;

    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/core/utils/Version;->compareTo(Lcom/texa/carelib/core/utils/Version;)I

    move-result p1

    if-gez p1, :cond_0

    .line 309
    sget-object p1, Lcom/texa/carelib/care/accessory/internal/SerialAccessory$FactoryResetMode;->Smart:Lcom/texa/carelib/care/accessory/internal/SerialAccessory$FactoryResetMode;

    return-object p1

    .line 312
    :cond_0
    sget-object p1, Lcom/texa/carelib/care/accessory/internal/SerialAccessory$FactoryResetMode;->Legacy:Lcom/texa/carelib/care/accessory/internal/SerialAccessory$FactoryResetMode;

    return-object p1
.end method

.method public getFirmwareUpgradePermission()Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mFirmwareUpgradePermission:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    return-object v0
.end method

.method public final getHardwareRevision()Lcom/texa/carelib/core/utils/Version;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mHardwareRevision:Lcom/texa/carelib/core/utils/Version;

    return-object v0
.end method

.method public final getInterpreterVersion()Ljava/math/BigInteger;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mInterpreterVersion:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getLastPlugEventDate()Ljava/util/Date;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mLastPlugEventDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getLastUnplugEventDate()Ljava/util/Date;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mLastUnplugEventDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getMACAddress()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mMACAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getMainAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0
.end method

.method public final getManufactureName()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mManufacturerName:Ljava/lang/String;

    return-object v0
.end method

.method public final getMicroLoaderVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mMicroLoaderVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0
.end method

.method public final getPendingMainAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mPendingMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0
.end method

.method public final getPendingServiceAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mPendingServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0
.end method

.method public bridge synthetic getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->getProfile()Lcom/texa/carelib/profile/internal/MockProfile;

    move-result-object v0

    return-object v0
.end method

.method public getProfile()Lcom/texa/carelib/profile/internal/MockProfile;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mProfile:Lcom/texa/carelib/profile/internal/MockProfile;

    return-object v0
.end method

.method public final getRunningApp()Lcom/texa/carelib/core/AppType;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mRunningApp:Lcom/texa/carelib/core/AppType;

    return-object v0
.end method

.method public final getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mSessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 253
    iget v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mStatus:I

    return v0
.end method

.method public getSupportedFactoryResetFlags()Ljava/util/EnumSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/texa/carelib/care/accessory/FactoryResetFlag;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 269
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v0, v1, :cond_3

    .line 273
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->getFactoryResetModeFromFirmwareVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)Lcom/texa/carelib/care/accessory/internal/SerialAccessory$FactoryResetMode;

    move-result-object v0

    .line 274
    const-class v1, Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 275
    invoke-static {}, Lcom/texa/carelib/care/accessory/FactoryResetFlag;->values()[Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 276
    sget-object v6, Lcom/texa/carelib/care/accessory/FactoryResetFlag;->PairingTable:Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    if-ne v6, v5, :cond_0

    .line 277
    sget-object v6, Lcom/texa/carelib/care/accessory/internal/SerialAccessory$FactoryResetMode;->Smart:Lcom/texa/carelib/care/accessory/internal/SerialAccessory$FactoryResetMode;

    if-ne v6, v0, :cond_1

    .line 278
    invoke-virtual {v1, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 282
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    .line 270
    :cond_3
    new-instance v0, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {v0}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw v0
.end method

.method public isDTCEncrypted()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isHostAuthenticated()Z
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mIsHostAuthenticated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public loadAccessoryInfo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v0, v1, :cond_0

    return-void

    .line 176
    :cond_0
    new-instance v0, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {v0}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw v0
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 3

    .line 104
    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    .line 106
    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    .line 107
    sget-object p1, Lcom/texa/carelib/care/accessory/internal/MockAccessory$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {v1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 109
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mIsHostAuthenticated:Ljava/lang/Boolean;

    .line 110
    sget-object v1, Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;->UNDEF:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mFirmwareUpgradePermission:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    const/4 v1, 0x0

    .line 111
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mMicroLoaderVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 112
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 113
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mPendingServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 114
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mInterpreterVersion:Ljava/math/BigInteger;

    .line 115
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 116
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mPendingMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 117
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mHardwareRevision:Lcom/texa/carelib/core/utils/Version;

    .line 118
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mMACAddress:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mManufacturerName:Ljava/lang/String;

    .line 120
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mSerialNumber:Ljava/lang/String;

    const/16 v2, 0xff

    .line 121
    iput v2, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mStatus:I

    .line 122
    iput p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mDiagnosisMode:I

    .line 123
    sget-object p1, Lcom/texa/carelib/core/AppType;->UNDEF:Lcom/texa/carelib/core/AppType;

    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mRunningApp:Lcom/texa/carelib/core/AppType;

    .line 124
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mSessionID:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->mConfigurationID:Ljava/math/BigInteger;

    .line 127
    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 128
    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->setMACAddress(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resetToFactory(Ljava/util/EnumSet;Lcom/texa/carelib/core/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/texa/carelib/care/accessory/FactoryResetFlag;",
            ">;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/accessory/events/FactoryResetCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 170
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Not yet implemented."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDiagnosisMode(ILcom/texa/carelib/core/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/accessory/events/SetDiagnosisModeCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    return-void
.end method
