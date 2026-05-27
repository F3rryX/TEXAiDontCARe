.class public Lcom/texa/careapp/app/ecodriving/model/TripEventModel;
.super Lcom/activeandroid/Model;
.source "TripEventModel.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "TripEvent"
.end annotation


# static fields
.field public static final COLUMN_ACCURACY:Ljava/lang/String; = "Accuracy"

.field public static final COLUMN_ALTITUDE:Ljava/lang/String; = "Altitude"

.field public static final COLUMN_DATA_TYPE:Ljava/lang/String; = "DataType"

.field public static final COLUMN_DATA_VERSION:Ljava/lang/String; = "DataVersion"

.field public static final COLUMN_GPS_SPEED:Ljava/lang/String; = "GpsSpeed"

.field public static final COLUMN_HIDDEN:Ljava/lang/String; = "Hidden"

.field public static final COLUMN_ID_EVENT:Ljava/lang/String; = "UUID"

.field public static final COLUMN_ID_TRIP_OBJECT:Ljava/lang/String; = "IdTripObject"

.field public static final COLUMN_INTERVAL_TIME:Ljava/lang/String; = "IntervalTime"

.field public static final COLUMN_LABEL:Ljava/lang/String; = "Label"

.field private static final COLUMN_LAST_MOD:Ljava/lang/String; = "lastMod"

.field public static final COLUMN_LATITUDE:Ljava/lang/String; = "Latitude"

.field public static final COLUMN_LONGITUDE:Ljava/lang/String; = "Longitude"

.field public static final COLUMN_ODOMETER:Ljava/lang/String; = "Odometer"

.field public static final COLUMN_ROW_LOCATION:Ljava/lang/String; = "RowLocation"

.field public static final COLUMN_SYNC_NEEDED:Ljava/lang/String; = "SyncNeeded"

.field public static final COLUMN_TIMESTAMP:Ljava/lang/String; = "Timestamp"

.field public static final COLUMN_TRIP_EVENT_TYPE:Ljava/lang/String; = "TypeID"

.field private static final DATA_TYPE:Ljava/lang/String; = "DRIVING_EVENT"

.field public static final TABLE_NAME:Ljava/lang/String; = "TripEvent"


# instance fields
.field private accuracy:Ljava/lang/Float;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Accuracy"
    .end annotation
.end field

.field private altitude:Ljava/lang/Double;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Altitude"
    .end annotation
.end field

.field private dataType:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "DataType"
    .end annotation
.end field

.field private dataVersion:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "DataVersion"
    .end annotation
.end field

.field private gpsSpeed:Ljava/lang/Float;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "GpsSpeed"
    .end annotation
.end field

.field private hidden:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Hidden"
    .end annotation
.end field

.field private intervalTime:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "IntervalTime"
    .end annotation
.end field

.field private label:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Label"
    .end annotation
.end field

.field private lastMod:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "lastMod"
    .end annotation
.end field

.field private lat:Ljava/lang/Double;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Latitude"
    .end annotation
.end field

.field private lng:Ljava/lang/Double;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Longitude"
    .end annotation
.end field

.field private location:Landroid/location/Location;

.field private odometer:Ljava/lang/Float;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Odometer"
    .end annotation
.end field

.field private rowLocation:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "RowLocation"
    .end annotation
.end field

.field private syncNeeded:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "SyncNeeded"
    .end annotation
.end field

.field private timestamp:Ljava/lang/Long;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        index = true
        name = "Timestamp"
    .end annotation
.end field

.field private tripObject:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "IdTripObject"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
        uniqueGroups = {
            "key"
        }
    .end annotation
.end field

.field private typeId:Ljava/lang/Integer;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        index = true
        name = "TypeID"
    .end annotation
.end field

.field private uuid:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "UUID"
        onUniqueConflict = .enum Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;
        unique = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 151
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->lastMod:Ljava/util/Date;

    return-void
.end method

.method public static from(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)Lcom/texa/careapp/app/ecodriving/model/TripEventModel;
    .locals 4

    .line 158
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    .line 160
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 161
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getUuid()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "UUID = ? "

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    invoke-direct {v0}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;-><init>()V

    .line 166
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->uuid:Ljava/lang/String;

    .line 167
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->typeId:Ljava/lang/Integer;

    .line 168
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->timestamp:Ljava/lang/Long;

    .line 169
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getOdometer()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->odometer:Ljava/lang/Float;

    .line 170
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getInterval()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->intervalTime:J

    const-string v1, "DRIVING_EVENT"

    .line 172
    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->dataType:Ljava/lang/String;

    .line 173
    iput-object p1, v0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->tripObject:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    .line 176
    :cond_0
    invoke-static {p0, v0}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->setUpdatableDataFromEvent(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;Lcom/texa/careapp/app/ecodriving/model/TripEventModel;)V

    return-object v0
.end method

.method public static from(Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)Lcom/texa/careapp/app/ecodriving/model/TripEventModel;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 254
    new-instance v2, Lcom/activeandroid/query/Select;

    invoke-direct {v2}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v3, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    invoke-virtual {v2, v3}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 255
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "UUID = ?"

    invoke-virtual {v2, v5, v4}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 256
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getId()Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "IdTripObject = ?"

    invoke-virtual {v2, v4, v3}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v2

    invoke-virtual {v2}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_1

    .line 259
    new-instance v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    invoke-direct {v2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;-><init>()V

    .line 260
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v3

    iput-object v3, v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->lastMod:Ljava/util/Date;

    .line 261
    iput-boolean v1, v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->syncNeeded:Z

    goto :goto_1

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->lastMod:Ljava/util/Date;

    .line 264
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v0

    .line 267
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->uuid:Ljava/lang/String;

    .line 268
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getEventType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->typeId:Ljava/lang/Integer;

    .line 269
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getEventInfo()Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 270
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getEventInfo()Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getTimestampMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->timestamp:Ljava/lang/Long;

    .line 271
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getEventInfo()Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getOdometer()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->odometer:Ljava/lang/Float;

    .line 272
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getEventInfo()Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getLabel()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->label:Ljava/lang/String;

    .line 273
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getEventInfo()Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getLocation()Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 274
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getEventInfo()Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getLocation()Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getLatitude()Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->lat:Ljava/lang/Double;

    .line 275
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getEventInfo()Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getLocation()Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getLongitude()Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->lng:Ljava/lang/Double;

    .line 276
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getEventInfo()Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getLocation()Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getAltitude()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 277
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getEventInfo()Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getLocation()Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getAltitude()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_3
    iput-object v0, v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->altitude:Ljava/lang/Double;

    .line 278
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getEventInfo()Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getLocation()Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getAccuracy()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->accuracy:Ljava/lang/Float;

    .line 282
    :cond_4
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getDataVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->dataVersion:Ljava/lang/String;

    const-string v0, "DRIVING_EVENT"

    .line 283
    iput-object v0, v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->dataType:Ljava/lang/String;

    .line 284
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getIntervalTime()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->intervalTime:J

    .line 285
    iput-boolean v1, v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->syncNeeded:Z

    .line 286
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->isHidden()Z

    move-result p0

    iput-boolean p0, v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->hidden:Z

    .line 288
    iput-object p1, v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->tripObject:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    return-object v2
.end method

.method private getLastSavedMod()Ljava/util/Date;
    .locals 4

    .line 243
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    .line 244
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 245
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getId()Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "TripEvent.id = ?"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    .line 248
    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLastMod()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setUpdatableDataFromEvent(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;Lcom/texa/careapp/app/ecodriving/model/TripEventModel;)V
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getPosition()Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 183
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 184
    invoke-virtual {p1, p0}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->setLocation(Landroid/location/Location;)V

    const/4 p0, 0x1

    .line 185
    iput-boolean p0, p1, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->syncNeeded:Z

    .line 186
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    iput-object p0, p1, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->lastMod:Ljava/util/Date;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAccuracy()Ljava/lang/Float;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->accuracy:Ljava/lang/Float;

    return-object v0
.end method

.method public getAltitude()Ljava/lang/Double;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->altitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->dataType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataVersion()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->dataVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsSpeed()Ljava/lang/Float;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->gpsSpeed:Ljava/lang/Float;

    return-object v0
.end method

.method public getIntervalTime()J
    .locals 2

    .line 137
    iget-wide v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->intervalTime:J

    return-wide v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLastMod()Ljava/util/Date;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->lastMod:Ljava/util/Date;

    return-object v0
.end method

.method public getLat()Ljava/lang/Double;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->lat:Ljava/lang/Double;

    return-object v0
.end method

.method public getLng()Ljava/lang/Double;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->lng:Ljava/lang/Double;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->location:Landroid/location/Location;

    return-object v0
.end method

.method public getOdometer()Ljava/lang/Float;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->odometer:Ljava/lang/Float;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/Long;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public getTripObject()Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->tripObject:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    return-object v0
.end method

.method public getTypeId()Ljava/lang/Integer;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->typeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->hidden:Z

    return v0
.end method

.method public isSyncNeeded()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->syncNeeded:Z

    return v0
.end method

.method public saveAsSynced()Z
    .locals 2

    .line 231
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLastSavedMod()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->lastMod:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 232
    :cond_0
    iput-boolean v1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->syncNeeded:Z

    .line 233
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->lastMod:Ljava/util/Date;

    .line 235
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method

.method public setAccuracy(Ljava/lang/Float;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->accuracy:Ljava/lang/Float;

    return-void
.end method

.method public setAltitude(Ljava/lang/Double;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->altitude:Ljava/lang/Double;

    return-void
.end method

.method public setDataType(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->dataType:Ljava/lang/String;

    return-void
.end method

.method public setDataVersion(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->dataVersion:Ljava/lang/String;

    return-void
.end method

.method public setGpsSpeed(Ljava/lang/Float;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->gpsSpeed:Ljava/lang/Float;

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->hidden:Z

    return-void
.end method

.method public setIntervalTime(J)V
    .locals 0

    .line 138
    iput-wide p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->intervalTime:J

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->label:Ljava/lang/String;

    return-void
.end method

.method public setLastMod(Ljava/util/Date;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->lastMod:Ljava/util/Date;

    return-void
.end method

.method public setLat(Ljava/lang/Double;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->lat:Ljava/lang/Double;

    return-void
.end method

.method public setLng(Ljava/lang/Double;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->lng:Ljava/lang/Double;

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 2

    .line 191
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->location:Landroid/location/Location;

    .line 192
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->lat:Ljava/lang/Double;

    .line 193
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->lng:Ljava/lang/Double;

    .line 194
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->accuracy:Ljava/lang/Float;

    .line 195
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->altitude:Ljava/lang/Double;

    .line 196
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->gpsSpeed:Ljava/lang/Float;

    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 199
    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 200
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 202
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->rowLocation:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "PARCEL : %s"

    .line 204
    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setOdometer(Ljava/lang/Float;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->odometer:Ljava/lang/Float;

    return-void
.end method

.method public setSyncNeeded(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->syncNeeded:Z

    return-void
.end method

.method public setTimestamp(Ljava/lang/Long;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->timestamp:Ljava/lang/Long;

    return-void
.end method

.method public setTripObject(Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->tripObject:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    return-void
.end method

.method public setTypeId(Ljava/lang/Integer;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->typeId:Ljava/lang/Integer;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->uuid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TripEventModel{uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", typeId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->typeId:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", timestamp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", odometer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->odometer:Ljava/lang/Float;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", lat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->lat:Ljava/lang/Double;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", lng="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->lng:Ljava/lang/Double;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", accuracy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->accuracy:Ljava/lang/Float;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", altitude="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->altitude:Ljava/lang/Double;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", gpsSpeed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->gpsSpeed:Ljava/lang/Float;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", label=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dataVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->dataVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dataType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->dataType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", location="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->location:Landroid/location/Location;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", rowLocation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->rowLocation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", tripObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->tripObject:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intervalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->intervalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", syncNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->syncNeeded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
