.class public Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;
.super Ljava/lang/Object;
.source "SharedPreferenceKnownDeviceHistory.java"

# interfaces
.implements Lcom/texa/carelib/communication/KnownDeviceHistory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory$DeviceInfoJsonSerializer;
    }
.end annotation


# static fields
.field private static final DEVICE_HISTORY_KEY:Ljava/lang/String; = "selection-history"

.field private static final MAX_SIZE_DEFAULT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SharedPreferenceKnownDeviceHistory"


# instance fields
.field private final mHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mKnownDeviceHistoryListener:Lcom/texa/carelib/communication/KnownDeviceHistoryListener;

.field private mMaxSize:I

.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x5

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p2, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mMaxSize:I

    .line 70
    new-instance p2, Ljava/util/ArrayList;

    iget v0, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mMaxSize:I

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mHistory:Ljava/util/List;

    .line 72
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mPreferences:Landroid/content/SharedPreferences;

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    sget-object p2, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Could not restore the history data. Clearing cache."

    invoke-static {p2, p1, v0}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->clear()V

    :goto_0
    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 2

    .line 142
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 143
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "selection-history"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 144
    sget-object p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Connection device history cleared!"

    invoke-static {p0, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private deleteExceededDevices()V
    .locals 3

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mMaxSize:I

    if-le v0, v1, :cond_0

    .line 111
    sget-object v0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Queue getCacheSize exceeded. Removing older connected device."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireDeviceHistoryChanged()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mKnownDeviceHistoryListener:Lcom/texa/carelib/communication/KnownDeviceHistoryListener;

    if-eqz v0, :cond_0

    .line 153
    new-instance v1, Lcom/texa/carelib/communication/events/DeviceHistoryChangedEvent;

    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/texa/carelib/communication/events/DeviceHistoryChangedEvent;-><init>(Ljava/lang/Object;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/communication/KnownDeviceHistoryListener;->onDeviceHistoryChanged(Lcom/texa/carelib/communication/events/DeviceHistoryChangedEvent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mHistory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mHistory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    new-instance v0, Lcom/texa/carelib/communication/DeviceInfo$Builder;

    invoke-direct {v0, p1}, Lcom/texa/carelib/communication/DeviceInfo$Builder;-><init>(Lcom/texa/carelib/communication/DeviceInfo;)V

    const-string v1, "UTC"

    .line 98
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setLastConnectionDateTime(Ljava/util/Date;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    .line 99
    sget-object v1, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Adding device: %s"

    invoke-static {v1, p1, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mHistory:Ljava/util/List;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->build()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 102
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->deleteExceededDevices()V

    .line 103
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->save()V

    .line 105
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->fireDeviceHistoryChanged()V

    return-void
.end method

.method public clear()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "selection-history"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 134
    sget-object v0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Connection device history cleared!"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public get(I)Lcom/texa/carelib/communication/DeviceInfo;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mHistory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/communication/DeviceInfo;

    return-object p1
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mHistory:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public indexOf(Lcom/texa/carelib/communication/DeviceInfo;)I
    .locals 5

    .line 172
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    .line 174
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/carelib/communication/DeviceInfo;

    .line 180
    invoke-virtual {v3}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_1
    return v1
.end method

.method restore()V
    .locals 10

    const-string v0, "Could not restore data."

    .line 193
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "selection-history"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 196
    sget-object v0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "no saved data"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 198
    :cond_0
    new-instance v2, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory$DeviceInfoJsonSerializer;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory$DeviceInfoJsonSerializer;-><init>(Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory$1;)V

    .line 201
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 202
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    .line 203
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v6, v7, :cond_2

    .line 206
    :try_start_1
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory$DeviceInfoJsonSerializer;->deserialize(Lorg/json/JSONObject;)Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 208
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    .line 211
    :try_start_2
    sget-object v8, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->TAG:Ljava/lang/String;

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v8, v7, v0, v9}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 215
    :cond_2
    iget-object v2, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mHistory:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 216
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 217
    iget-object v2, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mHistory:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    :cond_3
    sget-object v2, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->TAG:Ljava/lang/String;

    const-string v4, "Restored data=%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {v2, v4, v5}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 222
    sget-object v2, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v0, v3}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    :goto_2
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->fireDeviceHistoryChanged()V

    return-void
.end method

.method protected save()V
    .locals 6

    .line 232
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->getItems()Ljava/util/List;

    move-result-object v0

    .line 233
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 234
    new-instance v1, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory$DeviceInfoJsonSerializer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory$DeviceInfoJsonSerializer;-><init>(Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory$1;)V

    const/4 v2, 0x0

    .line 237
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 238
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/carelib/communication/DeviceInfo;

    .line 239
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory$DeviceInfoJsonSerializer;->serialize(Lcom/texa/carelib/communication/DeviceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "selection-history"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 243
    sget-object v0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->TAG:Ljava/lang/String;

    const-string v1, "Saved data=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x101002e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 247
    sget-object v1, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Could not save device history"

    invoke-static {v1, v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public setKnownDeviceHistoryListener(Lcom/texa/carelib/communication/KnownDeviceHistoryListener;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mKnownDeviceHistoryListener:Lcom/texa/carelib/communication/KnownDeviceHistoryListener;

    return-void
.end method

.method public setMaxSize(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mMaxSize:I

    .line 120
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->deleteExceededDevices()V

    return-void
.end method

.method public size()I
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;->mHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
