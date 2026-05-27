.class public Lcom/texa/careapp/model/TripModel;
.super Lcom/activeandroid/Model;
.source "TripModel.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "DataTrip"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/model/TripModel$LocationData;,
        Lcom/texa/careapp/model/TripModel$BatteryState;,
        Lcom/texa/careapp/model/TripModel$TripData;,
        Lcom/texa/careapp/model/TripModel$TripLocations;
    }
.end annotation


# static fields
.field public static final COLUMN_TRIP_NUMBER:Ljava/lang/String; = "trip_number"

.field public static final TABLE_TRIPS:Ljava/lang/String; = "DataTrip"

.field private static final TAG:Ljava/lang/String; = "TripModel"


# instance fields
.field public batteryState:Lcom/texa/careapp/model/TripModel$BatteryState;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Battery"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public lightMilOn:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public locations:Lcom/texa/careapp/model/TripModel$TripLocations;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public odoMode:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public rawData:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public sosNumber:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public tripEnd:Lcom/texa/careapp/model/TripModel$TripData;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public tripEndCause:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public tripNumber:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "trip_number"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public tripStart:Lcom/texa/careapp/model/TripModel$TripData;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public vehicleId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 57
    new-instance v0, Lcom/texa/careapp/model/TripModel$TripData;

    invoke-direct {v0}, Lcom/texa/careapp/model/TripModel$TripData;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/model/TripModel;->tripStart:Lcom/texa/careapp/model/TripModel$TripData;

    .line 63
    new-instance v0, Lcom/texa/careapp/model/TripModel$TripData;

    invoke-direct {v0}, Lcom/texa/careapp/model/TripModel$TripData;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/model/TripModel;->tripEnd:Lcom/texa/careapp/model/TripModel$TripData;

    .line 69
    new-instance v0, Lcom/texa/careapp/model/TripModel$BatteryState;

    invoke-direct {v0}, Lcom/texa/careapp/model/TripModel$BatteryState;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/model/TripModel;->batteryState:Lcom/texa/careapp/model/TripModel$BatteryState;

    const-string v0, ""

    .line 99
    iput-object v0, p0, Lcom/texa/careapp/model/TripModel;->rawData:Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/texa/careapp/model/TripModel$TripLocations;

    invoke-direct {v0}, Lcom/texa/careapp/model/TripModel$TripLocations;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/model/TripModel;->locations:Lcom/texa/careapp/model/TripModel$TripLocations;

    return-void
.end method

.method private static convertRawData([B)Ljava/lang/String;
    .locals 2

    .line 254
    :try_start_0
    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->convertTripDataRaw([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 256
    sget-object v0, Lcom/texa/careapp/model/TripModel;->TAG:Ljava/lang/String;

    const-string v1, "got exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static from(Lcom/texa/carelib/care/trips/CurrentTrip;Ljava/lang/String;)Lcom/texa/careapp/model/TripModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-nez p0, :cond_0

    .line 114
    sget-object p0, Lcom/texa/careapp/model/TripModel;->TAG:Ljava/lang/String;

    const-string p1, "CurrenTrip == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 118
    :cond_0
    invoke-interface {p0}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripBeginInfo()Lcom/texa/carelib/care/trips/TripBeginInfo;

    move-result-object v0

    invoke-interface {p0}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripEndInfo()Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object v1

    invoke-interface {p0}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripStatisticsInfo()Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object p0

    invoke-static {v0, v1, p0, p1}, Lcom/texa/careapp/model/TripModel;->from(Lcom/texa/carelib/care/trips/TripBeginInfo;Lcom/texa/carelib/care/trips/TripEndInfo;Lcom/texa/carelib/care/trips/TripStatisticsInfo;Ljava/lang/String;)Lcom/texa/careapp/model/TripModel;

    move-result-object p0

    return-object p0
.end method

.method private static from(Lcom/texa/carelib/care/trips/TripBeginInfo;Lcom/texa/carelib/care/trips/TripEndInfo;Lcom/texa/carelib/care/trips/TripStatisticsInfo;Ljava/lang/String;)Lcom/texa/careapp/model/TripModel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 134
    new-instance v0, Lcom/texa/careapp/model/TripModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/TripModel;-><init>()V

    .line 135
    invoke-virtual {v0, p3}, Lcom/texa/careapp/model/TripModel;->setVehicleId(Ljava/lang/String;)V

    const/4 p3, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    .line 143
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getOdometer()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 145
    iget-object v2, v0, Lcom/texa/careapp/model/TripModel;->tripStart:Lcom/texa/careapp/model/TripModel$TripData;

    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getOdometer()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Lcom/texa/careapp/model/TripModel$TripData;->odo:I

    .line 146
    iget-object v2, v0, Lcom/texa/careapp/model/TripModel;->tripStart:Lcom/texa/careapp/model/TripModel$TripData;

    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getTimeStamp()Ljava/util/Date;

    move-result-object v3

    iput-object v3, v2, Lcom/texa/careapp/model/TripModel$TripData;->time:Ljava/util/Date;

    .line 148
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getAverageVoltageEngineOff()Ljava/lang/Float;

    move-result-object v2

    if-nez v2, :cond_0

    .line 149
    iget-object v2, v0, Lcom/texa/careapp/model/TripModel;->batteryState:Lcom/texa/careapp/model/TripModel$BatteryState;

    iput p3, v2, Lcom/texa/careapp/model/TripModel$BatteryState;->off:F

    goto :goto_0

    .line 151
    :cond_0
    iget-object v2, v0, Lcom/texa/careapp/model/TripModel;->batteryState:Lcom/texa/careapp/model/TripModel$BatteryState;

    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getAverageVoltageEngineOff()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/texa/careapp/model/TripModel$BatteryState;->off:F

    .line 154
    :goto_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getMinVoltageEngineOff()Ljava/lang/Float;

    move-result-object v2

    if-nez v2, :cond_1

    .line 155
    iget-object v2, v0, Lcom/texa/careapp/model/TripModel;->batteryState:Lcom/texa/careapp/model/TripModel$BatteryState;

    iput p3, v2, Lcom/texa/careapp/model/TripModel$BatteryState;->min:F

    goto :goto_1

    .line 157
    :cond_1
    iget-object v2, v0, Lcom/texa/careapp/model/TripModel;->batteryState:Lcom/texa/careapp/model/TripModel$BatteryState;

    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getMinVoltageEngineOff()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/texa/careapp/model/TripModel$BatteryState;->min:F

    .line 159
    :goto_1
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getRawData()[B

    move-result-object p0

    goto :goto_2

    .line 144
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "TripStartInfo#getOdometer() returns null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    move-object p0, v1

    :goto_2
    if-eqz p1, :cond_9

    .line 163
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripEndInfo;->getDriverID()Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 164
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripEndInfo;->getDriverID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/texa/careapp/model/TripModel;->userId:Ljava/lang/String;

    .line 166
    :cond_4
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripEndInfo;->getOdometer()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 169
    iget-object v2, v0, Lcom/texa/careapp/model/TripModel;->tripEnd:Lcom/texa/careapp/model/TripModel$TripData;

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripEndInfo;->getOdometer()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Lcom/texa/careapp/model/TripModel$TripData;->odo:I

    .line 170
    iget-object v2, v0, Lcom/texa/careapp/model/TripModel;->tripEnd:Lcom/texa/careapp/model/TripModel$TripData;

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripEndInfo;->getTimeStamp()Ljava/util/Date;

    move-result-object v3

    iput-object v3, v2, Lcom/texa/careapp/model/TripModel$TripData;->time:Ljava/util/Date;

    .line 171
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripEndInfo;->getTripNumber()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/texa/careapp/model/TripModel;->tripNumber:J

    .line 173
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripEndInfo;->getMaxVoltageEngineOn()Ljava/lang/Float;

    move-result-object v2

    if-nez v2, :cond_5

    .line 174
    iget-object v2, v0, Lcom/texa/careapp/model/TripModel;->batteryState:Lcom/texa/careapp/model/TripModel$BatteryState;

    iput p3, v2, Lcom/texa/careapp/model/TripModel$BatteryState;->on:F

    goto :goto_3

    .line 176
    :cond_5
    iget-object p3, v0, Lcom/texa/careapp/model/TripModel;->batteryState:Lcom/texa/careapp/model/TripModel$BatteryState;

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripEndInfo;->getMaxVoltageEngineOn()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p3, Lcom/texa/careapp/model/TripModel$BatteryState;->on:F

    .line 178
    :goto_3
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripEndInfo;->getNumOfImpactDetected()Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x0

    if-nez p3, :cond_6

    .line 179
    iput v2, v0, Lcom/texa/careapp/model/TripModel;->sosNumber:I

    goto :goto_4

    .line 181
    :cond_6
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripEndInfo;->getNumOfImpactDetected()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, v0, Lcom/texa/careapp/model/TripModel;->sosNumber:I

    .line 183
    :goto_4
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripEndInfo;->isMILLampDetected()Ljava/lang/Boolean;

    move-result-object p3

    if-nez p3, :cond_7

    .line 185
    iput-boolean v2, v0, Lcom/texa/careapp/model/TripModel;->lightMilOn:Z

    goto :goto_5

    .line 187
    :cond_7
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iput-boolean p3, v0, Lcom/texa/careapp/model/TripModel;->lightMilOn:Z

    .line 195
    :goto_5
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripEndInfo;->getTripEndCause()Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    move-result-object p3

    invoke-static {p3}, Lcom/texa/careapp/model/TripModel;->getTripEndCause(Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;)I

    move-result p3

    iput p3, v0, Lcom/texa/careapp/model/TripModel;->tripEndCause:I

    .line 197
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripEndInfo;->getOdometerEstimationMethod()Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    move-result-object p3

    invoke-static {p3}, Lcom/texa/careapp/model/TripModel;->getOdometerEstimationMethod(Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;)I

    move-result p3

    iput p3, v0, Lcom/texa/careapp/model/TripModel;->odoMode:I

    .line 199
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripEndInfo;->getRawData()[B

    move-result-object p1

    goto :goto_6

    .line 167
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "TripStopInfo#getOdometer() returns null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    move-object p1, v1

    :goto_6
    if-eqz p2, :cond_a

    .line 203
    invoke-virtual {p2}, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->getRawData()[B

    move-result-object p2

    goto :goto_7

    :cond_a
    move-object p2, v1

    .line 206
    :goto_7
    invoke-static {p0, p1, v1, p2}, Lcom/texa/careapp/utils/Utils;->getCombinedTripRawData([B[B[B[B)[B

    move-result-object p0

    if-eqz p0, :cond_b

    .line 208
    array-length p1, p0

    if-lez p1, :cond_b

    .line 209
    invoke-static {p0}, Lcom/texa/careapp/model/TripModel;->convertRawData([B)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/texa/careapp/model/TripModel;->rawData:Ljava/lang/String;

    goto :goto_8

    :cond_b
    const-string p0, ""

    .line 211
    iput-object p0, v0, Lcom/texa/careapp/model/TripModel;->rawData:Ljava/lang/String;

    :goto_8
    return-object v0
.end method

.method public static from(Lcom/texa/carelib/care/trips/TripInfo;Ljava/lang/String;)Lcom/texa/careapp/model/TripModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-nez p0, :cond_0

    .line 124
    sget-object p0, Lcom/texa/careapp/model/TripModel;->TAG:Ljava/lang/String;

    const-string p1, "TripInfo == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripInfo;->getTripBeginInfo()Lcom/texa/carelib/care/trips/TripBeginInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripInfo;->getTripEndInfo()Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripInfo;->getTripStatisticsInfo()Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object p0

    invoke-static {v0, v1, p0, p1}, Lcom/texa/careapp/model/TripModel;->from(Lcom/texa/carelib/care/trips/TripBeginInfo;Lcom/texa/carelib/care/trips/TripEndInfo;Lcom/texa/carelib/care/trips/TripStatisticsInfo;Ljava/lang/String;)Lcom/texa/careapp/model/TripModel;

    move-result-object p0

    return-object p0
.end method

.method protected static getOdometerEstimationMethod(Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;)I
    .locals 1

    .line 218
    sget-object v0, Lcom/texa/careapp/model/TripModel$1;->$SwitchMap$com$texa$carelib$care$trips$TripEndInfo$OdometerEstimationMethod:[I

    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method protected static getTripEndCause(Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;)I
    .locals 1

    .line 233
    sget-object v0, Lcom/texa/careapp/model/TripModel$1;->$SwitchMap$com$texa$carelib$care$trips$TripEndInfo$TripEndCause:[I

    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public addLocation(Landroid/location/Location;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 264
    new-instance v0, Lcom/texa/careapp/model/TripModel$LocationData;

    invoke-direct {v0}, Lcom/texa/careapp/model/TripModel$LocationData;-><init>()V

    .line 265
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/texa/careapp/model/TripModel$LocationData;->latitude:D

    .line 266
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/texa/careapp/model/TripModel$LocationData;->longitude:D

    .line 267
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    iput p1, v0, Lcom/texa/careapp/model/TripModel$LocationData;->accuracy:F

    .line 268
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, v0, Lcom/texa/careapp/model/TripModel$LocationData;->timestamp:Ljava/util/Date;

    .line 269
    iget-object p1, p0, Lcom/texa/careapp/model/TripModel;->locations:Lcom/texa/careapp/model/TripModel$TripLocations;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/TripModel$TripLocations;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getBatteryState()Lcom/texa/careapp/model/TripModel$BatteryState;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/texa/careapp/model/TripModel;->batteryState:Lcom/texa/careapp/model/TripModel$BatteryState;

    return-object v0
.end method

.method public getLocations()Lcom/texa/careapp/model/TripModel$TripLocations;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/texa/careapp/model/TripModel;->locations:Lcom/texa/careapp/model/TripModel$TripLocations;

    return-object v0
.end method

.method public getOdoMode()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/texa/careapp/model/TripModel;->odoMode:I

    return v0
.end method

.method public getRawData()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/texa/careapp/model/TripModel;->rawData:Ljava/lang/String;

    return-object v0
.end method

.method public getSosNumber()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/texa/careapp/model/TripModel;->sosNumber:I

    return v0
.end method

.method public getTripEnd()Lcom/texa/careapp/model/TripModel$TripData;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/texa/careapp/model/TripModel;->tripEnd:Lcom/texa/careapp/model/TripModel$TripData;

    return-object v0
.end method

.method public getTripEndCause()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/texa/careapp/model/TripModel;->tripEndCause:I

    return v0
.end method

.method public getTripNumber()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/texa/careapp/model/TripModel;->tripNumber:J

    return-wide v0
.end method

.method public getTripStart()Lcom/texa/careapp/model/TripModel$TripData;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/texa/careapp/model/TripModel;->tripStart:Lcom/texa/careapp/model/TripModel$TripData;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/texa/careapp/model/TripModel;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/texa/careapp/model/TripModel;->vehicleId:Ljava/lang/String;

    return-object v0
.end method

.method public isLightMilOn()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/texa/careapp/model/TripModel;->lightMilOn:Z

    return v0
.end method

.method public setBatteryState(Lcom/texa/careapp/model/TripModel$BatteryState;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/texa/careapp/model/TripModel;->batteryState:Lcom/texa/careapp/model/TripModel$BatteryState;

    return-void
.end method

.method public setLightMilOn(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/texa/careapp/model/TripModel;->lightMilOn:Z

    return-void
.end method

.method public setLocations(Lcom/texa/careapp/model/TripModel$TripLocations;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/texa/careapp/model/TripModel;->locations:Lcom/texa/careapp/model/TripModel$TripLocations;

    return-void
.end method

.method public setOdoMode(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/texa/careapp/model/TripModel;->odoMode:I

    return-void
.end method

.method public setRawData(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/texa/careapp/model/TripModel;->rawData:Ljava/lang/String;

    return-void
.end method

.method public setSosNumber(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/texa/careapp/model/TripModel;->sosNumber:I

    return-void
.end method

.method public setTripEnd(Lcom/texa/careapp/model/TripModel$TripData;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/texa/careapp/model/TripModel;->tripEnd:Lcom/texa/careapp/model/TripModel$TripData;

    return-void
.end method

.method public setTripEndCause(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/texa/careapp/model/TripModel;->tripEndCause:I

    return-void
.end method

.method public setTripNumber(J)V
    .locals 0

    .line 54
    iput-wide p1, p0, Lcom/texa/careapp/model/TripModel;->tripNumber:J

    return-void
.end method

.method public setTripStart(Lcom/texa/careapp/model/TripModel$TripData;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/texa/careapp/model/TripModel;->tripStart:Lcom/texa/careapp/model/TripModel$TripData;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/texa/careapp/model/TripModel;->userId:Ljava/lang/String;

    return-void
.end method

.method public setVehicleId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/texa/careapp/model/TripModel;->vehicleId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 289
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->buildGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    .line 290
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateData(Lcom/texa/careapp/model/TripModel;)V
    .locals 2

    .line 274
    invoke-virtual {p1}, Lcom/texa/careapp/model/TripModel;->getVehicleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/TripModel;->setVehicleId(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Lcom/texa/careapp/model/TripModel;->getTripNumber()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/model/TripModel;->setTripNumber(J)V

    .line 276
    invoke-virtual {p1}, Lcom/texa/careapp/model/TripModel;->getTripEnd()Lcom/texa/careapp/model/TripModel$TripData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/TripModel;->setTripEnd(Lcom/texa/careapp/model/TripModel$TripData;)V

    .line 277
    invoke-virtual {p1}, Lcom/texa/careapp/model/TripModel;->getTripStart()Lcom/texa/careapp/model/TripModel$TripData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/TripModel;->setTripStart(Lcom/texa/careapp/model/TripModel$TripData;)V

    .line 278
    invoke-virtual {p1}, Lcom/texa/careapp/model/TripModel;->getBatteryState()Lcom/texa/careapp/model/TripModel$BatteryState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/TripModel;->setBatteryState(Lcom/texa/careapp/model/TripModel$BatteryState;)V

    .line 279
    invoke-virtual {p1}, Lcom/texa/careapp/model/TripModel;->isLightMilOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/texa/careapp/model/TripModel;->lightMilOn:Z

    .line 280
    invoke-virtual {p1}, Lcom/texa/careapp/model/TripModel;->getSosNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/TripModel;->setSosNumber(I)V

    .line 281
    invoke-virtual {p1}, Lcom/texa/careapp/model/TripModel;->getTripEndCause()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/TripModel;->setTripEndCause(I)V

    .line 282
    invoke-virtual {p1}, Lcom/texa/careapp/model/TripModel;->getOdoMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/TripModel;->setOdoMode(I)V

    .line 283
    invoke-virtual {p1}, Lcom/texa/careapp/model/TripModel;->getRawData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/TripModel;->setRawData(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/texa/careapp/model/TripModel;->locations:Lcom/texa/careapp/model/TripModel$TripLocations;

    invoke-virtual {p1}, Lcom/texa/careapp/model/TripModel;->getLocations()Lcom/texa/careapp/model/TripModel$TripLocations;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/TripModel$TripLocations;->addAll(Ljava/util/Collection;)Z

    .line 285
    iget-object p1, p1, Lcom/texa/careapp/model/TripModel;->userId:Ljava/lang/String;

    iput-object p1, p0, Lcom/texa/careapp/model/TripModel;->userId:Ljava/lang/String;

    return-void
.end method
