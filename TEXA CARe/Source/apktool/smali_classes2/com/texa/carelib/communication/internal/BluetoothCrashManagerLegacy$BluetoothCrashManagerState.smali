.class Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;
.super Ljava/lang/Object;
.source "BluetoothCrashManagerLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothCrashManagerState"
.end annotation


# instance fields
.field private mDetectedCrashCount:J

.field private final mDistinctBluetoothAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastBluetoothCrashDetectionTime:J

.field private mLastRecoverySucceeded:Z

.field private mRecoveryAttemptCount:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 288
    iput-wide v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->mLastBluetoothCrashDetectionTime:J

    .line 289
    iput-wide v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->mDetectedCrashCount:J

    const/4 v0, 0x0

    .line 290
    iput v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->mRecoveryAttemptCount:I

    .line 291
    iput-boolean v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->mLastRecoverySucceeded:Z

    .line 292
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->mDistinctBluetoothAddresses:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;)Ljava/util/Set;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->mDistinctBluetoothAddresses:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$102(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;J)J
    .locals 0

    .line 280
    iput-wide p1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->mLastBluetoothCrashDetectionTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;)J
    .locals 2

    .line 280
    iget-wide v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->mDetectedCrashCount:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;J)J
    .locals 0

    .line 280
    iput-wide p1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->mDetectedCrashCount:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;)I
    .locals 0

    .line 280
    iget p0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->mRecoveryAttemptCount:I

    return p0
.end method

.method static synthetic access$302(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;I)I
    .locals 0

    .line 280
    iput p1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->mRecoveryAttemptCount:I

    return p1
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;
    .locals 11

    const-string v0, "address"

    const-string v1, "remote_device_list"

    const-string v2, "last_recovery_succeeded"

    const-string v3, "recovery_attempt_count"

    const-string v4, "detected_crash_count"

    const-string v5, "last_bluetooth_crash_detection_time"

    .line 319
    new-instance v6, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;

    invoke-direct {v6}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;-><init>()V

    .line 320
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v7, 0x0

    .line 322
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 325
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v6, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->mLastBluetoothCrashDetectionTime:J

    .line 328
    :cond_0
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 329
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v6, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->mDetectedCrashCount:J

    .line 332
    :cond_1
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 333
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v6, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->mRecoveryAttemptCount:I

    .line 336
    :cond_2
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 337
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v6, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->mLastRecoverySucceeded:Z

    .line 340
    :cond_3
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 341
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    .line 342
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 343
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 344
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 345
    iget-object v3, v6, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->mDistinctBluetoothAddresses:Ljava/util/Set;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 350
    invoke-static {}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->access$500()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "Could not convert json to object."

    invoke-static {v0, p0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-object v6
.end method

.method public static toJson(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;)Ljava/lang/String;
    .locals 5

    .line 296
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "last_bluetooth_crash_detection_time"

    .line 298
    iget-wide v2, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->mLastBluetoothCrashDetectionTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "detected_crash_count"

    .line 299
    iget-wide v2, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->mDetectedCrashCount:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "recovery_attempt_count"

    .line 300
    iget v2, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->mRecoveryAttemptCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "last_recovery_succeeded"

    .line 301
    iget-boolean v2, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->mLastRecoverySucceeded:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 303
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 304
    iget-object p0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->mDistinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 305
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "address"

    .line 306
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string p0, "remote_device_list"

    .line 309
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 312
    invoke-static {}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->access$500()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Could not convert object to Json."

    invoke-static {v1, p0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
