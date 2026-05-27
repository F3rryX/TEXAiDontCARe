.class public Lcom/texa/carelib/care/impacts/internal/CrashReportParserVDefault;
.super Lcom/texa/carelib/profile/internal/CareStructParser;
.source "CrashReportParserVDefault.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/texa/carelib/profile/internal/CareStructParser<",
        "Lcom/texa/carelib/care/impacts/CrashReport;",
        ">;"
    }
.end annotation


# static fields
.field private static final INDEX_BLOCK_ID:I = 0x0

.field private static final INDEX_BLOCK_SIZE:I = 0x2

.field private static final INDEX_BLOCK_VERSION:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/CareStructParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse([B)Lcom/texa/carelib/care/impacts/CrashReport;
    .locals 2

    .line 28
    new-instance v0, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;

    invoke-direct {v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;-><init>()V

    .line 29
    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->setRawData([B)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;

    move-result-object v1

    .line 30
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserVDefault;->parseBlockVersion([B)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->setVersion(Ljava/lang/Integer;)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;

    .line 32
    invoke-virtual {v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->build()Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse([B)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserVDefault;->parse([B)Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object p1

    return-object p1
.end method

.method protected parseBlockVersion([B)I
    .locals 1

    const/4 v0, 0x4

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserVDefault;->getUnsignedByte([BI)Ljava/lang/Short;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 42
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method
