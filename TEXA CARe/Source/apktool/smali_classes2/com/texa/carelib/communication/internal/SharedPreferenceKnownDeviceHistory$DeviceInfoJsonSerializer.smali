.class Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory$DeviceInfoJsonSerializer;
.super Ljava/lang/Object;
.source "SharedPreferenceKnownDeviceHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceInfoJsonSerializer"
.end annotation


# static fields
.field private static final JSON_FIELD_ADDRESS:Ljava/lang/String; = "address"

.field private static final JSON_FIELD_BOND_STATE:Ljava/lang/String; = "bond_state"

.field private static final JSON_FIELD_LAST_CONNECTION_TIME:Ljava/lang/String; = "last_connection_time"

.field private static final JSON_FIELD_NAME:Ljava/lang/String; = "name"

.field private static final JSON_FIELD_RSSI:Ljava/lang/String; = "rssi"

.field private static final JSON_FIELD_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String; = "DeviceInfoJsonSerializer"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory$1;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory$DeviceInfoJsonSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method deserialize(Ljava/lang/String;)Lcom/texa/carelib/communication/DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 297
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory$DeviceInfoJsonSerializer;->deserialize(Lorg/json/JSONObject;)Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method deserialize(Lorg/json/JSONObject;)Lcom/texa/carelib/communication/DeviceInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "address"

    .line 302
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 306
    new-instance v1, Lcom/texa/carelib/communication/DeviceInfo$Builder;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/texa/carelib/communication/DeviceInfo$Builder;-><init>(Ljava/lang/String;)V

    const-string v0, "bond_state"

    .line 307
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 308
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setBondState(I)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    :cond_0
    const-string/jumbo v0, "type"

    .line 311
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 312
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setType(I)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    :cond_1
    const-string v0, "rssi"

    .line 315
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 316
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setRSSI(Ljava/lang/Integer;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    :cond_2
    const-string v0, "name"

    .line 319
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 320
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setName(Ljava/lang/String;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    :cond_3
    const-string v0, "last_connection_time"

    .line 323
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 324
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setLastConnectionDateTime(Ljava/util/Date;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    .line 327
    :cond_4
    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->build()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object p1

    return-object p1

    .line 303
    :cond_5
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "\"address\" field is is null or missing."

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public serialize(Lcom/texa/carelib/communication/DeviceInfo;)Ljava/lang/String;
    .locals 5

    .line 265
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "address"

    .line 267
    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bond_state"

    .line 268
    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getBondState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    .line 269
    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 271
    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getRSSI()Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "rssi"

    if-eqz v1, :cond_0

    .line 272
    :try_start_1
    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getRSSI()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 274
    :cond_0
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    :goto_0
    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "name"

    if-eqz v1, :cond_1

    .line 278
    :try_start_2
    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 280
    :cond_1
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    :goto_1
    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getLastConnectionDateTime()Ljava/util/Date;

    move-result-object v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "last_connection_time"

    if-eqz v1, :cond_2

    .line 284
    :try_start_3
    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getLastConnectionDateTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_2

    .line 286
    :cond_2
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 289
    sget-object v1, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory$DeviceInfoJsonSerializer;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Could not convert object to json string."

    invoke-static {v1, p1, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
