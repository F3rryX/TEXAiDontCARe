.class public Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;
.super Ljava/lang/Object;
.source "DiaValueInfo.java"

# interfaces
.implements Lcom/texa/carelib/care/vehicle/ValueInfo;


# instance fields
.field private mData:[B

.field private mDataDetails:[B

.field private mDateLastUpdate:Ljava/util/Date;

.field private mID:J

.field private mIsAvailable:Z

.field private mSubscriptionInterval:Ljava/lang/Long;

.field private mSubscriptionState:Lcom/texa/carelib/care/vehicle/SubscriptionState;

.field private mType:Lcom/texa/carelib/care/vehicle/ValueDataType;

.field private mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mID:J

    .line 32
    sget-object v0, Lcom/texa/carelib/care/vehicle/ValueDataType;->NOT_READ:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mType:Lcom/texa/carelib/care/vehicle/ValueDataType;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mData:[B

    .line 35
    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mDataDetails:[B

    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mIsAvailable:Z

    .line 37
    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mDateLastUpdate:Ljava/util/Date;

    .line 38
    sget-object v1, Lcom/texa/carelib/care/vehicle/SubscriptionState;->NotSubscribed:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    iput-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mSubscriptionState:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    .line 39
    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mSubscriptionInterval:Ljava/lang/Long;

    .line 40
    new-instance v0, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserLegacy;

    invoke-direct {v0}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserLegacy;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    return-void
.end method

.method constructor <init>(Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;)V
    .locals 4

    .line 44
    invoke-direct {p0}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;-><init>()V

    if-eqz p1, :cond_3

    .line 47
    iget-wide v0, p1, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mID:J

    iput-wide v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mID:J

    .line 48
    iget-object v0, p1, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mType:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mType:Lcom/texa/carelib/care/vehicle/ValueDataType;

    .line 49
    iget-boolean v0, p1, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mIsAvailable:Z

    iput-boolean v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mIsAvailable:Z

    .line 51
    iget-object v0, p1, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mData:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 52
    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mData:[B

    .line 53
    iget-object v2, p1, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mData:[B

    array-length v3, v0

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    :cond_0
    iget-object v0, p1, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mDataDetails:[B

    if-eqz v0, :cond_1

    .line 57
    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mDataDetails:[B

    .line 58
    iget-object v2, p1, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mDataDetails:[B

    array-length v3, v0

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    :cond_1
    iget-object v0, p1, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mDateLastUpdate:Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mDateLastUpdate:Ljava/util/Date;

    .line 64
    :cond_2
    iget-object v0, p1, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mSubscriptionState:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mSubscriptionState:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    .line 65
    iget-object v0, p1, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mSubscriptionInterval:Ljava/lang/Long;

    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mSubscriptionInterval:Ljava/lang/Long;

    .line 66
    iget-object p1, p1, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    :cond_3
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mData:[B

    return-object v0
.end method

.method public getDataDetails()[B
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mDataDetails:[B

    return-object v0
.end method

.method public getDataStatus()B
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mDataDetails:[B

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;->getDataStatus([B)B

    move-result v0

    return v0
.end method

.method public getDateLastUpdate()Ljava/util/Date;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mDateLastUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getID()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mID:J

    return-wide v0
.end method

.method public getPrecision()I
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mDataDetails:[B

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;->getParameterPrecision([B)I

    move-result v0

    return v0
.end method

.method public getSubscriptionInterval()Ljava/lang/Long;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mSubscriptionInterval:Ljava/lang/Long;

    return-object v0
.end method

.method public getSubscriptionState()Lcom/texa/carelib/care/vehicle/SubscriptionState;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mSubscriptionState:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    return-object v0
.end method

.method public getType()Lcom/texa/carelib/care/vehicle/ValueDataType;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mType:Lcom/texa/carelib/care/vehicle/ValueDataType;

    return-object v0
.end method

.method hasData()Z
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mDataDetails:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mIsAvailable:Z

    return v0
.end method

.method setAvailable(Z)Lcom/texa/carelib/care/vehicle/ValueInfo;
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mIsAvailable:Z

    return-object p0
.end method

.method setData([B[B)Lcom/texa/carelib/care/vehicle/ValueInfo;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    invoke-virtual {p0, p1, p2, v0}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setData([B[BLcom/texa/carelib/care/vehicle/internal/VehicleValueParser;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object p1

    return-object p1
.end method

.method setData([B[BLcom/texa/carelib/care/vehicle/internal/VehicleValueParser;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mData:[B

    .line 156
    iput-object p2, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mDataDetails:[B

    .line 157
    iput-object p3, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    return-object p0
.end method

.method setDataStatus(B)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mDataDetails:[B

    invoke-interface {v0, v1, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;->setDataStatus([BB)V

    return-object p0
.end method

.method setDateLastUpdate(Ljava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mDateLastUpdate:Ljava/util/Date;

    return-object p0
.end method

.method setID(J)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;
    .locals 0

    .line 88
    iput-wide p1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mID:J

    return-object p0
.end method

.method setSubscriptionInterval(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/ValueInfo;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mSubscriptionInterval:Ljava/lang/Long;

    return-object p0
.end method

.method setSubscriptionState(Lcom/texa/carelib/care/vehicle/SubscriptionState;)Lcom/texa/carelib/care/vehicle/ValueInfo;
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mSubscriptionState:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    return-object p0
.end method

.method setType(Lcom/texa/carelib/care/vehicle/ValueDataType;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mType:Lcom/texa/carelib/care/vehicle/ValueDataType;

    return-object p0
.end method

.method public toDateTimeValue()Lcom/texa/carelib/care/DateTime;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mData:[B

    iget-object v2, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mDataDetails:[B

    invoke-interface {v0, v1, v2}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;->getDateTime([B[B)Lcom/texa/carelib/care/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public toEnumValue()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mData:[B

    iget-object v2, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mDataDetails:[B

    invoke-interface {v0, v1, v2}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;->getEnumValue([B[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public toFormattedNumericValue()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->toNumericValue()D

    move-result-wide v0

    .line 245
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->getPrecision()I

    move-result v2

    .line 249
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const-string v2, "%%.%df"

    invoke-static {v3, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toNumericValue()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mData:[B

    iget-object v2, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mDataDetails:[B

    invoke-interface {v0, v1, v2}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;->getParameterValue([B[B)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public toNumericValue(I)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->toNumericValue()D

    move-result-wide v0

    int-to-double v2, p1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 281
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int p1, v2

    int-to-double v2, p1

    mul-double v0, v0, v2

    .line 282
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiaValueInfo{mID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mType:Lcom/texa/carelib/care/vehicle/ValueDataType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mData:[B

    .line 340
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDataDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mDataDetails:[B

    .line 341
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mIsAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDateLastUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mDateLastUpdate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSubscriptionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mSubscriptionState:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSubscriptionInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mSubscriptionInterval:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTextValue()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mData:[B

    iget-object v2, p0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->mDataDetails:[B

    invoke-interface {v0, v1, v2}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;->getTextValue([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
