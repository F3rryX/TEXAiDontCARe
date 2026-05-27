.class public Lcom/texa/careapp/app/proximityalert/ProximityAlert;
.super Ljava/lang/Object;
.source "ProximityAlert.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProximityAlert"


# instance fields
.field private final HISTORY_MAX_SIZE:I

.field private context:Landroid/content/Context;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private gson:Lcom/google/gson/Gson;

.field private intent:Landroid/content/Intent;

.field private intentFilterKey:Ljava/lang/String;

.field private latitudes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public locationManager:Landroid/location/LocationManager;

.field private longitudes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private pendingIntentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private proximityIntent:Landroid/app/PendingIntent;

.field private proximityIntentReceiver:Lcom/texa/careapp/utils/broadcastreceiver/ProximityIntentReceiver;

.field private proximityIntentReceiverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/utils/broadcastreceiver/ProximityIntentReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 34
    iput v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->HISTORY_MAX_SIZE:I

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->proximityIntent:Landroid/app/PendingIntent;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->pendingIntentList:Ljava/util/List;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->latitudes:Ljava/util/List;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->longitudes:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->intent:Landroid/content/Intent;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->proximityIntentReceiverList:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->context:Landroid/content/Context;

    const-string v0, "PROXIMITY_POSITION_REGISTER"

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 55
    iget-object p1, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->context:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->locationManager:Landroid/location/LocationManager;

    .line 56
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->gson:Lcom/google/gson/Gson;

    .line 58
    iget-object p1, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->shouldRestoreProximity()V

    :cond_0
    return-void
.end method

.method private addKnownPointOfInterest(DD)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide/16 v0, 0x0

    cmpl-double v2, p3, v0

    if-eqz v2, :cond_0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_0

    .line 143
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->latitudes:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object p1, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->longitudes:Ljava/util/List;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object p1, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->gson:Lcom/google/gson/Gson;

    iget-object p2, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->latitudes:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 147
    iget-object p2, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->gson:Lcom/google/gson/Gson;

    iget-object p3, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->longitudes:Ljava/util/List;

    invoke-virtual {p2, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 150
    iget-object p3, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->editor:Landroid/content/SharedPreferences$Editor;

    const-string p4, "PROXIMITY_LAST_KNOWN_LOCATION_LAT"

    invoke-interface {p3, p4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    iget-object p1, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->editor:Landroid/content/SharedPreferences$Editor;

    const-string p3, "PROXIMITY_LAST_KNOWN_LOCATION_LONG"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    iget-object p1, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 p2, 0x1

    const-string p3, "CHECK_PROXIMITY_CHECK"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 153
    iget-object p1, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private shouldRestoreProximity()V
    .locals 8

    .line 182
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "CHECK_PROXIMITY_CHECK"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "PROXIMITY_LAST_KNOWN_LOCATION_LAT"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "PROXIMITY_LAST_KNOWN_LOCATION_LONG"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    iget-object v4, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->gson:Lcom/google/gson/Gson;

    const-class v5, Ljava/util/List;

    invoke-virtual {v4, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 189
    iget-object v5, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->gson:Lcom/google/gson/Gson;

    const-class v6, Ljava/util/List;

    invoke-virtual {v5, v1, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 191
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 193
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {p0, v0, v1, v6, v7}, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->addProximityAlert(DD)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateKnownPosition()V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->latitudes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->longitudes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->latitudes:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->gson:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->longitudes:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 169
    iget-object v2, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "PROXIMITY_LAST_KNOWN_LOCATION_LAT"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "PROXIMITY_LAST_KNOWN_LOCATION_LONG"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public addProximityAlert(DD)V
    .locals 10

    .line 66
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->context:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 68
    invoke-static {v0, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sget-object p1, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->TAG:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "permissions not granted adding POI"

    aput-object p3, p2, v1

    invoke-static {p1, p2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.texa.careapp.service"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->intentFilterKey:Ljava/lang/String;

    .line 74
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->intentFilterKey:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->intent:Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 76
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_1

    const/high16 v0, 0x12000000

    .line 79
    :cond_1
    iget-object v2, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->intent:Landroid/content/Intent;

    invoke-static {v2, v1, v3, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->proximityIntent:Landroid/app/PendingIntent;

    .line 81
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->pendingIntentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_2

    .line 82
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->pendingIntentList:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->proximityIntent:Landroid/app/PendingIntent;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->pendingIntentList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->removePOI(Landroid/app/PendingIntent;)V

    .line 85
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->pendingIntentList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->pendingIntentList:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->proximityIntent:Landroid/app/PendingIntent;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-direct {p0}, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->updateKnownPosition()V

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->addKnownPointOfInterest(DD)V

    .line 92
    :cond_3
    iget-object v1, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->locationManager:Landroid/location/LocationManager;

    const/high16 v6, 0x42c80000    # 100.0f

    const-wide/16 v7, -0x1

    iget-object v9, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->proximityIntent:Landroid/app/PendingIntent;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v9}, Landroid/location/LocationManager;->addProximityAlert(DDFJLandroid/app/PendingIntent;)V

    .line 98
    new-instance p1, Landroid/content/IntentFilter;

    iget-object p2, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->intentFilterKey:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 99
    new-instance p2, Lcom/texa/careapp/utils/broadcastreceiver/ProximityIntentReceiver;

    invoke-direct {p2}, Lcom/texa/careapp/utils/broadcastreceiver/ProximityIntentReceiver;-><init>()V

    iput-object p2, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->proximityIntentReceiver:Lcom/texa/careapp/utils/broadcastreceiver/ProximityIntentReceiver;

    .line 100
    iget-object p3, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->proximityIntentReceiverList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object p2, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->proximityIntentReceiver:Lcom/texa/careapp/utils/broadcastreceiver/ProximityIntentReceiver;

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_1
    return-void
.end method

.method public getLocationManager()Landroid/location/LocationManager;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->locationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method public removeLastPOI()V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->context:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 125
    invoke-static {v0, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "permissions not granted removing POI"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->pendingIntentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->pendingIntentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeProximityAlert(Landroid/app/PendingIntent;)V

    .line 131
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->pendingIntentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public removePOI(Landroid/app/PendingIntent;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 113
    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object p1, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "permissions not granted removing POI"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeProximityAlert(Landroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method public unregisterReceivers()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->proximityIntentReceiverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->proximityIntentReceiverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/utils/broadcastreceiver/ProximityIntentReceiver;

    .line 202
    :try_start_0
    iget-object v2, p0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error unregistering proximity intent receiver"

    .line 204
    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
