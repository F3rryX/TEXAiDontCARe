.class public abstract Lcom/texa/carelib/profile/ProfileDelegate;
.super Ljava/lang/Object;
.source "ProfileDelegate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getApplicationContext()Landroid/content/Context;
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 76
    invoke-static {}, Lcom/texa/carelib/core/utils/internal/Utils;->getUTCNow()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPassword(Lcom/texa/carelib/communication/DeviceInfo;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSharedSecret()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldAuthenticate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
