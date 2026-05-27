.class public Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;
.super Ljava/lang/Object;
.source "CrashReportBundleParser.java"


# static fields
.field private static SUPPORTED_BLOCK_ID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccelerationEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/CrashReport;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccelerationEventsLPM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/CrashReport;",
            ">;"
        }
    .end annotation
.end field

.field private final mImpacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/Impact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    .line 301
    sget-object v1, Lcom/texa/carelib/core/internal/CareStructID;->CRASH_REPORT_STANDARD:Lcom/texa/carelib/core/internal/CareStructID;

    .line 302
    invoke-virtual {v1}, Lcom/texa/carelib/core/internal/CareStructID;->getID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/core/internal/CareStructID;->CRASH_REPORT_STANDARD_NOT_VALIDATED:Lcom/texa/carelib/core/internal/CareStructID;

    .line 303
    invoke-virtual {v1}, Lcom/texa/carelib/core/internal/CareStructID;->getID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/core/internal/CareStructID;->CRASH_REPORT_STANDARD_LOW_POWER:Lcom/texa/carelib/core/internal/CareStructID;

    .line 304
    invoke-virtual {v1}, Lcom/texa/carelib/core/internal/CareStructID;->getID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/core/internal/CareStructID;->CRASH_REPORT_VERBOSE:Lcom/texa/carelib/core/internal/CareStructID;

    .line 305
    invoke-virtual {v1}, Lcom/texa/carelib/core/internal/CareStructID;->getID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 301
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->SUPPORTED_BLOCK_ID:Ljava/util/List;

    const-string v0, "CrashReportBundleParser"

    .line 307
    sput-object v0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->mImpacts:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->mAccelerationEvents:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->mAccelerationEventsLPM:Ljava/util/List;

    return-void
.end method

.method private addVerboseCrashReport(Lcom/texa/carelib/care/impacts/VerboseCrashReport;)V
    .locals 6

    .line 165
    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->getCrashID()J

    move-result-wide v0

    .line 167
    sget-object v2, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->CRASH_ID_UNDEF:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    cmp-long v5, v2, v0

    if-eqz v5, :cond_1

    .line 169
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->mImpacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 172
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/care/impacts/Impact;

    .line 175
    invoke-virtual {v1}, Lcom/texa/carelib/care/impacts/Impact;->getCrashReport()Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/texa/carelib/care/impacts/Impact;->getCrashReport()Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->isRelated(Lcom/texa/carelib/care/impacts/CrashReport;Lcom/texa/carelib/care/impacts/VerboseCrashReport;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/impacts/Impact;->setVerboseCrashReport(Lcom/texa/carelib/care/impacts/VerboseCrashReport;)Lcom/texa/carelib/care/impacts/Impact;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 184
    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 185
    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->getTimeStamp()Ljava/util/Date;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->mImpacts:Ljava/util/List;

    new-instance v2, Lcom/texa/carelib/care/impacts/Impact;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lcom/texa/carelib/care/impacts/Impact;-><init>(Ljava/util/Date;Lcom/texa/carelib/care/impacts/CrashReport;Lcom/texa/carelib/care/impacts/VerboseCrashReport;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->mImpacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    if-ltz v0, :cond_3

    .line 191
    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->mImpacts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/impacts/Impact;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/impacts/Impact;->setVerboseCrashReport(Lcom/texa/carelib/care/impacts/VerboseCrashReport;)Lcom/texa/carelib/care/impacts/Impact;

    :cond_3
    :goto_1
    return-void
.end method

.method private findNextBlock(Ljava/nio/ByteBuffer;)I
    .locals 4

    .line 248
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 249
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1

    .line 251
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 253
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 254
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 256
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->getBlockID(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 257
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->getBlockSize(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 259
    invoke-virtual {p0, v2}, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->isValidBlockID(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez v3, :cond_1

    .line 260
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private getBlockID(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 274
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 279
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    .line 280
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0
.end method

.method private getBlockSize(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 286
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return v1

    .line 291
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    .line 292
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method protected addCrashReportLPM(Lcom/texa/carelib/care/impacts/CrashReport;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->mAccelerationEventsLPM:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addCrashReportNotValidated(Lcom/texa/carelib/care/impacts/CrashReport;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->mAccelerationEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addCrashReportValidated(Lcom/texa/carelib/care/impacts/CrashReport;)V
    .locals 8

    .line 121
    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/CrashReport;->getCrashID()J

    move-result-wide v0

    .line 122
    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/CrashReport;->getTimeStamp()Ljava/util/Date;

    move-result-object v2

    .line 124
    sget-object v3, Lcom/texa/carelib/care/impacts/CrashReport;->CRASH_ID_UNDEF:Ljava/lang/Long;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 126
    iget-object v3, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->mImpacts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 129
    :cond_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 130
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/carelib/care/impacts/Impact;

    .line 131
    invoke-virtual {v4}, Lcom/texa/carelib/care/impacts/Impact;->getCrashReport()Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/texa/carelib/care/impacts/Impact;->getVerboseCrashReport()Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/texa/carelib/care/impacts/Impact;->getVerboseCrashReport()Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    move-result-object v5

    invoke-virtual {v5}, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->getCrashID()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-nez v7, :cond_0

    .line 132
    invoke-virtual {v4, v2}, Lcom/texa/carelib/care/impacts/Impact;->setDate(Ljava/util/Date;)Lcom/texa/carelib/care/impacts/Impact;

    .line 133
    invoke-virtual {v4, p1}, Lcom/texa/carelib/care/impacts/Impact;->setCrashReport(Lcom/texa/carelib/care/impacts/CrashReport;)Lcom/texa/carelib/care/impacts/Impact;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->mImpacts:Ljava/util/List;

    new-instance v1, Lcom/texa/carelib/care/impacts/Impact;

    invoke-direct {v1, v2, p1}, Lcom/texa/carelib/care/impacts/Impact;-><init>(Ljava/util/Date;Lcom/texa/carelib/care/impacts/CrashReport;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public getAccelerationEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/CrashReport;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->mAccelerationEvents:Ljava/util/List;

    return-object v0
.end method

.method public getAccelerationEventsLPM()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/CrashReport;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->mAccelerationEventsLPM:Ljava/util/List;

    return-object v0
.end method

.method public getImpacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/Impact;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->mImpacts:Ljava/util/List;

    return-object v0
.end method

.method protected isRelated(Lcom/texa/carelib/care/impacts/CrashReport;Lcom/texa/carelib/care/impacts/VerboseCrashReport;)Z
    .locals 3

    .line 113
    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/CrashReport;->getCrashID()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->getCrashID()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isValidBlockID(I)Z
    .locals 1

    .line 270
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->SUPPORTED_BLOCK_ID:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 12

    .line 37
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->mImpacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->mAccelerationEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 39
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->mAccelerationEventsLPM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_1
    const/4 v1, 0x1

    .line 48
    :try_start_0
    sget-object v2, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->TAG:Ljava/lang/String;

    const-string v3, "Position: %d/%d. Remaining: %d"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v2, v3, v5}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->getBlockID(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 51
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->getBlockSize(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 53
    invoke-virtual {p0, v3}, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->isValidBlockID(I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v5, :cond_4

    .line 54
    :cond_2
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->findNextBlock(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 55
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    if-ge v3, v5, :cond_3

    goto/16 :goto_1

    .line 61
    :cond_3
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 62
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->getBlockID(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 63
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->getBlockSize(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 66
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-ge v6, v5, :cond_5

    goto/16 :goto_1

    .line 72
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v6, v6, [B

    .line 73
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 76
    invoke-static {v3}, Lcom/texa/carelib/core/internal/CareStructID;->fromBlockID(I)Lcom/texa/carelib/core/internal/CareStructID;

    move-result-object v8

    const-string v9, "Found blockID: 0x%s(%s) Size:%d"

    new-array v10, v4, [Ljava/lang/Object;

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v0

    invoke-static {v3}, Lcom/texa/carelib/core/internal/CareStructID;->getBlockName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v7

    invoke-static {v2, v9, v10}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    sget-object v2, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser$1;->$SwitchMap$com$texa$carelib$core$internal$CareStructID:[I

    invoke-virtual {v8}, Lcom/texa/carelib/core/internal/CareStructID;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_9

    if-eq v2, v7, :cond_8

    if-eq v2, v4, :cond_7

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6

    goto :goto_0

    .line 98
    :cond_6
    invoke-virtual {p0, v6}, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->parseBlockVerboseCrashReport([B)Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 100
    invoke-direct {p0, v2}, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->addVerboseCrashReport(Lcom/texa/carelib/care/impacts/VerboseCrashReport;)V

    goto :goto_0

    .line 92
    :cond_7
    invoke-virtual {p0, v6}, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->parseBlockCrashReport([B)Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 94
    invoke-virtual {p0, v2}, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->addCrashReportLPM(Lcom/texa/carelib/care/impacts/CrashReport;)V

    goto :goto_0

    .line 86
    :cond_8
    invoke-virtual {p0, v6}, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->parseBlockCrashReport([B)Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 88
    invoke-virtual {p0, v2}, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->addCrashReportNotValidated(Lcom/texa/carelib/care/impacts/CrashReport;)V

    goto :goto_0

    .line 80
    :cond_9
    invoke-virtual {p0, v6}, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->parseBlockCrashReport([B)Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 82
    invoke-virtual {p0, v2}, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->addCrashReportValidated(Lcom/texa/carelib/care/impacts/CrashReport;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 105
    sget-object v3, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v2, "Trip data parse error."

    invoke-static {v3, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :cond_a
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    return-void
.end method

.method parseBlockCrashReport([B)Lcom/texa/carelib/care/impacts/CrashReport;
    .locals 3

    .line 225
    :try_start_0
    new-instance v0, Lcom/texa/carelib/care/impacts/internal/CrashReportFactory;

    invoke-direct {v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportFactory;-><init>()V

    .line 226
    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportFactory;->create([B)Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 229
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "CrashReport parser exception."

    invoke-static {v0, p1, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method parseBlockVerboseCrashReport([B)Lcom/texa/carelib/care/impacts/VerboseCrashReport;
    .locals 3

    .line 237
    :try_start_0
    new-instance v0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportFactory;

    invoke-direct {v0}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportFactory;-><init>()V

    .line 238
    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportFactory;->create([B)Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 241
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "VerboseCrashReport parser exception."

    invoke-static {v0, p1, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
