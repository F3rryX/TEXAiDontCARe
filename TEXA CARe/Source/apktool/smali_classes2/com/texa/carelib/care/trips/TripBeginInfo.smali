.class public Lcom/texa/carelib/care/trips/TripBeginInfo;
.super Ljava/lang/Object;
.source "TripBeginInfo.java"

# interfaces
.implements Lcom/texa/carelib/core/utils/CareStruct;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final NO_TIMEZONE_OFFSET:I = 0x80


# instance fields
.field private mAverageVoltageEngineOff:Ljava/lang/Float;

.field private mMinVoltageEngineOff:Ljava/lang/Float;

.field private mOdometer:Ljava/lang/Float;

.field private mRawData:[B

.field private mRelativeTripNumber:Ljava/lang/Long;

.field private mTimeZoneOffset:Ljava/lang/Integer;

.field private mTimestamp:Ljava/util/Date;

.field private mTripNumber:Ljava/lang/Long;

.field private mVersion:I


# direct methods
.method public constructor <init>(Lcom/texa/carelib/care/trips/TripBeginInfo;)V
    .locals 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getRawData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getRawData()[B

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mRawData:[B

    .line 46
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getRawData()[B

    move-result-object v0

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mRawData:[B

    array-length v2, v1

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripBeginInfo;->mRawData:[B

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mRawData:[B

    .line 51
    :goto_0
    iget v0, p1, Lcom/texa/carelib/care/trips/TripBeginInfo;->mVersion:I

    iput v0, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mVersion:I

    .line 53
    iget-object v0, p1, Lcom/texa/carelib/care/trips/TripBeginInfo;->mTripNumber:Ljava/lang/Long;

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mTripNumber:Ljava/lang/Long;

    .line 55
    iget-object v0, p1, Lcom/texa/carelib/care/trips/TripBeginInfo;->mRelativeTripNumber:Ljava/lang/Long;

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mRelativeTripNumber:Ljava/lang/Long;

    .line 57
    iget-object v0, p1, Lcom/texa/carelib/care/trips/TripBeginInfo;->mOdometer:Ljava/lang/Float;

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mOdometer:Ljava/lang/Float;

    .line 60
    iget-object v0, p1, Lcom/texa/carelib/care/trips/TripBeginInfo;->mAverageVoltageEngineOff:Ljava/lang/Float;

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mAverageVoltageEngineOff:Ljava/lang/Float;

    .line 61
    iget-object v0, p1, Lcom/texa/carelib/care/trips/TripBeginInfo;->mMinVoltageEngineOff:Ljava/lang/Float;

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mMinVoltageEngineOff:Ljava/lang/Float;

    .line 63
    iget-object v0, p1, Lcom/texa/carelib/care/trips/TripBeginInfo;->mTimestamp:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mTimestamp:Ljava/util/Date;

    .line 66
    :cond_1
    iget-object p1, p1, Lcom/texa/carelib/care/trips/TripBeginInfo;->mTimeZoneOffset:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mTimeZoneOffset:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>([BILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/util/Date;Ljava/lang/Integer;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mRawData:[B

    .line 32
    iput p2, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mVersion:I

    .line 33
    iput-object p3, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mTripNumber:Ljava/lang/Long;

    .line 34
    iput-object p4, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mRelativeTripNumber:Ljava/lang/Long;

    .line 35
    iput-object p5, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mOdometer:Ljava/lang/Float;

    .line 36
    iput-object p6, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mAverageVoltageEngineOff:Ljava/lang/Float;

    .line 37
    iput-object p7, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mMinVoltageEngineOff:Ljava/lang/Float;

    .line 38
    iput-object p8, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mTimestamp:Ljava/util/Date;

    .line 39
    iput-object p9, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mTimeZoneOffset:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 138
    :cond_1
    check-cast p1, Lcom/texa/carelib/care/trips/TripBeginInfo;

    .line 139
    iget v2, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/texa/carelib/care/trips/TripBeginInfo;->mVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mTripNumber:Ljava/lang/Long;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripBeginInfo;->mTripNumber:Ljava/lang/Long;

    .line 141
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mRelativeTripNumber:Ljava/lang/Long;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripBeginInfo;->mRelativeTripNumber:Ljava/lang/Long;

    .line 142
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mOdometer:Ljava/lang/Float;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripBeginInfo;->mOdometer:Ljava/lang/Float;

    .line 143
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mAverageVoltageEngineOff:Ljava/lang/Float;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripBeginInfo;->mAverageVoltageEngineOff:Ljava/lang/Float;

    .line 144
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mMinVoltageEngineOff:Ljava/lang/Float;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripBeginInfo;->mMinVoltageEngineOff:Ljava/lang/Float;

    .line 145
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mTimestamp:Ljava/util/Date;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripBeginInfo;->mTimestamp:Ljava/util/Date;

    .line 146
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mTimeZoneOffset:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/texa/carelib/care/trips/TripBeginInfo;->mTimeZoneOffset:Ljava/lang/Integer;

    .line 147
    invoke-static {v2, p1}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAverageVoltageEngineOff()Ljava/lang/Float;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mAverageVoltageEngineOff:Ljava/lang/Float;

    return-object v0
.end method

.method public getMinVoltageEngineOff()Ljava/lang/Float;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mMinVoltageEngineOff:Ljava/lang/Float;

    return-object v0
.end method

.method public getOdometer()Ljava/lang/Float;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mOdometer:Ljava/lang/Float;

    return-object v0
.end method

.method public getRawData()[B
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mRawData:[B

    return-object v0
.end method

.method public getRelativeTripNumber()Ljava/lang/Long;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mRelativeTripNumber:Ljava/lang/Long;

    return-object v0
.end method

.method public getTimeStamp()Ljava/util/Date;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getTimeZoneOffset()Ljava/lang/Integer;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mTimeZoneOffset:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTripNumber()Ljava/lang/Long;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mTripNumber:Ljava/lang/Long;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mVersion:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mRawData:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mTripNumber:Ljava/lang/Long;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mRelativeTripNumber:Ljava/lang/Long;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mOdometer:Ljava/lang/Float;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mAverageVoltageEngineOff:Ljava/lang/Float;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mMinVoltageEngineOff:Ljava/lang/Float;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mTimestamp:Ljava/util/Date;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripBeginInfo;->mTimeZoneOffset:Ljava/lang/Integer;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/Utils;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
