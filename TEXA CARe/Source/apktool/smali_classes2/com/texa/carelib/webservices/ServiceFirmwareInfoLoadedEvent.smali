.class public Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;
.super Lcom/texa/carelib/core/events/ErrorEventBase;
.source "ServiceFirmwareInfoLoadedEvent.java"


# instance fields
.field private final mMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field private final mServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p4}, Lcom/texa/carelib/core/events/ErrorEventBase;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    .line 29
    iput-object p2, p0, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;->mMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 30
    iput-object p3, p0, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;->mServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-void
.end method


# virtual methods
.method public getMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;->mMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0
.end method

.method public getServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;->mServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0
.end method
