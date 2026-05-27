.class Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportParserVDefault;
.super Lcom/texa/carelib/profile/internal/CareStructParser;
.source "RotationMatrixReportParserVDefault.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/texa/carelib/profile/internal/CareStructParser<",
        "Lcom/texa/carelib/care/attitude/RotationMatrixReport;",
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

    .line 14
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/CareStructParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse([B)Lcom/texa/carelib/care/attitude/RotationMatrixReport;
    .locals 2

    .line 29
    new-instance v0, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;

    invoke-direct {v0}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;-><init>()V

    .line 30
    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;->setRawData([B)Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;

    move-result-object v1

    .line 31
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportParserVDefault;->parseBlockVersion([B)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;->setVersion(I)Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;

    .line 33
    invoke-virtual {v0}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;->build()Lcom/texa/carelib/care/attitude/RotationMatrixReport;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse([B)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportParserVDefault;->parse([B)Lcom/texa/carelib/care/attitude/RotationMatrixReport;

    move-result-object p1

    return-object p1
.end method

.method protected parseBlockVersion([B)I
    .locals 1

    const/4 v0, 0x4

    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportParserVDefault;->getUnsignedByte([BI)Ljava/lang/Short;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method
