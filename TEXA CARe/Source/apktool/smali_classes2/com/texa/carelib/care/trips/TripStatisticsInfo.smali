.class public Lcom/texa/carelib/care/trips/TripStatisticsInfo;
.super Ljava/lang/Object;
.source "TripStatisticsInfo.java"

# interfaces
.implements Lcom/texa/carelib/core/utils/CareStruct;


# instance fields
.field private mAccelerationCounters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAccelerationCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

.field private mFinalRotationMatrix:Lcom/texa/carelib/care/attitude/RotationMatrix;

.field private mHardAccelerationCount:Ljava/lang/Integer;

.field private mHardBrakeCount:Ljava/lang/Integer;

.field private mRPMCounters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRPMCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

.field private mRPMOverTempThresholdCounters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRPMOverTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

.field private mRPMUnderTempThresholdCounters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRPMUnderTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

.field private mRawData:[B

.field private mSpeedCounters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeedCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

.field private mTripIdleTime:Ljava/lang/Integer;

.field private mTripNumber:Ljava/lang/Long;

.field private mVehicleAccelerationAngleCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

.field private mVehicleAccelerationCounters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/trips/VehicleAccelerationCounter;",
            ">;"
        }
    .end annotation
.end field

.field private mVehicleAccelerationIntensityCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

.field private mVersion:I

.field private mVoltageCounters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVoltageCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/care/trips/TripStatisticsInfo;)V
    .locals 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 80
    iget-object v0, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRawData:[B

    if-eqz v0, :cond_0

    .line 81
    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRawData:[B

    .line 82
    iget-object v1, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRawData:[B

    array-length v2, v0

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    :cond_0
    iget-object v0, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mTripNumber:Ljava/lang/Long;

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mTripNumber:Ljava/lang/Long;

    .line 86
    iget-object v0, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mHardAccelerationCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mHardAccelerationCount:Ljava/lang/Integer;

    .line 87
    iget-object v0, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mHardBrakeCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mHardBrakeCount:Ljava/lang/Integer;

    .line 88
    iget-object v0, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mTripIdleTime:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mTripIdleTime:Ljava/lang/Integer;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mAccelerationCounters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mSpeedCounters:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mAccelerationCounters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMUnderTempThresholdCounters:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mAccelerationCounters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMOverTempThresholdCounters:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mAccelerationCounters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mAccelerationCounters:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVoltageCounters:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVoltageCounters:Ljava/util/List;

    :cond_1
    return-void
.end method

.method public constructor <init>([BILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/texa/carelib/care/trips/CountersDescriptionType;Ljava/util/List;Lcom/texa/carelib/care/trips/CountersDescriptionType;Ljava/util/List;Lcom/texa/carelib/care/trips/CountersDescriptionType;Ljava/util/List;Lcom/texa/carelib/care/trips/CountersDescriptionType;Ljava/util/List;Lcom/texa/carelib/care/trips/CountersDescriptionType;Ljava/util/List;Lcom/texa/carelib/care/trips/CountersDescriptionType;Lcom/texa/carelib/care/trips/CountersDescriptionType;Lcom/texa/carelib/care/attitude/RotationMatrix;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;",
            "Lcom/texa/carelib/care/trips/CountersDescriptionType;",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;",
            "Lcom/texa/carelib/care/trips/CountersDescriptionType;",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;",
            "Lcom/texa/carelib/care/trips/CountersDescriptionType;",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;",
            "Lcom/texa/carelib/care/trips/CountersDescriptionType;",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;",
            "Lcom/texa/carelib/care/trips/CountersDescriptionType;",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/trips/VehicleAccelerationCounter;",
            ">;",
            "Lcom/texa/carelib/care/trips/CountersDescriptionType;",
            "Lcom/texa/carelib/care/trips/CountersDescriptionType;",
            "Lcom/texa/carelib/care/attitude/RotationMatrix;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p11

    move-object/from16 v2, p12

    move-object/from16 v3, p13

    move-object/from16 v4, p14

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v5, p1

    .line 49
    iput-object v5, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRawData:[B

    move v5, p2

    .line 50
    iput v5, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVersion:I

    move-object v5, p3

    .line 51
    iput-object v5, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mTripNumber:Ljava/lang/Long;

    move-object v5, p4

    .line 52
    iput-object v5, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mHardAccelerationCount:Ljava/lang/Integer;

    move-object v5, p5

    .line 53
    iput-object v5, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mHardBrakeCount:Ljava/lang/Integer;

    move-object v5, p6

    .line 54
    iput-object v5, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mTripIdleTime:Ljava/lang/Integer;

    move-object/from16 v5, p16

    .line 55
    iput-object v5, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVoltageCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    move-object v5, p8

    .line 56
    iput-object v5, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mAccelerationCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    move-object v5, p9

    .line 57
    iput-object v5, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mSpeedCounters:Ljava/util/List;

    move-object/from16 v5, p10

    .line 58
    iput-object v5, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mSpeedCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 59
    iput-object v1, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMOverTempThresholdCounters:Ljava/util/List;

    .line 60
    iput-object v2, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMOverTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 61
    iput-object v3, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMUnderTempThresholdCounters:Ljava/util/List;

    .line 62
    iput-object v4, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMUnderTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    move-object/from16 v5, p15

    .line 63
    iput-object v5, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVoltageCounters:Ljava/util/List;

    move-object v5, p7

    .line 64
    iput-object v5, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mAccelerationCounters:Ljava/util/List;

    move-object/from16 v5, p17

    .line 65
    iput-object v5, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVehicleAccelerationCounters:Ljava/util/List;

    move-object/from16 v5, p18

    .line 66
    iput-object v5, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVehicleAccelerationAngleCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    move-object/from16 v5, p19

    .line 67
    iput-object v5, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVehicleAccelerationIntensityCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    move-object/from16 v5, p20

    .line 68
    iput-object v5, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mFinalRotationMatrix:Lcom/texa/carelib/care/attitude/RotationMatrix;

    .line 70
    invoke-direct {p0, v2, v4, v1, v3}, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->isRPMCounterSupported(Lcom/texa/carelib/care/trips/CountersDescriptionType;Lcom/texa/carelib/care/trips/CountersDescriptionType;Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMOverTempThresholdCounters:Ljava/util/List;

    iget-object v2, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMUnderTempThresholdCounters:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->InitRPMCounters(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMCounters:Ljava/util/List;

    .line 72
    iget-object v1, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMUnderTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    iput-object v1, v0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    :cond_0
    return-void
.end method

.method private InitRPMCounters(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 384
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 386
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 389
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/carelib/core/CounterInfo;

    .line 390
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/carelib/core/CounterInfo;

    .line 392
    invoke-virtual {v3}, Lcom/texa/carelib/core/CounterInfo;->getRange()Lcom/texa/carelib/core/Range;

    move-result-object v5

    invoke-virtual {v4}, Lcom/texa/carelib/core/CounterInfo;->getRange()Lcom/texa/carelib/core/Range;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/texa/carelib/core/Range;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 393
    new-instance v5, Lcom/texa/carelib/core/CounterInfo;

    invoke-virtual {v3}, Lcom/texa/carelib/core/CounterInfo;->getRange()Lcom/texa/carelib/core/Range;

    move-result-object v6

    invoke-virtual {v3}, Lcom/texa/carelib/core/CounterInfo;->getValue()I

    move-result v3

    invoke-virtual {v4}, Lcom/texa/carelib/core/CounterInfo;->getValue()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v5, v6, v3}, Lcom/texa/carelib/core/CounterInfo;-><init>(Lcom/texa/carelib/core/Range;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 399
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private isRPMCounterSupported(Lcom/texa/carelib/care/trips/CountersDescriptionType;Lcom/texa/carelib/care/trips/CountersDescriptionType;Ljava/util/List;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/care/trips/CountersDescriptionType;",
            "Lcom/texa/carelib/care/trips/CountersDescriptionType;",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 372
    invoke-virtual {p1, p2}, Lcom/texa/carelib/care/trips/CountersDescriptionType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 374
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
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

    .line 329
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 330
    :cond_1
    check-cast p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    .line 331
    iget v2, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRawData:[B

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRawData:[B

    .line 332
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mTripNumber:Ljava/lang/Long;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mTripNumber:Ljava/lang/Long;

    .line 333
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mHardAccelerationCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mHardAccelerationCount:Ljava/lang/Integer;

    .line 334
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mHardBrakeCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mHardBrakeCount:Ljava/lang/Integer;

    .line 335
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mTripIdleTime:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mTripIdleTime:Ljava/lang/Integer;

    .line 336
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVoltageCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVoltageCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 337
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mAccelerationCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mAccelerationCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 338
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mSpeedCounters:Ljava/util/List;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mSpeedCounters:Ljava/util/List;

    .line 339
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mSpeedCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mSpeedCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 340
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMOverTempThresholdCounters:Ljava/util/List;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMOverTempThresholdCounters:Ljava/util/List;

    .line 341
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMOverTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMOverTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 342
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMUnderTempThresholdCounters:Ljava/util/List;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMUnderTempThresholdCounters:Ljava/util/List;

    .line 343
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVoltageCounters:Ljava/util/List;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVoltageCounters:Ljava/util/List;

    .line 344
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mAccelerationCounters:Ljava/util/List;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mAccelerationCounters:Ljava/util/List;

    .line 345
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMUnderTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMUnderTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 346
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVehicleAccelerationCounters:Ljava/util/List;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVehicleAccelerationCounters:Ljava/util/List;

    .line 347
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVehicleAccelerationAngleCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVehicleAccelerationAngleCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 348
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVehicleAccelerationIntensityCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    iget-object v3, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVehicleAccelerationIntensityCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 349
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mFinalRotationMatrix:Lcom/texa/carelib/care/attitude/RotationMatrix;

    iget-object p1, p1, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mFinalRotationMatrix:Lcom/texa/carelib/care/attitude/RotationMatrix;

    .line 350
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

.method public getAccelerationCounters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mAccelerationCounters:Ljava/util/List;

    return-object v0
.end method

.method public getAccelerationCountersInfo()Lcom/texa/carelib/care/trips/CountersDescriptionType;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mAccelerationCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    return-object v0
.end method

.method public getHardAccelerationCount()Ljava/lang/Integer;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mHardAccelerationCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHardBrakeCount()Ljava/lang/Integer;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mHardBrakeCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRPMCounters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMCounters:Ljava/util/List;

    return-object v0
.end method

.method public getRPMCountersInfo()Lcom/texa/carelib/care/trips/CountersDescriptionType;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    return-object v0
.end method

.method public getRPMOverTempThresholdCounters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMOverTempThresholdCounters:Ljava/util/List;

    return-object v0
.end method

.method public getRPMOverTempThresholdCountersInfo()Lcom/texa/carelib/care/trips/CountersDescriptionType;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMOverTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    return-object v0
.end method

.method public getRPMUnderTempThresholdCounters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMUnderTempThresholdCounters:Ljava/util/List;

    return-object v0
.end method

.method public getRPMUnderTempThresholdCountersInfo()Lcom/texa/carelib/care/trips/CountersDescriptionType;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMUnderTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    return-object v0
.end method

.method public getRawData()[B
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRawData:[B

    return-object v0
.end method

.method public getRotationMatrix()Lcom/texa/carelib/care/attitude/RotationMatrix;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mFinalRotationMatrix:Lcom/texa/carelib/care/attitude/RotationMatrix;

    return-object v0
.end method

.method public getSpeedCounters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mSpeedCounters:Ljava/util/List;

    return-object v0
.end method

.method public getSpeedCountersInfo()Lcom/texa/carelib/care/trips/CountersDescriptionType;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mSpeedCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    return-object v0
.end method

.method public getTripIdleTime()Ljava/lang/Integer;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mTripIdleTime:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTripNumber()Ljava/lang/Long;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mTripNumber:Ljava/lang/Long;

    return-object v0
.end method

.method public getVehicleAccelerationAngleCountersInfo()Lcom/texa/carelib/care/trips/CountersDescriptionType;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVehicleAccelerationAngleCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    return-object v0
.end method

.method public getVehicleAccelerationCounters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/trips/VehicleAccelerationCounter;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVehicleAccelerationCounters:Ljava/util/List;

    return-object v0
.end method

.method public getVehicleAccelerationIntensityCountersInfo()Lcom/texa/carelib/care/trips/CountersDescriptionType;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVehicleAccelerationIntensityCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVersion:I

    return v0
.end method

.method public getVoltageCounters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVoltageCounters:Ljava/util/List;

    return-object v0
.end method

.method public getVoltageCountersInfo()Lcom/texa/carelib/care/trips/CountersDescriptionType;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVoltageCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Object;

    .line 355
    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRawData:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mTripNumber:Ljava/lang/Long;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mHardAccelerationCount:Ljava/lang/Integer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mHardBrakeCount:Ljava/lang/Integer;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mTripIdleTime:Ljava/lang/Integer;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVoltageCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mAccelerationCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mSpeedCounters:Ljava/util/List;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mSpeedCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMOverTempThresholdCounters:Ljava/util/List;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMOverTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMUnderTempThresholdCounters:Ljava/util/List;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVoltageCounters:Ljava/util/List;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mAccelerationCounters:Ljava/util/List;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mRPMUnderTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVehicleAccelerationCounters:Ljava/util/List;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVehicleAccelerationAngleCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mVehicleAccelerationIntensityCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->mFinalRotationMatrix:Lcom/texa/carelib/care/attitude/RotationMatrix;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/Utils;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
