.class Lcom/texa/carelib/communication/internal/DeviceConfiguration;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/communication/internal/DeviceConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceConfiguration"


# instance fields
.field private mHasBeacon:Z

.field private mPIN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/texa/carelib/communication/internal/DeviceConfiguration;->mHasBeacon:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/carelib/communication/internal/DeviceConfiguration$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/DeviceConfiguration;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/texa/carelib/communication/internal/DeviceConfiguration;Z)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/texa/carelib/communication/internal/DeviceConfiguration;->setHasBeacon(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/texa/carelib/communication/internal/DeviceConfiguration;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/texa/carelib/communication/internal/DeviceConfiguration;->setPIN(Ljava/lang/String;)V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/texa/carelib/communication/internal/DeviceConfiguration;
    .locals 4

    const-string v0, "has_beacon"

    const-string v1, "pin"

    .line 38
    new-instance v2, Lcom/texa/carelib/communication/internal/DeviceConfiguration$Builder;

    invoke-direct {v2}, Lcom/texa/carelib/communication/internal/DeviceConfiguration$Builder;-><init>()V

    .line 41
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 43
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/texa/carelib/communication/internal/DeviceConfiguration$Builder;->setPIN(Ljava/lang/String;)Lcom/texa/carelib/communication/internal/DeviceConfiguration$Builder;

    .line 46
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 47
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/texa/carelib/communication/internal/DeviceConfiguration$Builder;->setHasBeacon(Z)Lcom/texa/carelib/communication/internal/DeviceConfiguration$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 50
    sget-object v0, Lcom/texa/carelib/communication/internal/DeviceConfiguration;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Could not convert json string to object."

    invoke-static {v0, p0, v3, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/texa/carelib/communication/internal/DeviceConfiguration$Builder;->build()Lcom/texa/carelib/communication/internal/DeviceConfiguration;

    move-result-object p0

    return-object p0
.end method

.method private setHasBeacon(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/texa/carelib/communication/internal/DeviceConfiguration;->mHasBeacon:Z

    return-void
.end method

.method private setPIN(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/DeviceConfiguration;->mPIN:Ljava/lang/String;

    return-void
.end method

.method public static toJson(Lcom/texa/carelib/communication/internal/DeviceConfiguration;)Ljava/lang/String;
    .locals 4

    .line 57
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/DeviceConfiguration;->getPIN()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "pin"

    if-eqz v1, :cond_0

    .line 60
    :try_start_1
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/DeviceConfiguration;->getPIN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 62
    :cond_0
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string v1, "has_beacon"

    .line 64
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/DeviceConfiguration;->hasBeacon()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 66
    sget-object v1, Lcom/texa/carelib/communication/internal/DeviceConfiguration;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Could not convert object to json string."

    invoke-static {v1, p0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getPIN()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/DeviceConfiguration;->mPIN:Ljava/lang/String;

    return-object v0
.end method

.method public hasBeacon()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/texa/carelib/communication/internal/DeviceConfiguration;->mHasBeacon:Z

    return v0
.end method
