.class public Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;
.super Lcom/activeandroid/Model;
.source "TripObjectModel.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "TripObject"
.end annotation


# static fields
.field public static final COLUMN_DATA_VERSION:Ljava/lang/String; = "DataVersion"

.field public static final COLUMN_DRIVER_ID:Ljava/lang/String; = "DriverId"

.field public static final COLUMN_END_LABEL:Ljava/lang/String; = "EndLabel"

.field public static final COLUMN_END_LOCATION_ACCURACY:Ljava/lang/String; = "EndLocationAccuracy"

.field private static final COLUMN_END_LOCATION_ALTITUDE:Ljava/lang/String; = "EndLocationAltitude"

.field public static final COLUMN_END_LOCATION_LAT:Ljava/lang/String; = "EndLocationLat"

.field public static final COLUMN_END_LOCATION_LNG:Ljava/lang/String; = "EndLocationLng"

.field public static final COLUMN_END_ODO:Ljava/lang/String; = "EndOdo"

.field public static final COLUMN_END_TRIP:Ljava/lang/String; = "EndTrip"

.field public static final COLUMN_HIDDEN:Ljava/lang/String; = "Hidden"

.field public static final COLUMN_HWID:Ljava/lang/String; = "HwId"

.field public static final COLUMN_ID_PARENT:Ljava/lang/String; = "IdParent"

.field private static final COLUMN_LAST_MOD:Ljava/lang/String; = "lastMod"

.field public static final COLUMN_START_LABEL:Ljava/lang/String; = "StartLabel"

.field public static final COLUMN_START_LOCATION_ACCURACY:Ljava/lang/String; = "StartLocationAccuracy"

.field private static final COLUMN_START_LOCATION_ALTITUDE:Ljava/lang/String; = "StartLocationAltitude"

.field public static final COLUMN_START_LOCATION_LAT:Ljava/lang/String; = "StartLocationLat"

.field public static final COLUMN_START_LOCATION_LNG:Ljava/lang/String; = "StartLocationLng"

.field public static final COLUMN_START_ODO:Ljava/lang/String; = "StartOdo"

.field public static final COLUMN_START_TRIP:Ljava/lang/String; = "StartTrip"

.field public static final COLUMN_SYNC_NEEDED:Ljava/lang/String; = "SyncNeeded"

.field public static final COLUMN_USER_ID:Ljava/lang/String; = "UserId"

.field public static final COLUMN_UUID:Ljava/lang/String; = "UUID"

.field public static final COLUMN_VEHICLE_ID:Ljava/lang/String; = "VehicleId"

.field public static final DIFF_MILLIS:J = 0x927c0L

.field public static final TABLE_NAME:Ljava/lang/String; = "TripObject"


# instance fields
.field private dataVersion:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "DataVersion"
    .end annotation
.end field

.field private driverId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "DriverId"
    .end annotation
.end field

.field private endLabel:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "EndLabel"
    .end annotation
.end field

.field private endLocationAccuracy:Ljava/lang/Float;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "EndLocationAccuracy"
    .end annotation
.end field

.field private endLocationAltitude:Ljava/lang/Double;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "EndLocationAltitude"
    .end annotation
.end field

.field private endLocationLat:Ljava/lang/Double;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "EndLocationLat"
    .end annotation
.end field

.field private endLocationLng:Ljava/lang/Double;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "EndLocationLng"
    .end annotation
.end field

.field private endOdo:Ljava/lang/Float;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "EndOdo"
    .end annotation
.end field

.field private endTrip:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "EndTrip"
    .end annotation
.end field

.field private hidden:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Hidden"
    .end annotation
.end field

.field private hwId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "HwId"
    .end annotation
.end field

.field private idParent:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        index = true
        name = "IdParent"
    .end annotation
.end field

.field private lastMod:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "lastMod"
    .end annotation
.end field

.field private startLabel:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "StartLabel"
    .end annotation
.end field

.field private startLocationAccuracy:Ljava/lang/Float;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "StartLocationAccuracy"
    .end annotation
.end field

.field private startLocationAltitude:Ljava/lang/Double;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "StartLocationAltitude"
    .end annotation
.end field

.field private startLocationLat:Ljava/lang/Double;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "StartLocationLat"
    .end annotation
.end field

.field private startLocationLng:Ljava/lang/Double;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "StartLocationLng"
    .end annotation
.end field

.field private startOdo:Ljava/lang/Float;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "StartOdo"
    .end annotation
.end field

.field private startTrip:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        index = true
        name = "StartTrip"
    .end annotation
.end field

.field private syncNeeded:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "SyncNeeded"
    .end annotation
.end field

.field private tripDuration:J

.field private unsyncEventSnapshot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripEventModel;",
            ">;"
        }
    .end annotation
.end field

.field private unsyncScoreUpdateSnapshot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;",
            ">;"
        }
    .end annotation
.end field

.field private user:Lcom/texa/careapp/model/UserModel;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "UserId"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
        uniqueGroups = {
            "key"
        }
    .end annotation
.end field

.field private uuid:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "UUID"
        onUniqueConflict = .enum Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;
        unique = true
    .end annotation
.end field

.field private vehicleId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "VehicleId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 177
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->lastMod:Ljava/util/Date;

    const-string v0, "1.0"

    .line 192
    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->dataVersion:Ljava/lang/String;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->unsyncEventSnapshot:Ljava/util/List;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->unsyncScoreUpdateSnapshot:Ljava/util/List;

    return-void
.end method

.method public static checkIfHaveToCloseOtherTrips(Ljava/lang/String;)V
    .locals 13

    .line 349
    const-class v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    invoke-virtual {v1, v0}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 350
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v6, "EndTrip = ?"

    invoke-virtual {v1, v6, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v4

    const-string v6, "UUID != ?"

    .line 351
    invoke-virtual {v1, v6, v3}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v4

    const-string v7, "(IdParent != ?"

    .line 352
    invoke-virtual {v1, v7, v3}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v1

    const-string v3, "IdParent is null )"

    .line 353
    invoke-virtual {v1, v3}, Lcom/activeandroid/query/From;->or(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v1

    .line 354
    invoke-virtual {v1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v1

    .line 356
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    .line 357
    invoke-virtual {v8}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 359
    invoke-virtual {v9}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTimestamp()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setEndTrip(J)V

    .line 360
    invoke-virtual {v9}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getOdometer()Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setEndOdo(Ljava/lang/Float;)V

    .line 361
    invoke-virtual {v8, v2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setSyncNeeded(Z)V

    .line 362
    new-instance v10, Ljava/util/Date;

    invoke-virtual {v9}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTimestamp()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v10}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setLastMod(Ljava/util/Date;)V

    .line 364
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    .line 366
    invoke-virtual {v8}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    new-array v9, v4, [Ljava/lang/Object;

    const-string v10, "ERROR CLOSING TRIP"

    .line 367
    invoke-static {v8, v10, v9}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 372
    :cond_1
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    invoke-virtual {v1, v0}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v5, v1, v4

    const-string v5, "EndTrip != ?"

    .line 373
    invoke-virtual {v0, v5, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v4

    .line 374
    invoke-virtual {v0, v6, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v4

    .line 375
    invoke-virtual {v0, v7, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 376
    invoke-virtual {p0, v3}, Lcom/activeandroid/query/From;->or(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 377
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p0

    .line 379
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    .line 380
    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTypeId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP_TEMP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v3}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 381
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v3, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    invoke-virtual {v1, v3}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getUuid()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "UUID = ?"

    invoke-virtual {v1, v0, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    .line 382
    sget-object v1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->setTypeId(Ljava/lang/Integer;)V

    .line 384
    :try_start_1
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_1
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 386
    invoke-virtual {v0}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static checkIfHaveToReproduceSound(Lcom/texa/care/eco_driving/events/drivingevents/DrivingStartEvent;Ljava/lang/String;)Z
    .locals 7

    .line 396
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 398
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x927c0

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "EndTrip >= ?"

    .line 397
    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 399
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingStartEvent;->getHardwareId()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    const-string p0, "HwId = ?"

    invoke-virtual {v0, p0, v2}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v4

    const-string p1, "VehicleId = ?"

    .line 400
    invoke-virtual {p0, p1, v0}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    .line 401
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v4

    const-string v0, "Hidden = ?"

    invoke-virtual {p0, v0, p1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    .line 402
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    const-string v0, "StartTrip != ?"

    invoke-virtual {p0, v0, p1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    const-string p1, "StartTrip"

    .line 403
    invoke-virtual {p0, p1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static from(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;Ljava/lang/String;Ljava/lang/String;)Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;
    .locals 11

    .line 267
    const-class v1, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 268
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getRideId()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v3, v7

    const-string v4, "UUID = ?"

    invoke-virtual {v0, v4, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v7

    const-string v5, "VehicleId = ?"

    .line 269
    invoke-virtual {v0, v5, v3}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    .line 271
    sget-object v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel$1;->$SwitchMap$com$texa$care$eco_driving$events$drivingevents$DrivingEventType:[I

    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->ordinal()I

    move-result v6

    aget v0, v0, v6

    const/high16 v8, 0x43fa0000    # 500.0f

    if-eq v0, v2, :cond_6

    const/4 v6, 0x2

    if-eq v0, v6, :cond_2

    const/4 v6, 0x3

    if-eq v0, v6, :cond_2

    if-eqz v3, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v0

    sget-object v1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->UNDEFINED:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 340
    invoke-static {v3, p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->resetEndValues(Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 342
    invoke-virtual {v3, v2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setSyncNeeded(Z)V

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    if-eqz v3, :cond_5

    .line 293
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setEndTrip(J)V

    .line 294
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getOdometer()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setEndOdo(Ljava/lang/Float;)V

    .line 295
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getPosition()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 296
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getPosition()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_3

    .line 297
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getPosition()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v3, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLocationLat:Ljava/lang/Double;

    .line 298
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getPosition()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v3, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLocationLng:Ljava/lang/Double;

    .line 299
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getPosition()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v3, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLocationAltitude:Ljava/lang/Double;

    .line 300
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getPosition()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v3, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLocationAccuracy:Ljava/lang/Float;

    .line 302
    :cond_3
    iput-boolean v2, v3, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->syncNeeded:Z

    .line 303
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v3, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->lastMod:Ljava/util/Date;

    .line 306
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 308
    invoke-virtual {v0}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    .line 311
    :goto_1
    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getIdParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 312
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 313
    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getIdParent()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v7

    invoke-virtual {v0, v4, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v7

    .line 314
    invoke-virtual {v0, v5, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    .line 316
    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndTrip()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setEndTrip(J)V

    .line 317
    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndOdo()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setEndOdo(Ljava/lang/Float;)V

    .line 319
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getPosition()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 320
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getPosition()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v1, v1, v8

    if-gtz v1, :cond_4

    .line 321
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getPosition()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLocationLat:Ljava/lang/Double;

    .line 322
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getPosition()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLocationLng:Ljava/lang/Double;

    .line 323
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getPosition()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLocationAltitude:Ljava/lang/Double;

    .line 324
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getPosition()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLocationAccuracy:Ljava/lang/Float;

    .line 326
    :cond_4
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->lastMod:Ljava/util/Date;

    .line 327
    invoke-virtual {v0, v2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setSyncNeeded(Z)V

    .line 330
    :try_start_1
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_1
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 332
    invoke-virtual {v0}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    :cond_5
    :goto_2
    return-object v3

    :cond_6
    if-nez v3, :cond_7

    .line 274
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getRideId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getHardwareId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->newTrip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    move-result-object v3

    .line 275
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setStartTrip(J)V

    .line 276
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getOdometer()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setStartOdo(Ljava/lang/Float;)V

    .line 277
    invoke-virtual {v3, v7}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setHidden(Z)V

    .line 279
    :cond_7
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getPosition()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 280
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getPosition()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_8

    .line 281
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setLastMod(Ljava/util/Date;)V

    .line 282
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getPosition()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setStartLocationLat(Ljava/lang/Double;)V

    .line 283
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getPosition()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setStartLocationLng(Ljava/lang/Double;)V

    .line 284
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getPosition()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setStartLocationAccuracy(Ljava/lang/Float;)V

    .line 285
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getPosition()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setStartLocationAltitude(Ljava/lang/Double;)V

    .line 287
    :cond_8
    invoke-static {v3, p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->resetEndValues(Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;Ljava/lang/String;)V

    return-object v3
.end method

.method public static from(Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;Lcom/texa/careapp/model/UserModel;)Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;
    .locals 8

    .line 218
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    .line 219
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 220
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "UUID=?"

    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 221
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getVehicleId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "VehicleId = ?"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTimestamp()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v2, v5

    const-wide/32 v5, 0x927c0

    cmp-long v7, v2, v5

    if-lez v7, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->lastMod:Ljava/util/Date;

    .line 230
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 225
    :cond_1
    :goto_0
    new-instance v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-direct {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;-><init>()V

    .line 226
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v2

    iput-object v2, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->lastMod:Ljava/util/Date;

    .line 227
    iput-boolean v4, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->syncNeeded:Z

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->uuid:Ljava/lang/String;

    .line 233
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getParentId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->idParent:Ljava/lang/String;

    .line 234
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripStart()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 235
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripStart()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;->getTimestampMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startTrip:J

    .line 236
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripStart()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;->getOdometer()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startOdo:Ljava/lang/Float;

    .line 237
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripStart()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;->getLocation()Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 238
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripStart()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;->getLocation()Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getLatitude()Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startLocationLat:Ljava/lang/Double;

    .line 239
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripStart()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;->getLocation()Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getLongitude()Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startLocationLng:Ljava/lang/Double;

    .line 240
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripStart()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;->getLocation()Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getAccuracy()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startLocationAccuracy:Ljava/lang/Float;

    .line 241
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripStart()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;->getLocation()Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getAltitude()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripStart()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;->getLocation()Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getAltitude()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    iput-object v2, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startLocationAltitude:Ljava/lang/Double;

    .line 243
    :cond_4
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripStart()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;->getLabel()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startLabel:Ljava/lang/String;

    .line 245
    :cond_5
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripEnd()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 246
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripEnd()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;->getTimestampMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endTrip:J

    .line 247
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripEnd()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;->getOdometer()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endOdo:Ljava/lang/Float;

    .line 248
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripEnd()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;->getLocation()Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 249
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripEnd()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;->getLocation()Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getLatitude()Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLocationLat:Ljava/lang/Double;

    .line 250
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripEnd()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;->getLocation()Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getLongitude()Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLocationLng:Ljava/lang/Double;

    .line 251
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripEnd()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;->getLocation()Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getAccuracy()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLocationAccuracy:Ljava/lang/Float;

    .line 252
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripEnd()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;->getLocation()Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getAltitude()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripEnd()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;->getLocation()Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getAltitude()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_6
    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLocationAltitude:Ljava/lang/Double;

    .line 254
    :cond_7
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripEnd()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;->getLabel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLabel:Ljava/lang/String;

    .line 257
    :cond_8
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getHwid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->hwId:Ljava/lang/String;

    .line 258
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->driverId:Ljava/lang/String;

    .line 259
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getVehicleId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->vehicleId:Ljava/lang/String;

    .line 260
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->isHidden()Z

    move-result p0

    iput-boolean p0, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->hidden:Z

    .line 261
    iput-object p1, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->user:Lcom/texa/careapp/model/UserModel;

    return-object v0
.end method

.method public static from(Ljava/lang/String;)Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;
    .locals 3

    .line 213
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "UUID = ?"

    .line 214
    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    return-object p0
.end method

.method private getLastSavedMod()Ljava/util/Date;
    .locals 4

    .line 581
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    .line 582
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 583
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getId()Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "TripObject.id = ?"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 584
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    .line 586
    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastMod()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static newTrip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;
    .locals 4

    .line 409
    new-instance v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-direct {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;-><init>()V

    .line 410
    iput-object p0, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->uuid:Ljava/lang/String;

    .line 411
    invoke-virtual {v0, p3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setDriverId(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setHwId(Ljava/lang/String;)V

    .line 413
    new-instance p0, Lcom/activeandroid/query/Select;

    invoke-direct {p0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class p3, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {p0, p3}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object p0

    const/4 p3, 0x1

    new-array v1, p3, [Ljava/lang/Object;

    const-wide/32 v2, 0x927c0

    sub-long v2, p4, v2

    .line 415
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "EndTrip >= ?"

    .line 414
    invoke-virtual {p0, v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    new-array v1, p3, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "HwId = ?"

    .line 416
    invoke-virtual {p0, p1, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    new-array p1, p3, [Ljava/lang/Object;

    aput-object p2, p1, v3

    const-string v1, "VehicleId = ?"

    .line 417
    invoke-virtual {p0, v1, p1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    new-array p1, p3, [Ljava/lang/Object;

    .line 418
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "Hidden = ?"

    invoke-virtual {p0, v1, p1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    new-array p1, p3, [Ljava/lang/Object;

    .line 419
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v3

    const-string p3, "StartTrip != ?"

    invoke-virtual {p0, p3, p1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    const-string p1, "StartTrip DESC"

    .line 420
    invoke-virtual {p0, p1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    if-eqz p0, :cond_1

    .line 421
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartTrip()J

    move-result-wide v1

    cmp-long p1, p4, v1

    if-lez p1, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getIdParent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getIdParent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->idParent:Ljava/lang/String;

    goto :goto_0

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->idParent:Ljava/lang/String;

    .line 427
    :goto_0
    invoke-static {p0, p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->resetEndValues(Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private static resetEndValues(Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 617
    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setEndTrip(J)V

    const/4 p1, 0x0

    .line 618
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setEndOdo(Ljava/lang/Float;)V

    .line 619
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setEndLocationLat(Ljava/lang/Double;)V

    .line 620
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setEndLocationLng(Ljava/lang/Double;)V

    .line 621
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setEndLocationAltitude(Ljava/lang/Double;)V

    const/4 p1, 0x1

    .line 622
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setSyncNeeded(Z)V

    .line 623
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->lastMod:Ljava/util/Date;

    .line 625
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 627
    invoke-virtual {p0}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getDataVersion()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->dataVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDriverId()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->driverId:Ljava/lang/String;

    return-object v0
.end method

.method public getEndLabel()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getEndLocationAccuracy()Ljava/lang/Float;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLocationAccuracy:Ljava/lang/Float;

    return-object v0
.end method

.method public getEndLocationAltitude()Ljava/lang/Double;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLocationAltitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getEndLocationLat()Ljava/lang/Double;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLocationLat:Ljava/lang/Double;

    return-object v0
.end method

.method public getEndLocationLng()Ljava/lang/Double;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLocationLng:Ljava/lang/Double;

    return-object v0
.end method

.method public getEndOdo()Ljava/lang/Float;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endOdo:Ljava/lang/Float;

    return-object v0
.end method

.method public getEndTrip()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endTrip:J

    return-wide v0
.end method

.method public getHwId()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->hwId:Ljava/lang/String;

    return-object v0
.end method

.method public getIdParent()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->idParent:Ljava/lang/String;

    return-object v0
.end method

.method public getLastMod()Ljava/util/Date;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->lastMod:Ljava/util/Date;

    return-object v0
.end method

.method public getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;
    .locals 4

    .line 461
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 462
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getId()Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "IdTripObject = ?"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "Timestamp DESC"

    .line 463
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    return-object v0
.end method

.method public getStartLabel()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getStartLocationAccuracy()Ljava/lang/Float;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startLocationAccuracy:Ljava/lang/Float;

    return-object v0
.end method

.method public getStartLocationAltitude()Ljava/lang/Double;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startLocationAltitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getStartLocationLat()Ljava/lang/Double;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startLocationLat:Ljava/lang/Double;

    return-object v0
.end method

.method public getStartLocationLng()Ljava/lang/Double;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startLocationLng:Ljava/lang/Double;

    return-object v0
.end method

.method public getStartOdo()Ljava/lang/Float;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startOdo:Ljava/lang/Float;

    return-object v0
.end method

.method public getStartTrip()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startTrip:J

    return-wide v0
.end method

.method public getTripDuration()J
    .locals 2

    .line 188
    iget-wide v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->tripDuration:J

    return-wide v0
.end method

.method public getTripEvents(J)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripEventModel;",
            ">;"
        }
    .end annotation

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 435
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 436
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "IdTripObject = ?"

    invoke-virtual {v1, v4, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v6, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP_TEMP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    .line 438
    invoke-virtual {v6}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "TypeID != ?"

    .line 437
    invoke-virtual {v1, v6, v3}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v1

    .line 439
    invoke-virtual {v1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v1

    .line 435
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 441
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    .line 442
    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTypeId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v6, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v6}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v6

    if-ne v3, v6, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 448
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v3, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    invoke-virtual {v1, v3}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    .line 449
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-virtual {v1, v4, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    sget-object v1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP_TEMP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    .line 451
    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v5

    const-string v1, "TypeID = ?"

    .line 450
    invoke-virtual {p1, v1, p2}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    const-string p2, "Timestamp DESC"

    .line 452
    invoke-virtual {p1, p2}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p1

    invoke-virtual {p1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    if-eqz p1, :cond_2

    .line 454
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public getTripEventsUnsync()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripEventModel;",
            ">;"
        }
    .end annotation

    .line 467
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 469
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getId()Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "IdTripObject= ?"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 470
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTripEventsWithoutStart(J)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripEventModel;",
            ">;"
        }
    .end annotation

    .line 475
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 476
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 477
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "IdTripObject = ?"

    invoke-virtual {v1, v4, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v6, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_START:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    .line 479
    invoke-virtual {v6}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "TypeID != ?"

    .line 478
    invoke-virtual {v1, v6, v3}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v7, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP_TEMP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    .line 481
    invoke-virtual {v7}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    .line 480
    invoke-virtual {v1, v6, v3}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v1

    .line 482
    invoke-virtual {v1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v1

    .line 476
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 484
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    .line 485
    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTypeId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v6, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v6}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v6

    if-ne v3, v6, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 491
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v3, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    invoke-virtual {v1, v3}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    .line 492
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-virtual {v1, v4, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    sget-object v1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP_TEMP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    .line 494
    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v5

    const-string v1, "TypeID = ?"

    .line 493
    invoke-virtual {p1, v1, p2}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    const-string p2, "Timestamp DESC"

    .line 495
    invoke-virtual {p1, p2}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p1

    invoke-virtual {p1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    if-eqz p1, :cond_2

    .line 497
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public getTripEventsWithoutStartStop(J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripEventModel;",
            ">;"
        }
    .end annotation

    .line 504
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 505
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    const-string p1, "IdTripObject = ?"

    invoke-virtual {v0, p1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_START:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    .line 507
    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, p2

    const-string v2, "TypeID != ?"

    .line 506
    invoke-virtual {p1, v2, v0}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    .line 509
    invoke-virtual {v3}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, p2

    .line 508
    invoke-virtual {p1, v2, v0}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    sget-object v1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP_TEMP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    .line 511
    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p2

    .line 510
    invoke-virtual {p1, v2, v0}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    .line 512
    invoke-virtual {p1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTripEventsWithoutStop(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripEventModel;",
            ">;"
        }
    .end annotation

    .line 516
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 517
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    const-string p1, "IdTripObject = ?"

    invoke-virtual {v0, p1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    .line 519
    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, p2

    const-string v2, "TypeID != ?"

    .line 518
    invoke-virtual {p1, v2, v0}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    sget-object v1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP_TEMP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    .line 521
    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p2

    .line 520
    invoke-virtual {p1, v2, v0}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    .line 522
    invoke-virtual {p1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTripGroupScores()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;",
            ">;"
        }
    .end annotation

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 537
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 538
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "UUID= ?"

    invoke-virtual {v1, v4, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    .line 539
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "IdParent= ? "

    invoke-virtual {v1, v4, v3}, Lcom/activeandroid/query/From;->or(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v1

    .line 540
    invoke-virtual {v1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v1

    .line 542
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    .line 543
    new-instance v4, Lcom/activeandroid/query/Select;

    invoke-direct {v4}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v6, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;

    .line 544
    invoke-virtual {v4, v6}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    .line 546
    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getId()Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v5

    const-string v3, "IdTripObject= ?"

    invoke-virtual {v4, v3, v6}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v3

    .line 547
    invoke-virtual {v3}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v3

    .line 543
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getTripScores()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;",
            ">;"
        }
    .end annotation

    .line 526
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;

    .line 527
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 529
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getId()Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "IdTripObject= ?"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUnsyncEventSnapshot()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripEventModel;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->unsyncEventSnapshot:Ljava/util/List;

    return-object v0
.end method

.method public getUnsyncScoreUpdateSnapshot()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->unsyncScoreUpdateSnapshot:Ljava/util/List;

    return-object v0
.end method

.method public getUser()Lcom/texa/careapp/model/UserModel;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->user:Lcom/texa/careapp/model/UserModel;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleId()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->vehicleId:Ljava/lang/String;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->hidden:Z

    return v0
.end method

.method public isParent()Z
    .locals 1

    .line 632
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getIdParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSyncNeeded()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->syncNeeded:Z

    return v0
.end method

.method public saveAsSynced()Z
    .locals 5

    .line 591
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastSavedMod()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->lastMod:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 594
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getTripEventsUnsync()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    if-eqz v3, :cond_1

    .line 595
    invoke-virtual {v4}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->saveAsSynced()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 598
    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUnsyncScoreUpdateSnapshot()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;

    if-eqz v3, :cond_3

    .line 599
    invoke-virtual {v4}, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->saveAsSynced()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    xor-int/lit8 v0, v3, 0x1

    .line 602
    iput-boolean v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->syncNeeded:Z

    .line 603
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->lastMod:Ljava/util/Date;

    .line 606
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    .line 608
    invoke-virtual {v0}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    return v1
.end method

.method public setDataVersion(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->dataVersion:Ljava/lang/String;

    return-void
.end method

.method public setDriverId(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->driverId:Ljava/lang/String;

    return-void
.end method

.method public setEndLabel(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLabel:Ljava/lang/String;

    return-void
.end method

.method public setEndLocationAltitude(Ljava/lang/Double;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLocationAltitude:Ljava/lang/Double;

    return-void
.end method

.method public setEndLocationLat(Ljava/lang/Double;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLocationLat:Ljava/lang/Double;

    return-void
.end method

.method public setEndLocationLng(Ljava/lang/Double;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLocationLng:Ljava/lang/Double;

    return-void
.end method

.method public setEndOdo(Ljava/lang/Float;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endOdo:Ljava/lang/Float;

    return-void
.end method

.method public setEndTrip(J)V
    .locals 0

    .line 82
    iput-wide p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endTrip:J

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->hidden:Z

    return-void
.end method

.method public setHwId(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->hwId:Ljava/lang/String;

    return-void
.end method

.method public setLastMod(Ljava/util/Date;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->lastMod:Ljava/util/Date;

    return-void
.end method

.method public setStartLabel(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startLabel:Ljava/lang/String;

    return-void
.end method

.method public setStartLocationAccuracy(Ljava/lang/Float;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startLocationAccuracy:Ljava/lang/Float;

    return-void
.end method

.method public setStartLocationAltitude(Ljava/lang/Double;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startLocationAltitude:Ljava/lang/Double;

    return-void
.end method

.method public setStartLocationLat(Ljava/lang/Double;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startLocationLat:Ljava/lang/Double;

    return-void
.end method

.method public setStartLocationLng(Ljava/lang/Double;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startLocationLng:Ljava/lang/Double;

    return-void
.end method

.method public setStartOdo(Ljava/lang/Float;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startOdo:Ljava/lang/Float;

    return-void
.end method

.method public setStartTrip(J)V
    .locals 0

    .line 77
    iput-wide p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startTrip:J

    return-void
.end method

.method public setSyncNeeded(Z)V
    .locals 0

    .line 174
    iput-boolean p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->syncNeeded:Z

    return-void
.end method

.method public setTripDuration(J)V
    .locals 0

    .line 189
    iput-wide p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->tripDuration:J

    return-void
.end method

.method public setUnsyncEventSnapshot(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripEventModel;",
            ">;)V"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->unsyncEventSnapshot:Ljava/util/List;

    return-void
.end method

.method public setUnsyncScoreUpdateSnapshot(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;",
            ">;)V"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->unsyncScoreUpdateSnapshot:Ljava/util/List;

    return-void
.end method

.method public setUser(Lcom/texa/careapp/model/UserModel;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->user:Lcom/texa/careapp/model/UserModel;

    return-void
.end method

.method public setVehicleId(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->vehicleId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TripObjectModel{uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", idParent=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->idParent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", startTrip="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startTrip:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", endTrip="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endTrip:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", startOdo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startOdo:Ljava/lang/Float;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", endOdo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endOdo:Ljava/lang/Float;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", startLocationLat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startLocationLat:Ljava/lang/Double;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", startLocationLng="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startLocationLng:Ljava/lang/Double;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", startLocationAccuracy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startLocationAccuracy:Ljava/lang/Float;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", endLocationLat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLocationLat:Ljava/lang/Double;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", endLocationLng="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLocationLng:Ljava/lang/Double;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", endLocationAccuracy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLocationAccuracy:Ljava/lang/Float;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", startLabel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->startLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", endLabel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->endLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hwId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->hwId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", driverId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->driverId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vehicleId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->vehicleId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", syncNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->syncNeeded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->hidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tripDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->tripDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
