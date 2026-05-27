.class Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserVDefault;
.super Lcom/texa/carelib/profile/internal/CareStructParser;
.source "VerboseCrashReportParserVDefault.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/texa/carelib/profile/internal/CareStructParser<",
        "Lcom/texa/carelib/care/impacts/VerboseCrashReport;",
        ">;"
    }
.end annotation


# static fields
.field private static final INDEX_BLOCK_ID:I = 0x0

.field private static final INDEX_BLOCK_SIZE:I = 0x2

.field private static final INDEX_BLOCK_VERSION:I = 0x4


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/CareStructParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse([B)Lcom/texa/carelib/care/impacts/VerboseCrashReport;
    .locals 2

    .line 27
    new-instance v0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;

    invoke-direct {v0}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;-><init>()V

    .line 28
    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->setRawData([B)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;

    move-result-object v1

    .line 29
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserVDefault;->parseBlockVersion([B)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->setVersion(I)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;

    .line 31
    invoke-virtual {v0}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->build()Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse([B)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserVDefault;->parse([B)Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    move-result-object p1

    return-object p1
.end method

.method protected parseBlockVersion([B)I
    .locals 1

    const/4 v0, 0x4

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserVDefault;->getUnsignedByte([BI)Ljava/lang/Short;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 47
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method
