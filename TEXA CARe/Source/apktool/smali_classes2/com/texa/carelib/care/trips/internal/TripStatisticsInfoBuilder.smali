.class public Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;
.super Ljava/lang/Object;
.source "TripStatisticsInfoBuilder.java"


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
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lcom/texa/carelib/care/trips/TripStatisticsInfo;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;
    .locals 0

    .line 37
    new-instance p0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    invoke-direct {p0}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;-><init>()V

    return-object p0
.end method


# virtual methods
.method public build()Lcom/texa/carelib/care/trips/TripStatisticsInfo;
    .locals 24

    move-object/from16 v0, p0

    .line 146
    new-instance v22, Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-object/from16 v1, v22

    iget-object v2, v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mRawData:[B

    iget v3, v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mVersion:I

    iget-object v4, v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mTripNumber:Ljava/lang/Long;

    iget-object v5, v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mHardAccelerationCount:Ljava/lang/Integer;

    iget-object v6, v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mHardBrakeCount:Ljava/lang/Integer;

    iget-object v7, v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mTripIdleTime:Ljava/lang/Integer;

    iget-object v8, v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mAccelerationCounters:Ljava/util/List;

    iget-object v9, v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mAccelerationCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    iget-object v10, v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mSpeedCounters:Ljava/util/List;

    iget-object v11, v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mSpeedCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    iget-object v12, v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mRPMOverTempThresholdCounters:Ljava/util/List;

    iget-object v13, v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mRPMOverTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    iget-object v14, v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mRPMUnderTempThresholdCounters:Ljava/util/List;

    iget-object v15, v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mRPMUnderTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mVoltageCounters:Ljava/util/List;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mVoltageCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mVehicleAccelerationCounters:Ljava/util/List;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mVehicleAccelerationAngleCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mVehicleAccelerationIntensityCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mFinalRotationMatrix:Lcom/texa/carelib/care/attitude/RotationMatrix;

    move-object/from16 v21, v1

    move-object/from16 v1, v23

    invoke-direct/range {v1 .. v21}, Lcom/texa/carelib/care/trips/TripStatisticsInfo;-><init>([BILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/texa/carelib/care/trips/CountersDescriptionType;Ljava/util/List;Lcom/texa/carelib/care/trips/CountersDescriptionType;Ljava/util/List;Lcom/texa/carelib/care/trips/CountersDescriptionType;Ljava/util/List;Lcom/texa/carelib/care/trips/CountersDescriptionType;Ljava/util/List;Lcom/texa/carelib/care/trips/CountersDescriptionType;Ljava/util/List;Lcom/texa/carelib/care/trips/CountersDescriptionType;Lcom/texa/carelib/care/trips/CountersDescriptionType;Lcom/texa/carelib/care/attitude/RotationMatrix;)V

    return-object v22
.end method

.method public setAccelerationCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;)",
            "Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mAccelerationCounters:Ljava/util/List;

    return-object p0
.end method

.method public setAccelerationCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mAccelerationCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    return-object p0
.end method

.method public setHardAccelerationCount(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mHardAccelerationCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public setHardBrakeCount(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mHardBrakeCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public setRPMOverTempThresholdCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;)",
            "Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mRPMOverTempThresholdCounters:Ljava/util/List;

    return-object p0
.end method

.method public setRPMOverTempThresholdCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mRPMOverTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    return-object p0
.end method

.method public setRPMUnderTempThresholdCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;)",
            "Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mRPMUnderTempThresholdCounters:Ljava/util/List;

    return-object p0
.end method

.method public setRPMUnderTempThresholdCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mRPMUnderTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    return-object p0
.end method

.method public setRawData([B)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mRawData:[B

    return-object p0
.end method

.method public setRotationMatrixFinal(Lcom/texa/carelib/care/attitude/RotationMatrix;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mFinalRotationMatrix:Lcom/texa/carelib/care/attitude/RotationMatrix;

    return-object p0
.end method

.method public setSpeedCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;)",
            "Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mSpeedCounters:Ljava/util/List;

    return-object p0
.end method

.method public setSpeedCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mSpeedCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    return-object p0
.end method

.method public setTripIdleTime(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mTripIdleTime:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mTripNumber:Ljava/lang/Long;

    return-object p0
.end method

.method public setVehicleAccelerationAngleCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mVehicleAccelerationAngleCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    return-object p0
.end method

.method public setVehicleAccelerationCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/trips/VehicleAccelerationCounter;",
            ">;)",
            "Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mVehicleAccelerationCounters:Ljava/util/List;

    return-object p0
.end method

.method public setVehicleAccelerationIntensityCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mVehicleAccelerationIntensityCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    return-object p0
.end method

.method public setVersion(I)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;
    .locals 0

    .line 51
    iput p1, p0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mVersion:I

    return-object p0
.end method

.method public setVoltageCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;)",
            "Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mVoltageCounters:Ljava/util/List;

    return-object p0
.end method

.method public setVoltageCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->mVoltageCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    return-object p0
.end method
