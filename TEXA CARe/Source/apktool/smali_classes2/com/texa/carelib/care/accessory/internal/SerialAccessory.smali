.class public Lcom/texa/carelib/care/accessory/internal/SerialAccessory;
.super Lcom/texa/carelib/profile/ProfileSubModule;
.source "SerialAccessory.java"

# interfaces
.implements Lcom/texa/carelib/care/accessory/Accessory;
.implements Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/accessory/internal/SerialAccessory$FactoryResetMode;
    }
.end annotation


# static fields
.field private static final CARE_LEGACY_FIRMWARE_VERSION:Lcom/texa/carelib/core/utils/Version;

.field private static final INVALID_STATUS_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_CONFIGURATION_ID:Ljava/lang/String; = "com.texa.carelib.care.accessory.internal.SerialAccessory#PROPERTY_CONFIGURATION_ID"

.field public static final PROPERTY_SESSION_ID:Ljava/lang/String; = "com.texa.carelib.care.accessory.internal.SerialAccessory#PROPERTY_SESSION_ID"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

.field private mConfigurationID:Ljava/math/BigInteger;

.field private mCurrentDate:Ljava/util/Date;

.field private mDiagnosisMode:I

.field private mDiagnosticConfigurationType:Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

.field private mEncryptionLevel:Lcom/texa/carelib/care/accessory/EncryptionLevel;

.field private mFirmwareUpgradePermission:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

.field private mHardwareRevision:Lcom/texa/carelib/core/utils/Version;

.field private mInternalStatus:I

.field private mInterpreterVersion:Ljava/math/BigInteger;

.field private mIsConfigurationIDSupported:Z

.field private mIsDTCCrypted:Z

.field private mIsFactoryResetInProgress:Z

.field private mIsHostAuthenticated:Ljava/lang/Boolean;

.field private mIsSetDiagnosisModePending:Z

.field private mLastPlugEventDate:Ljava/util/Date;

.field private mLastUnplugEventDate:Ljava/util/Date;

.field private mMACAddress:Ljava/lang/String;

.field private mMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field private mManufacturerName:Ljava/lang/String;

.field private mMicroLoaderVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field private mPendingMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field private mPendingServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field private final mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

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

.field private mSetDiagnosisModeCallback:Lcom/texa/carelib/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/accessory/events/SetDiagnosisModeCompletedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 890
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    .line 929
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v2, v1, v4

    const/4 v2, 0x6

    .line 890
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->INVALID_STATUS_VALUES:Ljava/util/Set;

    .line 929
    new-instance v0, Lcom/texa/carelib/core/utils/Version;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v5, v3, v5}, Lcom/texa/carelib/core/utils/Version;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->CARE_LEGACY_FIRMWARE_VERSION:Lcom/texa/carelib/core/utils/Version;

    const-string v0, "SerialAccessory"

    .line 931
    sput-object v0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/Profile;)V
    .locals 3

    .line 83
    invoke-direct {p0}, Lcom/texa/carelib/profile/ProfileSubModule;-><init>()V

    const/4 v0, 0x0

    .line 85
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsHostAuthenticated:Ljava/lang/Boolean;

    .line 86
    sget-object v1, Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;->UNDEF:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mFirmwareUpgradePermission:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    const/4 v1, 0x0

    .line 87
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mMicroLoaderVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 88
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 89
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mPendingServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 90
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mInterpreterVersion:Ljava/math/BigInteger;

    .line 91
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 92
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mPendingMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 93
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mHardwareRevision:Lcom/texa/carelib/core/utils/Version;

    .line 94
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mMACAddress:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mManufacturerName:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mSerialNumber:Ljava/lang/String;

    const/16 v2, 0xff

    .line 97
    iput v2, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mInternalStatus:I

    .line 98
    iput v2, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mStatus:I

    .line 99
    iput v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mDiagnosisMode:I

    .line 100
    sget-object v2, Lcom/texa/carelib/core/AppType;->UNDEF:Lcom/texa/carelib/core/AppType;

    iput-object v2, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mRunningApp:Lcom/texa/carelib/core/AppType;

    .line 101
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mSessionID:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mConfigurationID:Ljava/math/BigInteger;

    .line 103
    sget-object v1, Lcom/texa/carelib/care/accessory/EncryptionLevel;->DoubleLevelEncryption:Lcom/texa/carelib/care/accessory/EncryptionLevel;

    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mEncryptionLevel:Lcom/texa/carelib/care/accessory/EncryptionLevel;

    const/4 v1, 0x1

    .line 104
    iput-boolean v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsDTCCrypted:Z

    .line 105
    sget-object v1, Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;->ConfigurationFiles:Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mDiagnosticConfigurationType:Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    .line 107
    check-cast p1, Lcom/texa/carelib/profile/internal/SerialProfile;

    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    .line 108
    iput-boolean v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsFactoryResetInProgress:Z

    return-void
.end method

.method private setConfigurationID(Ljava/math/BigInteger;)V
    .locals 3

    .line 786
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mConfigurationID:Ljava/math/BigInteger;

    .line 787
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mConfigurationID:Ljava/math/BigInteger;

    .line 788
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mConfigurationID:Ljava/math/BigInteger;

    const-string v2, "com.texa.carelib.care.accessory.internal.SerialAccessory#PROPERTY_CONFIGURATION_ID"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setCurrentDate(Ljava/util/Date;)V
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mCurrentDate:Ljava/util/Date;

    .line 622
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mCurrentDate:Ljava/util/Date;

    .line 623
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mCurrentDate:Ljava/util/Date;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_CURRENT_DATE"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setDTCEncrypted(Z)V
    .locals 3

    .line 851
    iget-boolean v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsDTCCrypted:Z

    .line 852
    iput-boolean p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsDTCCrypted:Z

    .line 853
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_DTC_ENCRYPTED"

    invoke-direct {v1, p0, v2, v0, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setDiagnosisMode(I)V
    .locals 3

    .line 633
    iget v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mDiagnosisMode:I

    .line 634
    iput p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mDiagnosisMode:I

    .line 635
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mDiagnosisMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_DIAGNOSIS_MODE"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setDiagnosticConfigurationDownloadMode(Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;)V
    .locals 2

    .line 869
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mDiagnosticConfigurationType:Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    .line 870
    new-instance v0, Ljava/beans/PropertyChangeEvent;

    const-string v1, "com.texa.carelib.care.accessory.Accessory#PROPERTY_DIAGNOSTIC_CONFIGURATION_TYPE"

    invoke-direct {v0, p0, v1, p1, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setEncryptionLevel(Lcom/texa/carelib/care/accessory/EncryptionLevel;)V
    .locals 3

    .line 885
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mEncryptionLevel:Lcom/texa/carelib/care/accessory/EncryptionLevel;

    .line 886
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mEncryptionLevel:Lcom/texa/carelib/care/accessory/EncryptionLevel;

    .line 887
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_ENCRYPTION_LEVEL"

    invoke-direct {v1, p0, v2, v0, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setFirmwareUpgradePermission(Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;)V
    .locals 3

    .line 644
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mFirmwareUpgradePermission:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    .line 645
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mFirmwareUpgradePermission:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    .line 646
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mFirmwareUpgradePermission:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_FIRMWARE_UPGRADE_PERMISSION"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setHardwareRevision(Lcom/texa/carelib/core/utils/Version;)V
    .locals 3

    .line 655
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mHardwareRevision:Lcom/texa/carelib/core/utils/Version;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/core/utils/Version;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mHardwareRevision:Lcom/texa/carelib/core/utils/Version;

    .line 659
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mHardwareRevision:Lcom/texa/carelib/core/utils/Version;

    .line 660
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mHardwareRevision:Lcom/texa/carelib/core/utils/Version;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_HARDWARE_REVISION"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_0
    return-void
.end method

.method private setHostAuthenticated(Z)V
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsHostAuthenticated:Ljava/lang/Boolean;

    .line 611
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsHostAuthenticated:Ljava/lang/Boolean;

    .line 612
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsHostAuthenticated:Ljava/lang/Boolean;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_IS_AUTHENTICATED"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setInterpreterVersion(Ljava/math/BigInteger;)V
    .locals 3

    .line 670
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mInterpreterVersion:Ljava/math/BigInteger;

    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mInterpreterVersion:Ljava/math/BigInteger;

    .line 672
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mInterpreterVersion:Ljava/math/BigInteger;

    .line 673
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mInterpreterVersion:Ljava/math/BigInteger;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_INTERPRETER_VERSION"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_0
    return-void
.end method

.method private setLastPlugEventDate(Ljava/util/Date;)V
    .locals 3

    .line 683
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mLastPlugEventDate:Ljava/util/Date;

    .line 684
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mLastPlugEventDate:Ljava/util/Date;

    .line 685
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mLastPlugEventDate:Ljava/util/Date;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_LAST_PLUG_DATE"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setLastUnplugEventDate(Ljava/util/Date;)V
    .locals 3

    .line 694
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mLastUnplugEventDate:Ljava/util/Date;

    .line 695
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mLastUnplugEventDate:Ljava/util/Date;

    .line 696
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mLastUnplugEventDate:Ljava/util/Date;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_LAST_UNPLUG_DATE"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setManufacturerName(Ljava/lang/String;)V
    .locals 3

    .line 729
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mManufacturerName:Ljava/lang/String;

    .line 730
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mManufacturerName:Ljava/lang/String;

    .line 731
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mManufacturerName:Ljava/lang/String;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_MANUFACTURER_NAME"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setMicroLoaderVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 3

    .line 740
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mMicroLoaderVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 741
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mMicroLoaderVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 742
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mMicroLoaderVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_MICRO_LOADER_VERSION"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setPendingMainAPPVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 3

    .line 751
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mPendingMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 752
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mPendingMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 753
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mPendingMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_PENDING_MAIN_APP_VERSION"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setPendingServiceAPPVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 3

    .line 763
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mPendingServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 764
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mPendingServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 765
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mPendingServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_PENDING_SERVICE_APP_VERSION"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setRunningApp(Lcom/texa/carelib/core/AppType;)V
    .locals 3

    .line 774
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mRunningApp:Lcom/texa/carelib/core/AppType;

    .line 775
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mRunningApp:Lcom/texa/carelib/core/AppType;

    .line 776
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mRunningApp:Lcom/texa/carelib/core/AppType;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_RUNNING_APP"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setSerialNumber(Ljava/lang/String;)V
    .locals 3

    .line 808
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mSerialNumber:Ljava/lang/String;

    .line 809
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mSerialNumber:Ljava/lang/String;

    .line 810
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mSerialNumber:Ljava/lang/String;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_SERIAL_NUMBER"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setServiceAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 3

    .line 819
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 820
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 821
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_SERVICE_APP_VERSION"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setSessionID(Ljava/lang/String;)V
    .locals 3

    .line 797
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mSessionID:Ljava/lang/String;

    .line 798
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mSessionID:Ljava/lang/String;

    .line 799
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mSessionID:Ljava/lang/String;

    const-string v2, "com.texa.carelib.care.accessory.internal.SerialAccessory#PROPERTY_SESSION_ID"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method private setStatus(I)V
    .locals 5

    .line 831
    iget v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mStatus:I

    .line 832
    iput p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mStatus:I

    .line 833
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "com.texa.carelib.care.accessory.Accessory#PROPERTY_STATUS"

    invoke-direct {v1, p0, v4, v2, v3}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    if-eq v0, p1, :cond_0

    .line 835
    sget-object v0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->INVALID_STATUS_VALUES:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 838
    iget-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v0, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    :cond_0
    return-void
.end method

.method private terminateFactoryReset(Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 596
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mResetToFactoryCallback:Lcom/texa/carelib/core/Callback;

    if-eqz v0, :cond_0

    .line 597
    new-instance v1, Lcom/texa/carelib/care/accessory/events/FactoryResetCompletedEvent;

    iget-object v2, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {v2}, Lcom/texa/carelib/profile/internal/SerialProfile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/texa/carelib/care/accessory/events/FactoryResetCompletedEvent;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 598
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mResetToFactoryCallback:Lcom/texa/carelib/core/Callback;

    :cond_0
    const/4 p1, 0x0

    .line 601
    iput-boolean p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsFactoryResetInProgress:Z

    return-void
.end method


# virtual methods
.method getConfigurationID()Ljava/math/BigInteger;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mConfigurationID:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getCurrentDate()Ljava/util/Date;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mCurrentDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDiagnosisMode()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mDiagnosisMode:I

    return v0
.end method

.method public getDiagnosticConfigurationType()Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mDiagnosticConfigurationType:Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    return-object v0
.end method

.method public getEncryptionLevel()Lcom/texa/carelib/care/accessory/EncryptionLevel;
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mEncryptionLevel:Lcom/texa/carelib/care/accessory/EncryptionLevel;

    return-object v0
.end method

.method getFactoryResetModeFromFirmwareVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)Lcom/texa/carelib/care/accessory/internal/SerialAccessory$FactoryResetMode;
    .locals 2

    if-eqz p1, :cond_1

    .line 583
    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getProductName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ETRK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getProductName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CARE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->CARE_LEGACY_FIRMWARE_VERSION:Lcom/texa/carelib/core/utils/Version;

    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/core/utils/Version;->compareTo(Lcom/texa/carelib/core/utils/Version;)I

    move-result p1

    if-gez p1, :cond_1

    .line 584
    :cond_0
    sget-object p1, Lcom/texa/carelib/care/accessory/internal/SerialAccessory$FactoryResetMode;->Smart:Lcom/texa/carelib/care/accessory/internal/SerialAccessory$FactoryResetMode;

    return-object p1

    .line 587
    :cond_1
    sget-object p1, Lcom/texa/carelib/care/accessory/internal/SerialAccessory$FactoryResetMode;->Legacy:Lcom/texa/carelib/care/accessory/internal/SerialAccessory$FactoryResetMode;

    return-object p1
.end method

.method public getFirmwareUpgradePermission()Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mFirmwareUpgradePermission:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    return-object v0
.end method

.method public final getHardwareRevision()Lcom/texa/carelib/core/utils/Version;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mHardwareRevision:Lcom/texa/carelib/core/utils/Version;

    return-object v0
.end method

.method public final getInterpreterVersion()Ljava/math/BigInteger;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mInterpreterVersion:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getLastPlugEventDate()Ljava/util/Date;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mLastPlugEventDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getLastUnplugEventDate()Ljava/util/Date;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mLastUnplugEventDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getMACAddress()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mMACAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getMainAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0
.end method

.method public final getManufactureName()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mManufacturerName:Ljava/lang/String;

    return-object v0
.end method

.method public final getMicroLoaderVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mMicroLoaderVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0
.end method

.method public final getPendingMainAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mPendingMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0
.end method

.method public final getPendingServiceAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mPendingServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0
.end method

.method public bridge synthetic getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->getProfile()Lcom/texa/carelib/profile/internal/SerialProfile;

    move-result-object v0

    return-object v0
.end method

.method public getProfile()Lcom/texa/carelib/profile/internal/SerialProfile;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    return-object v0
.end method

.method public final getRunningApp()Lcom/texa/carelib/core/AppType;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mRunningApp:Lcom/texa/carelib/core/AppType;

    return-object v0
.end method

.method public final getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mSessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 309
    iget v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mStatus:I

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

    .line 562
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v0, v1, :cond_3

    .line 566
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->getFactoryResetModeFromFirmwareVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)Lcom/texa/carelib/care/accessory/internal/SerialAccessory$FactoryResetMode;

    move-result-object v0

    .line 567
    const-class v1, Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 568
    invoke-static {}, Lcom/texa/carelib/care/accessory/FactoryResetFlag;->values()[Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 569
    sget-object v6, Lcom/texa/carelib/care/accessory/FactoryResetFlag;->PairingTable:Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    if-ne v6, v5, :cond_0

    .line 570
    sget-object v6, Lcom/texa/carelib/care/accessory/internal/SerialAccessory$FactoryResetMode;->Smart:Lcom/texa/carelib/care/accessory/internal/SerialAccessory$FactoryResetMode;

    if-ne v6, v0, :cond_1

    .line 571
    invoke-virtual {v1, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 574
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    .line 563
    :cond_3
    new-instance v0, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {v0}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw v0
.end method

.method public isDTCEncrypted()Z
    .locals 1

    .line 844
    iget-boolean v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsDTCCrypted:Z

    return v0
.end method

.method isFactoryResetInProgress()Z
    .locals 1

    .line 592
    iget-boolean v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsFactoryResetInProgress:Z

    return v0
.end method

.method public isHostAuthenticated()Z
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsHostAuthenticated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public loadAccessoryInfo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 129
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    .line 134
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x41

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    .line 135
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0xee

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    .line 136
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x4e

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    .line 137
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0xe6

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    .line 138
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0xed

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    .line 139
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0xe9

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    .line 140
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0xea

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    .line 141
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x4f

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    .line 142
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    .line 143
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x70

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void

    .line 130
    :cond_0
    new-instance v0, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {v0}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw v0
.end method

.method public loadInfo()V
    .locals 4

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->loadAccessoryInfo()V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 122
    sget-object v1, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Load data has failed."

    invoke-static {v1, v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 5

    .line 148
    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    .line 150
    sget-object v0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {v1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    const/4 v4, 0x5

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->isFactoryResetInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    invoke-direct {p0, v3}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->terminateFactoryReset(Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 152
    :cond_1
    sget-object v0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->TAG:Ljava/lang/String;

    const-string v4, "Reset host authenticated(communication status CONNECTED)"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsHostAuthenticated:Ljava/lang/Boolean;

    .line 154
    iput-object v3, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mSetDiagnosisModeCallback:Lcom/texa/carelib/core/Callback;

    .line 155
    iput-boolean v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsSetDiagnosisModePending:Z

    .line 156
    iput-boolean v2, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsConfigurationIDSupported:Z

    .line 157
    sget-object v0, Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;->UNDEF:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    iput-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mFirmwareUpgradePermission:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    .line 158
    iput-object v3, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mMicroLoaderVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 159
    iput-object v3, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 160
    iput-object v3, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mPendingServiceAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 161
    iput-object v3, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mInterpreterVersion:Ljava/math/BigInteger;

    .line 162
    iput-object v3, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 163
    iput-object v3, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mPendingMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 164
    iput-object v3, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mHardwareRevision:Lcom/texa/carelib/core/utils/Version;

    .line 165
    iput-object v3, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mMACAddress:Ljava/lang/String;

    .line 166
    iput-object v3, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mManufacturerName:Ljava/lang/String;

    .line 167
    iput-object v3, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mSerialNumber:Ljava/lang/String;

    const/16 v0, 0xff

    .line 168
    iput v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mInternalStatus:I

    .line 169
    iput v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mStatus:I

    .line 170
    iput v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mDiagnosisMode:I

    .line 171
    sget-object v0, Lcom/texa/carelib/core/AppType;->UNDEF:Lcom/texa/carelib/core/AppType;

    iput-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mRunningApp:Lcom/texa/carelib/core/AppType;

    .line 172
    iput-object v3, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mSessionID:Ljava/lang/String;

    .line 173
    iput-object v3, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mConfigurationID:Ljava/math/BigInteger;

    .line 175
    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getDeviceInfo()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getDeviceInfo()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setMACAddress(Ljava/lang/String;)V

    .line 179
    :cond_2
    sget-object v0, Lcom/texa/carelib/care/accessory/EncryptionLevel;->DoubleLevelEncryption:Lcom/texa/carelib/care/accessory/EncryptionLevel;

    iput-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mEncryptionLevel:Lcom/texa/carelib/care/accessory/EncryptionLevel;

    .line 180
    iput-boolean v2, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsDTCCrypted:Z

    .line 181
    sget-object v0, Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;->ConfigurationFiles:Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    iput-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mDiagnosticConfigurationType:Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    .line 197
    :cond_3
    :goto_0
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    if-ne v0, p1, :cond_4

    const/4 v1, 0x1

    .line 198
    :cond_4
    iget-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    const/16 v0, 0xe6

    invoke-virtual {p1, v1, v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->enableCommandSubscription(ZI)V

    .line 199
    iget-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    const/16 v0, 0x41

    invoke-virtual {p1, v1, v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->enableCommandSubscription(ZI)V

    .line 200
    iget-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    const/16 v0, 0x11

    invoke-virtual {p1, v1, v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->enableCommandSubscription(ZI)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 4

    .line 325
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x4d

    if-ne v2, p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 327
    :goto_0
    iput-boolean v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsConfigurationIDSupported:Z

    if-eqz v0, :cond_1

    .line 329
    invoke-static {p2}, Lcom/texa/carelib/profile/internal/parser/GetConfigurationIDPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Ljava/math/BigInteger;

    move-result-object p1

    .line 330
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setConfigurationID(Ljava/math/BigInteger;)V

    .line 332
    :try_start_0
    iget p2, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mInternalStatus:I

    invoke-static {p2, p1}, Lcom/texa/carelib/care/accessory/internal/AccessoryStatusEvaluator;->evaluate(ILjava/math/BigInteger;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setStatus(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 336
    :cond_1
    iget p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mInternalStatus:I

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setStatus(I)V

    goto/16 :goto_2

    :cond_2
    const/16 v2, 0x10

    const/4 v3, 0x0

    if-ne v2, p1, :cond_3

    if-eqz p3, :cond_13

    .line 340
    iget-boolean p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsSetDiagnosisModePending:Z

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mSetDiagnosisModeCallback:Lcom/texa/carelib/core/Callback;

    if-eqz p1, :cond_13

    .line 341
    new-instance p2, Lcom/texa/carelib/care/accessory/events/SetDiagnosisModeCompletedEvent;

    invoke-direct {p2, p0, p3}, Lcom/texa/carelib/care/accessory/events/SetDiagnosisModeCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, p2}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    .line 342
    iput-object v3, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mSetDiagnosisModeCallback:Lcom/texa/carelib/core/Callback;

    .line 343
    iput-boolean v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsSetDiagnosisModePending:Z

    goto/16 :goto_2

    :cond_3
    const/16 v2, 0xc0

    if-ne v2, p1, :cond_4

    .line 347
    invoke-virtual {p0, p2, p3}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->onResetToFactoryDefault(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto/16 :goto_2

    :cond_4
    const/16 v2, 0xed

    if-ne v2, p1, :cond_6

    .line 349
    sget-object p1, Lcom/texa/carelib/care/accessory/EncryptionLevel;->DoubleLevelEncryption:Lcom/texa/carelib/care/accessory/EncryptionLevel;

    .line 351
    sget-object v1, Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;->ConfigurationFiles:Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    if-nez p3, :cond_5

    .line 354
    invoke-static {p2}, Lcom/texa/carelib/profile/internal/parser/GetSettingsParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/GetSettingsParser$GetSettingsResponse;

    move-result-object p1

    .line 355
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/GetSettingsParser$GetSettingsResponse;->getDiagnosticConfigurationDownloadMode()Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    move-result-object v1

    .line 356
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/GetSettingsParser$GetSettingsResponse;->isDTCEncrypted()Z

    move-result v0

    .line 357
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/GetSettingsParser$GetSettingsResponse;->getEncryptionLevel()Lcom/texa/carelib/care/accessory/EncryptionLevel;

    move-result-object p1

    .line 360
    :cond_5
    invoke-direct {p0, v1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setDiagnosticConfigurationDownloadMode(Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;)V

    .line 361
    invoke-direct {p0, v0}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setDTCEncrypted(Z)V

    .line 362
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setEncryptionLevel(Lcom/texa/carelib/care/accessory/EncryptionLevel;)V

    goto/16 :goto_2

    :cond_6
    if-nez p3, :cond_13

    const/16 v0, 0x11

    if-eq p1, v0, :cond_12

    const/16 p3, 0x41

    if-eq p1, p3, :cond_f

    const/16 p3, 0x70

    if-eq p1, p3, :cond_e

    const/16 p3, 0xe6

    if-eq p1, p3, :cond_c

    const/16 p3, 0xee

    if-eq p1, p3, :cond_b

    const/16 p3, 0x4e

    if-eq p1, p3, :cond_a

    const/16 p3, 0x4f

    if-eq p1, p3, :cond_9

    const/16 p3, 0xe9

    if-eq p1, p3, :cond_8

    const/16 p3, 0xea

    if-eq p1, p3, :cond_7

    goto/16 :goto_2

    .line 415
    :cond_7
    invoke-static {p2}, Lcom/texa/carelib/profile/internal/parser/GetHardwareVersionPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/core/utils/Version;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setHardwareRevision(Lcom/texa/carelib/core/utils/Version;)V

    goto/16 :goto_2

    .line 423
    :cond_8
    invoke-static {p2}, Lcom/texa/carelib/profile/internal/parser/GetBTMacAddressPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setMACAddress(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 383
    :cond_9
    invoke-static {p2}, Lcom/texa/carelib/profile/internal/parser/GetInterpreterVersionPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Ljava/math/BigInteger;

    move-result-object p1

    .line 384
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setInterpreterVersion(Ljava/math/BigInteger;)V

    goto/16 :goto_2

    .line 388
    :cond_a
    invoke-static {p2}, Lcom/texa/carelib/profile/internal/parser/GetSessionIDPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setSessionID(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 419
    :cond_b
    invoke-static {p2}, Lcom/texa/carelib/profile/internal/parser/GetSerialNumberPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setSerialNumber(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 367
    :cond_c
    invoke-static {p2}, Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;

    move-result-object p1

    .line 369
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;->isHostAuthenticated()Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setHostAuthenticated(Z)V

    .line 370
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;->getStatus()I

    move-result p1

    iput p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mInternalStatus:I

    .line 373
    :try_start_1
    iget-boolean p2, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsConfigurationIDSupported:Z

    if-eqz p2, :cond_d

    .line 374
    invoke-virtual {p0}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->getConfigurationID()Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/texa/carelib/care/accessory/internal/AccessoryStatusEvaluator;->evaluate(ILjava/math/BigInteger;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setStatus(I)V

    goto/16 :goto_2

    .line 376
    :cond_d
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setStatus(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 442
    :cond_e
    invoke-static {p2}, Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 445
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;->getCurrentDate()Ljava/util/Date;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setCurrentDate(Ljava/util/Date;)V

    .line 446
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;->getPlugDate()Ljava/util/Date;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setLastPlugEventDate(Ljava/util/Date;)V

    .line 447
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;->getUnPlugDate()Ljava/util/Date;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setLastUnplugEventDate(Ljava/util/Date;)V

    goto :goto_2

    .line 392
    :cond_f
    invoke-static {p2}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 395
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->isUpdatingProcessAvailable()Z

    move-result p2

    if-eqz p2, :cond_10

    sget-object p2, Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;->YES:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    goto :goto_1

    :cond_10
    sget-object p2, Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;->NO:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    :goto_1
    invoke-direct {p0, p2}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setFirmwareUpgradePermission(Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;)V

    .line 398
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->getPendingMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setPendingMainAPPVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 399
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->getPendingServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setPendingServiceAPPVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 402
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->getServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setServiceAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 403
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->getMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setMainAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 404
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->getMicroLoaderVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setMicroLoaderVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 406
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->isBootloaderRunning()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 407
    sget-object p1, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setRunningApp(Lcom/texa/carelib/core/AppType;)V

    goto :goto_2

    .line 409
    :cond_11
    sget-object p1, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setRunningApp(Lcom/texa/carelib/core/AppType;)V

    goto :goto_2

    .line 427
    :cond_12
    invoke-static {p2}, Lcom/texa/carelib/profile/internal/parser/GetDiagnosisModePacketParser;->parse(Lcom/texa/carelib/communication/Message;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->setDiagnosisMode(I)V

    .line 428
    iget-boolean p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsSetDiagnosisModePending:Z

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mSetDiagnosisModeCallback:Lcom/texa/carelib/core/Callback;

    if-eqz p1, :cond_13

    .line 429
    new-instance p2, Lcom/texa/carelib/care/accessory/events/SetDiagnosisModeCompletedEvent;

    invoke-direct {p2, p0, p3}, Lcom/texa/carelib/care/accessory/events/SetDiagnosisModeCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, p2}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    .line 430
    iput-object v3, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mSetDiagnosisModeCallback:Lcom/texa/carelib/core/Callback;

    .line 431
    iput-boolean v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsSetDiagnosisModePending:Z

    :catch_0
    :cond_13
    :goto_2
    return-void
.end method

.method onResetToFactoryDefault(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 463
    invoke-direct {p0, p2}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->terminateFactoryReset(Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method public resetToFactory(Ljava/util/EnumSet;Lcom/texa/carelib/core/Callback;)V
    .locals 4
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

    .line 488
    sget-object v0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "resetToFactory"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    invoke-virtual {p0}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->isFactoryResetInProgress()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 494
    iput-boolean v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsFactoryResetInProgress:Z

    .line 495
    iput-object p2, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mResetToFactoryCallback:Lcom/texa/carelib/core/Callback;

    .line 497
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/Utils;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 498
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->terminateFactoryReset(Lcom/texa/carelib/core/CareError;)V

    goto/16 :goto_3

    .line 503
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->getMainAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p2

    .line 504
    invoke-virtual {p0, p2}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->getFactoryResetModeFromFirmwareVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)Lcom/texa/carelib/care/accessory/internal/SerialAccessory$FactoryResetMode;

    move-result-object p2

    .line 505
    sget-object v2, Lcom/texa/carelib/care/accessory/internal/SerialAccessory$1;->$SwitchMap$com$texa$carelib$care$accessory$internal$SerialAccessory$FactoryResetMode:[I

    invoke-virtual {p2}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory$FactoryResetMode;->ordinal()I

    move-result p2

    aget p2, v2, p2

    const/16 v2, 0xff

    const/4 v3, 0x2

    if-eq p2, v0, :cond_3

    if-ne p2, v3, :cond_2

    .line 531
    sget-object p2, Lcom/texa/carelib/care/accessory/FactoryResetFlag;->UserData:Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    .line 534
    sget-object v2, Lcom/texa/carelib/care/accessory/FactoryResetFlag;->PairingTable:Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 p2, p2, 0x2

    .line 540
    :cond_1
    sget-object v2, Lcom/texa/carelib/care/accessory/FactoryResetFlag;->DiagnosticConfiguration:Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    .line 546
    :cond_2
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Factory reset mode not yet managed."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 512
    :cond_3
    sget-object p2, Lcom/texa/carelib/care/accessory/FactoryResetFlag;->UserData:Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    sget-object p2, Lcom/texa/carelib/care/accessory/FactoryResetFlag;->PairingTable:Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/16 p2, 0xff

    .line 518
    :goto_1
    sget-object v0, Lcom/texa/carelib/care/accessory/FactoryResetFlag;->DiagnosticConfiguration:Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v1, 0xff

    .line 550
    :cond_6
    :goto_2
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 551
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 552
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->putUnsignedByte(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Z

    .line 553
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->putUnsignedByte(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Z

    .line 555
    iget-object p2, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v0, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    :goto_3
    return-void

    .line 491
    :cond_7
    new-instance p1, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    const-string p2, "Factory reset is already running."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDiagnosisMode(ILcom/texa/carelib/core/Callback;)V
    .locals 3
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

    .line 473
    iget v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mDiagnosisMode:I

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_1

    .line 475
    new-instance p1, Lcom/texa/carelib/care/accessory/events/SetDiagnosisModeCompletedEvent;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/texa/carelib/care/accessory/events/SetDiagnosisModeCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p2, p1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    goto :goto_0

    .line 477
    :cond_0
    iget-boolean v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsSetDiagnosisModePending:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 480
    iput-boolean v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mIsSetDiagnosisModePending:Z

    .line 481
    iput-object p2, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mSetDiagnosisModeCallback:Lcom/texa/carelib/core/Callback;

    .line 482
    iget-object p2, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    invoke-virtual {v1, v0}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    :cond_1
    :goto_0
    return-void

    .line 478
    :cond_2
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Cannot change diagnosis mode. Operation is already pending."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setMACAddress(Ljava/lang/String;)V
    .locals 3

    .line 706
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mMACAddress:Ljava/lang/String;

    .line 707
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mMACAddress:Ljava/lang/String;

    .line 708
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mMACAddress:Ljava/lang/String;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_MAC_ADDRESS"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method setMainAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 3

    .line 718
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 719
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 720
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->mMainAPPVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_MAIN_APP_VERSION"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/accessory/internal/SerialAccessory;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method
