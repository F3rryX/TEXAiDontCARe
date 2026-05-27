.class public interface abstract Lcom/texa/carelib/webservices/ServiceFirmwareInfo;
.super Ljava/lang/Object;
.source "ServiceFirmwareInfo.java"

# interfaces
.implements Lcom/texa/carelib/core/ObservableObject;


# static fields
.field public static final PROPERTY_MAIN_APP_VERSION:Ljava/lang/String; = "ServiceFirmwareInfo#PROPERTY_MAIN_APP_VERSION"

.field public static final PROPERTY_SERVICE_APP_VERSION:Ljava/lang/String; = "ServiceFirmwareInfo#PROPERTY_SERVICE_APP_VERSION"

.field public static final PROPERTY_STATUS:Ljava/lang/String; = "ServiceFirmwareInfo#PROPERTY_STATUS"


# virtual methods
.method public abstract getMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
.end method

.method public abstract getServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
.end method

.method public abstract getStatus()Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;
.end method

.method public abstract loadFirmwareInfo(Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/core/utils/FirmwareVersion;",
            "Lcom/texa/carelib/core/utils/FirmwareVersion;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method
