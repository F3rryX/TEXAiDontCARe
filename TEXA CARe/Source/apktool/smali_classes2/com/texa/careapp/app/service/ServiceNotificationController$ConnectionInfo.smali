.class Lcom/texa/careapp/app/service/ServiceNotificationController$ConnectionInfo;
.super Ljava/lang/Object;
.source "ServiceNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/service/ServiceNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectionInfo"
.end annotation


# instance fields
.field disconnectionTimestamp:J

.field hwId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 2

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/texa/careapp/app/service/ServiceNotificationController$ConnectionInfo;->disconnectionTimestamp:J

    if-eqz p1, :cond_0

    .line 377
    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/service/ServiceNotificationController$ConnectionInfo;->hwId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 379
    iput-object p1, p0, Lcom/texa/careapp/app/service/ServiceNotificationController$ConnectionInfo;->hwId:Ljava/lang/String;

    :goto_0
    return-void
.end method
