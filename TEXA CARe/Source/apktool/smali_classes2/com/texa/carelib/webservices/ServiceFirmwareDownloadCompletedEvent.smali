.class public Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;
.super Lcom/texa/carelib/core/events/ErrorEventBase;
.source "ServiceFirmwareDownloadCompletedEvent.java"


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mFirmwareType:Lcom/texa/carelib/webservices/FirmwareType;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/texa/carelib/webservices/FirmwareType;Ljava/io/File;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p4}, Lcom/texa/carelib/core/events/ErrorEventBase;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    .line 27
    iput-object p3, p0, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;->mFile:Ljava/io/File;

    .line 28
    iput-object p2, p0, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;->mFirmwareType:Lcom/texa/carelib/webservices/FirmwareType;

    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getFirmwareType()Lcom/texa/carelib/webservices/FirmwareType;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;->mFirmwareType:Lcom/texa/carelib/webservices/FirmwareType;

    return-object v0
.end method
