.class public Lcom/texa/careapp/utils/TexaProfileDelegate;
.super Lcom/texa/carelib/profile/ProfileDelegate;
.source "TexaProfileDelegate.java"


# static fields
.field public static AUTHENTICATION_SHARED_SECRET:[B


# instance fields
.field private context:Landroid/content/Context;

.field private mArmadilloSharedPreferences:Lat/favre/lib/armadillo/ArmadilloSharedPreferences;

.field private mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

.field private mSecurePreferences:Lcom/texa/securepreferences/SecurePreferences;

.field private password:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 31
    fill-array-data v0, :array_0

    sput-object v0, Lcom/texa/careapp/utils/TexaProfileDelegate;->AUTHENTICATION_SHARED_SECRET:[B

    return-void

    :array_0
    .array-data 1
        0x60t
        0x3dt
        -0x15t
        0x10t
        0x2bt
        0x73t
        -0x52t
        -0x10t
        -0x7bt
        0x7dt
        0x77t
        -0x7ft
        0x1ft
        0x35t
        0x2ct
        0x7t
        0x3bt
        0x61t
        0x8t
        -0x29t
        0x1bt
        -0x21t
        -0x52t
        -0xct
        0x55t
        0x7et
        -0x5dt
        0x9t
        0x24t
        0x14t
        0x2ft
        0x1ct
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/securepreferences/SecurePreferences;Lat/favre/lib/armadillo/ArmadilloSharedPreferences;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/texa/carelib/profile/ProfileDelegate;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/texa/careapp/utils/TexaProfileDelegate;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/texa/careapp/utils/TexaProfileDelegate;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 41
    iput-object p3, p0, Lcom/texa/careapp/utils/TexaProfileDelegate;->mSecurePreferences:Lcom/texa/securepreferences/SecurePreferences;

    .line 42
    iput-object p4, p0, Lcom/texa/careapp/utils/TexaProfileDelegate;->mArmadilloSharedPreferences:Lat/favre/lib/armadillo/ArmadilloSharedPreferences;

    return-void
.end method

.method private getPasswordFromHwid(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 97
    :try_start_0
    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/texa/careapp/utils/TexaProfileDelegate;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v1, p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleByHwid(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 99
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/DongleModel;

    iget-object v3, p0, Lcom/texa/careapp/utils/TexaProfileDelegate;->mSecurePreferences:Lcom/texa/securepreferences/SecurePreferences;

    iget-object v4, p0, Lcom/texa/careapp/utils/TexaProfileDelegate;->mArmadilloSharedPreferences:Lat/favre/lib/armadillo/ArmadilloSharedPreferences;

    invoke-virtual {v1, v3, v4}, Lcom/texa/careapp/model/DongleModel;->getPin(Lcom/texa/securepreferences/SecurePreferences;Lat/favre/lib/armadillo/ArmadilloSharedPreferences;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "getPassword hwid from securePref %s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 101
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/model/DongleModel;

    iget-object v4, p0, Lcom/texa/careapp/utils/TexaProfileDelegate;->mSecurePreferences:Lcom/texa/securepreferences/SecurePreferences;

    iget-object v5, p0, Lcom/texa/careapp/utils/TexaProfileDelegate;->mArmadilloSharedPreferences:Lat/favre/lib/armadillo/ArmadilloSharedPreferences;

    invoke-virtual {v3, v4, v5}, Lcom/texa/careapp/model/DongleModel;->getPin(Lcom/texa/securepreferences/SecurePreferences;Lat/favre/lib/armadillo/ArmadilloSharedPreferences;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/DongleModel;

    iget-object v1, p0, Lcom/texa/careapp/utils/TexaProfileDelegate;->mSecurePreferences:Lcom/texa/securepreferences/SecurePreferences;

    iget-object v2, p0, Lcom/texa/careapp/utils/TexaProfileDelegate;->mArmadilloSharedPreferences:Lat/favre/lib/armadillo/ArmadilloSharedPreferences;

    invoke-virtual {p1, v1, v2}, Lcom/texa/careapp/model/DongleModel;->getPin(Lcom/texa/securepreferences/SecurePreferences;Lat/favre/lib/armadillo/ArmadilloSharedPreferences;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "getPassword with hwid from local %s"

    new-array v1, v2, [Ljava/lang/Object;

    .line 106
    iget-object v2, p0, Lcom/texa/careapp/utils/TexaProfileDelegate;->password:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getPassword with hwid thrown an exception."

    .line 108
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPasswordFromMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 77
    :try_start_0
    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/texa/careapp/utils/TexaProfileDelegate;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v1, p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleByMacAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 79
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/DongleModel;

    iget-object v3, p0, Lcom/texa/careapp/utils/TexaProfileDelegate;->mSecurePreferences:Lcom/texa/securepreferences/SecurePreferences;

    iget-object v4, p0, Lcom/texa/careapp/utils/TexaProfileDelegate;->mArmadilloSharedPreferences:Lat/favre/lib/armadillo/ArmadilloSharedPreferences;

    invoke-virtual {v1, v3, v4}, Lcom/texa/careapp/model/DongleModel;->getPin(Lcom/texa/securepreferences/SecurePreferences;Lat/favre/lib/armadillo/ArmadilloSharedPreferences;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "getPassword macAddress from securePref %s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 81
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/model/DongleModel;

    iget-object v4, p0, Lcom/texa/careapp/utils/TexaProfileDelegate;->mSecurePreferences:Lcom/texa/securepreferences/SecurePreferences;

    iget-object v5, p0, Lcom/texa/careapp/utils/TexaProfileDelegate;->mArmadilloSharedPreferences:Lat/favre/lib/armadillo/ArmadilloSharedPreferences;

    invoke-virtual {v3, v4, v5}, Lcom/texa/careapp/model/DongleModel;->getPin(Lcom/texa/securepreferences/SecurePreferences;Lat/favre/lib/armadillo/ArmadilloSharedPreferences;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/DongleModel;

    iget-object v1, p0, Lcom/texa/careapp/utils/TexaProfileDelegate;->mSecurePreferences:Lcom/texa/securepreferences/SecurePreferences;

    iget-object v2, p0, Lcom/texa/careapp/utils/TexaProfileDelegate;->mArmadilloSharedPreferences:Lat/favre/lib/armadillo/ArmadilloSharedPreferences;

    invoke-virtual {p1, v1, v2}, Lcom/texa/careapp/model/DongleModel;->getPin(Lcom/texa/securepreferences/SecurePreferences;Lat/favre/lib/armadillo/ArmadilloSharedPreferences;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "getPassword with macAddress from local %s"

    new-array v1, v2, [Ljava/lang/Object;

    .line 86
    iget-object v2, p0, Lcom/texa/careapp/utils/TexaProfileDelegate;->password:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getPassword with macAddress thrown an exception."

    .line 88
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/utils/TexaProfileDelegate;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getPassword(Lcom/texa/carelib/communication/DeviceInfo;)Ljava/lang/String;
    .locals 2

    .line 64
    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/careapp/utils/TexaProfileDelegate;->getPasswordFromMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/TexaProfileDelegate;->getPasswordFromHwid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/texa/careapp/utils/TexaProfileDelegate;->password:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getSharedSecret()[B
    .locals 1

    .line 121
    sget-object v0, Lcom/texa/careapp/utils/TexaProfileDelegate;->AUTHENTICATION_SHARED_SECRET:[B

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/texa/careapp/utils/TexaProfileDelegate;->password:Ljava/lang/String;

    return-void
.end method

.method public shouldAuthenticate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
