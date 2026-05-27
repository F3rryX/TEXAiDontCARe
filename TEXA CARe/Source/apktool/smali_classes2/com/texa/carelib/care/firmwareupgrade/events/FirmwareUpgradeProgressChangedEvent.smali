.class public Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeProgressChangedEvent;
.super Lcom/texa/carelib/core/events/ProgressChangedEvent;
.source "FirmwareUpgradeProgressChangedEvent.java"


# instance fields
.field private final mAppType:Lcom/texa/carelib/core/AppType;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/texa/carelib/core/AppType;F)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p3}, Lcom/texa/carelib/core/events/ProgressChangedEvent;-><init>(Ljava/lang/Object;F)V

    .line 26
    iput-object p2, p0, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeProgressChangedEvent;->mAppType:Lcom/texa/carelib/core/AppType;

    return-void
.end method


# virtual methods
.method public getAppType()Lcom/texa/carelib/core/AppType;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeProgressChangedEvent;->mAppType:Lcom/texa/carelib/core/AppType;

    return-object v0
.end method
