.class public Lcom/texa/carelib/care/impacts/VerboseCrashReport;
.super Ljava/lang/Object;
.source "VerboseCrashReport.java"

# interfaces
.implements Lcom/texa/carelib/core/utils/CareStruct;


# static fields
.field public static final CRASH_ID_UNDEF:Ljava/lang/Long;


# instance fields
.field private final mAccelerationVectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/AccelerationVector;",
            ">;"
        }
    .end annotation
.end field

.field private final mCrashID:J

.field private final mNumberOfSamples:I

.field private final mOffsetComponents:Lcom/texa/carelib/care/impacts/AccelerationVector;

.field private final mRawData:[B

.field private final mSampleFrequency:Ljava/lang/Integer;

.field private final mSpeedVectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimestamp:Ljava/util/Date;

.field private final mTripNumber:Ljava/lang/Long;

.field private final mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->CRASH_ID_UNDEF:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>([BIJLcom/texa/carelib/care/impacts/AccelerationVector;Ljava/lang/Long;Ljava/util/Date;ILjava/util/List;Ljava/util/List;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIJ",
            "Lcom/texa/carelib/care/impacts/AccelerationVector;",
            "Ljava/lang/Long;",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/AccelerationVector;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p5, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mOffsetComponents:Lcom/texa/carelib/care/impacts/AccelerationVector;

    .line 34
    iput-wide p3, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mCrashID:J

    .line 35
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mRawData:[B

    .line 36
    iput p2, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mVersion:I

    .line 37
    iput-object p6, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mTripNumber:Ljava/lang/Long;

    .line 38
    iput-object p7, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mTimestamp:Ljava/util/Date;

    .line 39
    iput p8, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mNumberOfSamples:I

    .line 40
    iput-object p9, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mAccelerationVectors:Ljava/util/List;

    .line 41
    iput-object p10, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mSpeedVectors:Ljava/util/List;

    .line 42
    iput-object p11, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mSampleFrequency:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 124
    :cond_1
    check-cast p1, Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    .line 125
    iget-wide v2, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mCrashID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mCrashID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mVersion:I

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mOffsetComponents:Lcom/texa/carelib/care/impacts/AccelerationVector;

    iget-object v3, p1, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mOffsetComponents:Lcom/texa/carelib/care/impacts/AccelerationVector;

    .line 127
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mRawData:[B

    iget-object v3, p1, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mRawData:[B

    .line 128
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mTripNumber:Ljava/lang/Long;

    iget-object v3, p1, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mTripNumber:Ljava/lang/Long;

    .line 129
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mTimestamp:Ljava/util/Date;

    iget-object v3, p1, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mTimestamp:Ljava/util/Date;

    .line 130
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mNumberOfSamples:I

    .line 131
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mNumberOfSamples:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mAccelerationVectors:Ljava/util/List;

    iget-object v3, p1, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mAccelerationVectors:Ljava/util/List;

    .line 132
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mSpeedVectors:Ljava/util/List;

    iget-object v3, p1, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mSpeedVectors:Ljava/util/List;

    .line 133
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mSampleFrequency:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mSampleFrequency:Ljava/lang/Integer;

    .line 134
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

.method public getAccelerationVectors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/AccelerationVector;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mAccelerationVectors:Ljava/util/List;

    return-object v0
.end method

.method public getCrashID()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mCrashID:J

    return-wide v0
.end method

.method public getNumberOfSamples()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mNumberOfSamples:I

    return v0
.end method

.method public getOffsetComponents()Lcom/texa/carelib/care/impacts/AccelerationVector;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mOffsetComponents:Lcom/texa/carelib/care/impacts/AccelerationVector;

    return-object v0
.end method

.method public getRawData()[B
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mRawData:[B

    return-object v0
.end method

.method public getSampleFrequency()Ljava/lang/Integer;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mSampleFrequency:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSpeedVectors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mSpeedVectors:Ljava/util/List;

    return-object v0
.end method

.method public getTimeStamp()Ljava/util/Date;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getTripNumber()Ljava/lang/Long;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mTripNumber:Ljava/lang/Long;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mVersion:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mOffsetComponents:Lcom/texa/carelib/care/impacts/AccelerationVector;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mCrashID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mRawData:[B

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mTripNumber:Ljava/lang/Long;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mTimestamp:Ljava/util/Date;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mNumberOfSamples:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mAccelerationVectors:Ljava/util/List;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mSpeedVectors:Ljava/util/List;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->mSampleFrequency:Ljava/lang/Integer;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/Utils;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
