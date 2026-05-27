.class public Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;
.super Ljava/lang/Object;
.source "TripBeginInfoBuilder.java"


# instance fields
.field private averageVoltageEngineOff:Ljava/lang/Float;

.field private minVoltageEngineOff:Ljava/lang/Float;

.field private odometer:Ljava/lang/Float;

.field private rawData:[B

.field private relativeTripNumber:Ljava/lang/Long;

.field private timeZoneOffset:Ljava/lang/Integer;

.field private timestamp:Ljava/util/Date;

.field private tripNumber:Ljava/lang/Long;

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->timeZoneOffset:Ljava/lang/Integer;

    return-void
.end method

.method public static from(Lcom/texa/carelib/care/trips/TripBeginInfo;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;
    .locals 5

    .line 22
    new-instance v0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    invoke-direct {v0}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;-><init>()V

    if-eqz p0, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getRawData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getRawData()[B

    move-result-object v1

    array-length v1, v1

    new-array v2, v1, [B

    .line 27
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getRawData()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    invoke-virtual {v0, v2}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setRawData([B)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setVersion(I)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v1

    .line 32
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getTripNumber()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v1

    .line 33
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getRelativeTripNumber()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setRelativeTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v1

    .line 34
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getOdometer()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setOdometer(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v1

    .line 35
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getAverageVoltageEngineOff()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setAverageVoltageEngineOff(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v1

    .line 36
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getMinVoltageEngineOff()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setMinVoltageEngineOff(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v1

    .line 37
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getTimeStamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v1

    .line 38
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getTimeZoneOffset()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setTimeZoneOffset(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public build()Lcom/texa/carelib/care/trips/TripBeginInfo;
    .locals 11

    .line 99
    new-instance v10, Lcom/texa/carelib/care/trips/TripBeginInfo;

    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->rawData:[B

    iget v2, p0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->version:I

    iget-object v3, p0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->tripNumber:Ljava/lang/Long;

    iget-object v4, p0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->relativeTripNumber:Ljava/lang/Long;

    iget-object v5, p0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->odometer:Ljava/lang/Float;

    iget-object v6, p0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->averageVoltageEngineOff:Ljava/lang/Float;

    iget-object v7, p0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->minVoltageEngineOff:Ljava/lang/Float;

    iget-object v8, p0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->timestamp:Ljava/util/Date;

    iget-object v9, p0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->timeZoneOffset:Ljava/lang/Integer;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/texa/carelib/care/trips/TripBeginInfo;-><init>([BILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/util/Date;Ljava/lang/Integer;)V

    return-object v10
.end method

.method public setAverageVoltageEngineOff(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->averageVoltageEngineOff:Ljava/lang/Float;

    return-object p0
.end method

.method public setMinVoltageEngineOff(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->minVoltageEngineOff:Ljava/lang/Float;

    return-object p0
.end method

.method public setOdometer(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->odometer:Ljava/lang/Float;

    return-object p0
.end method

.method public setRawData([B)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->rawData:[B

    return-object p0
.end method

.method public setRelativeTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->relativeTripNumber:Ljava/lang/Long;

    return-object p0
.end method

.method public setTimeZoneOffset(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0x80

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->timeZoneOffset:Ljava/lang/Integer;

    goto :goto_0

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->timeZoneOffset:Ljava/lang/Integer;

    :goto_0
    return-object p0
.end method

.method public setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->timestamp:Ljava/util/Date;

    return-object p0
.end method

.method public setTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->tripNumber:Ljava/lang/Long;

    return-object p0
.end method

.method public setVersion(I)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;
    .locals 0

    .line 54
    iput p1, p0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->version:I

    return-object p0
.end method
