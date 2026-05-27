.class public Lcom/texa/carelib/care/trips/TripEndInfo;
.super Ljava/lang/Object;
.source "TripEndInfo.java"

# interfaces
.implements Lcom/texa/carelib/core/utils/CareStruct;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;,
        Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;
    }
.end annotation


# static fields
.field public static final NO_TIMEZONE_OFFSET:I = 0x80


# instance fields
.field private mDriverID:Ljava/util/UUID;

.field private mIsMILLampDetected:Ljava/lang/Boolean;

.field private mMaxVoltageEngineOn:Ljava/lang/Float;

.field private mNumOfImpactDetected:Ljava/lang/Integer;

.field private mOdometer:Ljava/lang/Float;

.field private mOdometerEstimationMethod:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

.field private mRawData:[B

.field private mTimeZoneOffset:Ljava/lang/Integer;

.field private mTimestamp:Ljava/util/Date;

.field private mTripEndCause:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

.field private mTripNumber:Ljava/lang/Long;

.field private mVersion:I


# direct methods
.method public constructor <init>(Lcom/texa/carelib/care/trips/TripEndInfo;)V
    .locals 6

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iget-object v0, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mRawData:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mRawData:[B

    .line 98
    iget-object v2, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mRawData:[B

    array-length v3, v0

    array-length v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 101
    :cond_0
    iput-object v1, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mRawData:[B

    .line 103
    :goto_0
    iget v0, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mVersion:I

    iput v0, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mVersion:I

    .line 105
    iget-object v0, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mTripNumber:Ljava/lang/Long;

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mTripNumber:Ljava/lang/Long;

    .line 107
    iget-object v0, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mOdometer:Ljava/lang/Float;

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mOdometer:Ljava/lang/Float;

    .line 109
    iget-object v0, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mMaxVoltageEngineOn:Ljava/lang/Float;

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mMaxVoltageEngineOn:Ljava/lang/Float;

    .line 111
    iget-object v0, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mOdometerEstimationMethod:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mOdometerEstimationMethod:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    .line 112
    iget-object v0, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mIsMILLampDetected:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mIsMILLampDetected:Ljava/lang/Boolean;

    .line 113
    iget-object v0, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mTripEndCause:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mTripEndCause:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    .line 115
    iget-object v0, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mNumOfImpactDetected:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mNumOfImpactDetected:Ljava/lang/Integer;

    .line 117
    iget-object v0, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mDriverID:Ljava/util/UUID;

    if-eqz v0, :cond_1

    .line 118
    new-instance v0, Ljava/util/UUID;

    iget-object v2, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mDriverID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    iget-object v4, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mDriverID:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mDriverID:Ljava/util/UUID;

    goto :goto_1

    .line 120
    :cond_1
    iput-object v1, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mDriverID:Ljava/util/UUID;

    .line 122
    :goto_1
    iget-object v0, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mTimestamp:Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mTimestamp:Ljava/util/Date;

    goto :goto_2

    .line 125
    :cond_2
    iput-object v1, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mTimestamp:Ljava/util/Date;

    .line 127
    :goto_2
    iget-object p1, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mTimeZoneOffset:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mTimeZoneOffset:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>([BILjava/lang/Float;Ljava/lang/Long;Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;Ljava/lang/Float;Ljava/lang/Boolean;Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;Ljava/lang/Integer;Ljava/util/UUID;Ljava/lang/Integer;Ljava/util/Date;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mRawData:[B

    .line 80
    iput p2, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mVersion:I

    .line 81
    iput-object p3, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mOdometer:Ljava/lang/Float;

    .line 82
    iput-object p4, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mTripNumber:Ljava/lang/Long;

    .line 83
    iput-object p5, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mOdometerEstimationMethod:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    .line 84
    iput-object p6, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mMaxVoltageEngineOn:Ljava/lang/Float;

    .line 85
    iput-object p7, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mIsMILLampDetected:Ljava/lang/Boolean;

    .line 86
    iput-object p8, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mTripEndCause:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    .line 87
    iput-object p9, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mNumOfImpactDetected:Ljava/lang/Integer;

    .line 88
    iput-object p10, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mDriverID:Ljava/util/UUID;

    .line 89
    iput-object p11, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mTimeZoneOffset:Ljava/lang/Integer;

    .line 90
    iput-object p12, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mTimestamp:Ljava/util/Date;

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

    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 223
    :cond_1
    check-cast p1, Lcom/texa/carelib/care/trips/TripEndInfo;

    .line 224
    iget v2, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mOdometer:Ljava/lang/Float;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mOdometer:Ljava/lang/Float;

    .line 226
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mTripNumber:Ljava/lang/Long;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mTripNumber:Ljava/lang/Long;

    .line 227
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mOdometerEstimationMethod:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mOdometerEstimationMethod:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    .line 228
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mMaxVoltageEngineOn:Ljava/lang/Float;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mMaxVoltageEngineOn:Ljava/lang/Float;

    .line 229
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mIsMILLampDetected:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mIsMILLampDetected:Ljava/lang/Boolean;

    .line 230
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mTripEndCause:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mTripEndCause:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    .line 231
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mNumOfImpactDetected:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mNumOfImpactDetected:Ljava/lang/Integer;

    .line 232
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mDriverID:Ljava/util/UUID;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mDriverID:Ljava/util/UUID;

    .line 233
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mTimeZoneOffset:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mTimeZoneOffset:Ljava/lang/Integer;

    .line 234
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mTimestamp:Ljava/util/Date;

    iget-object p1, p1, Lcom/texa/carelib/care/trips/TripEndInfo;->mTimestamp:Ljava/util/Date;

    .line 235
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

.method public getDriverID()Ljava/util/UUID;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mDriverID:Ljava/util/UUID;

    return-object v0
.end method

.method public getMaxVoltageEngineOn()Ljava/lang/Float;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mMaxVoltageEngineOn:Ljava/lang/Float;

    return-object v0
.end method

.method public getNumOfImpactDetected()Ljava/lang/Integer;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mNumOfImpactDetected:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOdometer()Ljava/lang/Float;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mOdometer:Ljava/lang/Float;

    return-object v0
.end method

.method public getOdometerEstimationMethod()Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mOdometerEstimationMethod:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    return-object v0
.end method

.method public getRawData()[B
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mRawData:[B

    return-object v0
.end method

.method public getTimeStamp()Ljava/util/Date;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getTimeZoneOffset()Ljava/lang/Integer;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mTimeZoneOffset:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTripEndCause()Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mTripEndCause:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    return-object v0
.end method

.method public getTripNumber()Ljava/lang/Long;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mTripNumber:Ljava/lang/Long;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mVersion:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    .line 240
    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mRawData:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mOdometer:Ljava/lang/Float;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mTripNumber:Ljava/lang/Long;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mOdometerEstimationMethod:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mMaxVoltageEngineOn:Ljava/lang/Float;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mIsMILLampDetected:Ljava/lang/Boolean;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mTripEndCause:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mNumOfImpactDetected:Ljava/lang/Integer;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mDriverID:Ljava/util/UUID;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mTimeZoneOffset:Ljava/lang/Integer;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mTimestamp:Ljava/util/Date;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/Utils;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMILLampDetected()Ljava/lang/Boolean;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripEndInfo;->mIsMILLampDetected:Ljava/lang/Boolean;

    return-object v0
.end method
