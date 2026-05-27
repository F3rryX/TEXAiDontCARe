.class public Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;
.super Ljava/lang/Object;
.source "VerboseCrashReportBuilder.java"


# instance fields
.field private accelerationVectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/AccelerationVector;",
            ">;"
        }
    .end annotation
.end field

.field private crashID:Ljava/lang/Long;

.field private numberOfSamples:I

.field private offsetComponents:Lcom/texa/carelib/care/impacts/AccelerationVector;

.field private rawData:[B

.field private sampleFrequency:Ljava/lang/Integer;

.field private speedVectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:Ljava/util/Date;

.field private tripNumber:Ljava/lang/Long;

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->CRASH_ID_UNDEF:Ljava/lang/Long;

    iput-object v0, p0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->crashID:Ljava/lang/Long;

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->version:I

    return-void
.end method


# virtual methods
.method public build()Lcom/texa/carelib/care/impacts/VerboseCrashReport;
    .locals 13

    .line 81
    new-instance v12, Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->rawData:[B

    iget v2, p0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->version:I

    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->crashID:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->offsetComponents:Lcom/texa/carelib/care/impacts/AccelerationVector;

    iget-object v6, p0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->tripNumber:Ljava/lang/Long;

    iget-object v7, p0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->timestamp:Ljava/util/Date;

    iget v8, p0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->numberOfSamples:I

    iget-object v9, p0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->accelerationVectors:Ljava/util/List;

    iget-object v10, p0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->speedVectors:Ljava/util/List;

    iget-object v11, p0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->sampleFrequency:Ljava/lang/Integer;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/texa/carelib/care/impacts/VerboseCrashReport;-><init>([BIJLcom/texa/carelib/care/impacts/AccelerationVector;Ljava/lang/Long;Ljava/util/Date;ILjava/util/List;Ljava/util/List;Ljava/lang/Integer;)V

    return-object v12
.end method

.method public setAccelerationVectors(Ljava/util/List;)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/AccelerationVector;",
            ">;)",
            "Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->accelerationVectors:Ljava/util/List;

    return-object p0
.end method

.method public setCrashID(J)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;
    .locals 0

    .line 41
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->crashID:Ljava/lang/Long;

    return-object p0
.end method

.method public setNumberOfSamples(I)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;
    .locals 0

    .line 56
    iput p1, p0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->numberOfSamples:I

    return-object p0
.end method

.method public setOffsetComponents(Lcom/texa/carelib/care/impacts/AccelerationVector;)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->offsetComponents:Lcom/texa/carelib/care/impacts/AccelerationVector;

    return-object p0
.end method

.method public setRawData([B)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->rawData:[B

    return-object p0
.end method

.method public setSampleFrequency(Ljava/lang/Integer;)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->sampleFrequency:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSpeedVectors(Ljava/util/List;)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->speedVectors:Ljava/util/List;

    return-object p0
.end method

.method public setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->timestamp:Ljava/util/Date;

    return-object p0
.end method

.method public setTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->tripNumber:Ljava/lang/Long;

    return-object p0
.end method

.method public setVersion(I)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;
    .locals 0

    .line 36
    iput p1, p0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->version:I

    return-object p0
.end method
