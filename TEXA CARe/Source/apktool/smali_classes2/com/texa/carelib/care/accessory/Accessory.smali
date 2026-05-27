.class public interface abstract Lcom/texa/carelib/care/accessory/Accessory;
.super Ljava/lang/Object;
.source "Accessory.java"

# interfaces
.implements Lcom/texa/carelib/core/ObservableObject;


# static fields
.field public static final PROPERTY_CURRENT_DATE:Ljava/lang/String; = "com.texa.carelib.care.accessory.Accessory#PROPERTY_CURRENT_DATE"

.field public static final PROPERTY_DIAGNOSIS_MODE:Ljava/lang/String; = "com.texa.carelib.care.accessory.Accessory#PROPERTY_DIAGNOSIS_MODE"

.field public static final PROPERTY_DIAGNOSTIC_CONFIGURATION_TYPE:Ljava/lang/String; = "com.texa.carelib.care.accessory.Accessory#PROPERTY_DIAGNOSTIC_CONFIGURATION_TYPE"

.field public static final PROPERTY_DTC_ENCRYPTED:Ljava/lang/String; = "com.texa.carelib.care.accessory.Accessory#PROPERTY_DTC_ENCRYPTED"

.field public static final PROPERTY_ENCRYPTION_LEVEL:Ljava/lang/String; = "com.texa.carelib.care.accessory.Accessory#PROPERTY_ENCRYPTION_LEVEL"

.field public static final PROPERTY_FIRMWARE_UPGRADE_PERMISSION:Ljava/lang/String; = "com.texa.carelib.care.accessory.Accessory#PROPERTY_FIRMWARE_UPGRADE_PERMISSION"

.field public static final PROPERTY_HARDWARE_REVISION:Ljava/lang/String; = "com.texa.carelib.care.accessory.Accessory#PROPERTY_HARDWARE_REVISION"

.field public static final PROPERTY_INTERPRETER_VERSION:Ljava/lang/String; = "com.texa.carelib.care.accessory.Accessory#PROPERTY_INTERPRETER_VERSION"

.field public static final PROPERTY_IS_AUTHENTICATED:Ljava/lang/String; = "com.texa.carelib.care.accessory.Accessory#PROPERTY_IS_AUTHENTICATED"

.field public static final PROPERTY_LAST_PLUG_DATE:Ljava/lang/String; = "com.texa.carelib.care.accessory.Accessory#PROPERTY_LAST_PLUG_DATE"

.field public static final PROPERTY_LAST_UNPLUG_DATE:Ljava/lang/String; = "com.texa.carelib.care.accessory.Accessory#PROPERTY_LAST_UNPLUG_DATE"

.field public static final PROPERTY_MAC_ADDRESS:Ljava/lang/String; = "com.texa.carelib.care.accessory.Accessory#PROPERTY_MAC_ADDRESS"

.field public static final PROPERTY_MAIN_APP_VERSION:Ljava/lang/String; = "com.texa.carelib.care.accessory.Accessory#PROPERTY_MAIN_APP_VERSION"

.field public static final PROPERTY_MANUFACTURER_NAME:Ljava/lang/String; = "com.texa.carelib.care.accessory.Accessory#PROPERTY_MANUFACTURER_NAME"

.field public static final PROPERTY_MICRO_LOADER_VERSION:Ljava/lang/String; = "com.texa.carelib.care.accessory.Accessory#PROPERTY_MICRO_LOADER_VERSION"

.field public static final PROPERTY_PENDING_MAIN_APP_VERSION:Ljava/lang/String; = "com.texa.carelib.care.accessory.Accessory#PROPERTY_PENDING_MAIN_APP_VERSION"

.field public static final PROPERTY_PENDING_SERVICE_APP_VERSION:Ljava/lang/String; = "com.texa.carelib.care.accessory.Accessory#PROPERTY_PENDING_SERVICE_APP_VERSION"

.field public static final PROPERTY_RUNNING_APP:Ljava/lang/String; = "com.texa.carelib.care.accessory.Accessory#PROPERTY_RUNNING_APP"

.field public static final PROPERTY_SERIAL_NUMBER:Ljava/lang/String; = "com.texa.carelib.care.accessory.Accessory#PROPERTY_SERIAL_NUMBER"

.field public static final PROPERTY_SERVICE_APP_VERSION:Ljava/lang/String; = "com.texa.carelib.care.accessory.Accessory#PROPERTY_SERVICE_APP_VERSION"

.field public static final PROPERTY_STATUS:Ljava/lang/String; = "com.texa.carelib.care.accessory.Accessory#PROPERTY_STATUS"


# virtual methods
.method public abstract getCurrentDate()Ljava/util/Date;
.end method

.method public abstract getDiagnosisMode()I
.end method

.method public abstract getDiagnosticConfigurationType()Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;
.end method

.method public abstract getEncryptionLevel()Lcom/texa/carelib/care/accessory/EncryptionLevel;
.end method

.method public abstract getFirmwareUpgradePermission()Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;
.end method

.method public abstract getHardwareRevision()Lcom/texa/carelib/core/utils/Version;
.end method

.method public abstract getInterpreterVersion()Ljava/math/BigInteger;
.end method

.method public abstract getLastPlugEventDate()Ljava/util/Date;
.end method

.method public abstract getLastUnplugEventDate()Ljava/util/Date;
.end method

.method public abstract getMACAddress()Ljava/lang/String;
.end method

.method public abstract getMainAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
.end method

.method public abstract getMicroLoaderVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
.end method

.method public abstract getPendingMainAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
.end method

.method public abstract getPendingServiceAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
.end method

.method public abstract getRunningApp()Lcom/texa/carelib/core/AppType;
.end method

.method public abstract getSerialNumber()Ljava/lang/String;
.end method

.method public abstract getServiceAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
.end method

.method public abstract getStatus()I
.end method

.method public abstract getSupportedFactoryResetFlags()Ljava/util/EnumSet;
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
.end method

.method public abstract isDTCEncrypted()Z
.end method

.method public abstract isHostAuthenticated()Z
.end method

.method public abstract loadAccessoryInfo()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract resetToFactory(Ljava/util/EnumSet;Lcom/texa/carelib/core/Callback;)V
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
.end method

.method public abstract setDiagnosisMode(ILcom/texa/carelib/core/Callback;)V
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
.end method
