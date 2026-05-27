.class public Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;
.super Ljava/lang/Object;
.source "TripEndInfoBuilder.java"


# instance fields
.field private driverID:Ljava/util/UUID;

.field private isMILLampDetected:Ljava/lang/Boolean;

.field private maxVoltageEngineOn:Ljava/lang/Float;

.field private numOfImpactDetected:Ljava/lang/Integer;

.field private odometer:Ljava/lang/Float;

.field private odometerEstimationMethod:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

.field private rawData:[B

.field private timeZoneOffset:Ljava/lang/Integer;

.field private timestamp:Ljava/util/Date;

.field private tripEndCause:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

.field private tripNumber:Ljava/lang/Long;

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->timeZoneOffset:Ljava/lang/Integer;

    return-void
.end method

.method public static from(Lcom/texa/carelib/care/trips/TripEndInfo;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;
    .locals 5

    .line 26
    new-instance v0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    invoke-direct {v0}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;-><init>()V

    if-eqz p0, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripEndInfo;->getRawData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripEndInfo;->getRawData()[B

    move-result-object v1

    array-length v1, v1

    new-array v2, v1, [B

    .line 31
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripEndInfo;->getRawData()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    invoke-virtual {v0, v2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setRawData([B)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripEndInfo;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setVersion(I)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v1

    .line 36
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripEndInfo;->getOdometer()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setOdometer(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v1

    .line 37
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripEndInfo;->getTripNumber()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v1

    .line 38
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripEndInfo;->getOdometerEstimationMethod()Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setOdometerEstimationMethod(Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v1

    .line 39
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripEndInfo;->getMaxVoltageEngineOn()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setMaxVoltageEngineOn(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v1

    .line 40
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripEndInfo;->isMILLampDetected()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setIsMILLampDetected(Ljava/lang/Boolean;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v1

    .line 41
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripEndInfo;->getTripEndCause()Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setTripEndCause(Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v1

    .line 42
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripEndInfo;->getNumOfImpactDetected()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setNumOfImpactDetected(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v1

    .line 43
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripEndInfo;->getDriverID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setDriverID(Ljava/util/UUID;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v1

    .line 44
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripEndInfo;->getTimeZoneOffset()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setTimeZoneOffset(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v1

    .line 45
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripEndInfo;->getTimeStamp()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public build()Lcom/texa/carelib/care/trips/TripEndInfo;
    .locals 14

    .line 120
    new-instance v13, Lcom/texa/carelib/care/trips/TripEndInfo;

    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->rawData:[B

    iget v2, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->version:I

    iget-object v3, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->odometer:Ljava/lang/Float;

    iget-object v4, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->tripNumber:Ljava/lang/Long;

    iget-object v5, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->odometerEstimationMethod:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    iget-object v6, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->maxVoltageEngineOn:Ljava/lang/Float;

    iget-object v7, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->isMILLampDetected:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->tripEndCause:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    iget-object v9, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->numOfImpactDetected:Ljava/lang/Integer;

    iget-object v10, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->driverID:Ljava/util/UUID;

    iget-object v11, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->timeZoneOffset:Ljava/lang/Integer;

    iget-object v12, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->timestamp:Ljava/util/Date;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/texa/carelib/care/trips/TripEndInfo;-><init>([BILjava/lang/Float;Ljava/lang/Long;Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;Ljava/lang/Float;Ljava/lang/Boolean;Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;Ljava/lang/Integer;Ljava/util/UUID;Ljava/lang/Integer;Ljava/util/Date;)V

    return-object v13
.end method

.method public setDriverID(Ljava/util/UUID;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->driverID:Ljava/util/UUID;

    return-object p0
.end method

.method public setIsMILLampDetected(Ljava/lang/Boolean;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->isMILLampDetected:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setMaxVoltageEngineOn(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->maxVoltageEngineOn:Ljava/lang/Float;

    return-object p0
.end method

.method public setNumOfImpactDetected(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->numOfImpactDetected:Ljava/lang/Integer;

    return-object p0
.end method

.method public setOdometer(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->odometer:Ljava/lang/Float;

    return-object p0
.end method

.method public setOdometerEstimationMethod(Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->odometerEstimationMethod:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    return-object p0
.end method

.method public setRawData([B)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->rawData:[B

    return-object p0
.end method

.method public setTimeZoneOffset(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0x80

    .line 106
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->timeZoneOffset:Ljava/lang/Integer;

    goto :goto_0

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->timeZoneOffset:Ljava/lang/Integer;

    :goto_0
    return-object p0
.end method

.method public setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->timestamp:Ljava/util/Date;

    return-object p0
.end method

.method public setTripEndCause(Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->tripEndCause:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    return-object p0
.end method

.method public setTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->tripNumber:Ljava/lang/Long;

    return-object p0
.end method

.method public setVersion(I)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;
    .locals 0

    .line 60
    iput p1, p0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->version:I

    return-object p0
.end method
