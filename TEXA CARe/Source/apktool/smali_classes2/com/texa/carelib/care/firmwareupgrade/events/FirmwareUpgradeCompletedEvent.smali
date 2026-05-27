.class public Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeCompletedEvent;
.super Lcom/texa/carelib/core/events/ErrorEventBase;
.source "FirmwareUpgradeCompletedEvent.java"


# instance fields
.field private final mAppType:Lcom/texa/carelib/core/AppType;

.field private final mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/texa/carelib/core/AppType;Ljava/io/File;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p4}, Lcom/texa/carelib/core/events/ErrorEventBase;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    .line 31
    iput-object p2, p0, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeCompletedEvent;->mAppType:Lcom/texa/carelib/core/AppType;

    .line 32
    iput-object p3, p0, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeCompletedEvent;->mFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getAppType()Lcom/texa/carelib/core/AppType;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeCompletedEvent;->mAppType:Lcom/texa/carelib/core/AppType;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeCompletedEvent;->mFile:Ljava/io/File;

    return-object v0
.end method
