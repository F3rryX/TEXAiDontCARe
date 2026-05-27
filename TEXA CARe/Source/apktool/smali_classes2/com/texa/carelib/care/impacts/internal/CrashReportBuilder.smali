.class public Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;
.super Ljava/lang/Object;
.source "CrashReportBuilder.java"


# instance fields
.field private crashID:J

.field private crashReportStatus:Lcom/texa/carelib/care/impacts/CrashReportStatus;

.field private intensity:Ljava/lang/Long;

.field private isClientDeviceConnected:Ljava/lang/Boolean;

.field private rawData:[B

.field private timestamp:Ljava/util/Date;

.field private tripNumber:Ljava/lang/Long;

.field private version:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/texa/carelib/care/impacts/CrashReport;->CRASH_ID_UNDEF:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->crashID:J

    const/4 v0, -0x1

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->version:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public build()Lcom/texa/carelib/care/impacts/CrashReport;
    .locals 11

    .line 67
    new-instance v10, Lcom/texa/carelib/care/impacts/CrashReport;

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->rawData:[B

    iget-wide v2, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->crashID:J

    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->version:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->timestamp:Ljava/util/Date;

    iget-object v6, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->intensity:Ljava/lang/Long;

    iget-object v7, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->tripNumber:Ljava/lang/Long;

    iget-object v8, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->isClientDeviceConnected:Ljava/lang/Boolean;

    iget-object v9, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->crashReportStatus:Lcom/texa/carelib/care/impacts/CrashReportStatus;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/texa/carelib/care/impacts/CrashReport;-><init>([BJILjava/util/Date;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Lcom/texa/carelib/care/impacts/CrashReportStatus;)V

    return-object v10
.end method

.method public setCrashID(J)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;
    .locals 0

    .line 32
    iput-wide p1, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->crashID:J

    return-object p0
.end method

.method public setCrashReportStatus(Lcom/texa/carelib/care/impacts/CrashReportStatus;)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->crashReportStatus:Lcom/texa/carelib/care/impacts/CrashReportStatus;

    return-object p0
.end method

.method public setIntensity(Ljava/lang/Long;)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->intensity:Ljava/lang/Long;

    return-object p0
.end method

.method public setIsClientDeviceConnected(Ljava/lang/Boolean;)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->isClientDeviceConnected:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setRawData([B)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->rawData:[B

    return-object p0
.end method

.method public setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->timestamp:Ljava/util/Date;

    return-object p0
.end method

.method public setTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->tripNumber:Ljava/lang/Long;

    return-object p0
.end method

.method public setVersion(Ljava/lang/Integer;)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->version:Ljava/lang/Integer;

    return-object p0
.end method
