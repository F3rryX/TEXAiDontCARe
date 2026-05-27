.class Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportParserV1;
.super Lcom/texa/carelib/profile/internal/CareStructParser;
.source "RotationMatrixReportParserV1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/texa/carelib/profile/internal/CareStructParser<",
        "Lcom/texa/carelib/care/attitude/RotationMatrixReport;",
        ">;"
    }
.end annotation


# static fields
.field private static final DATA_LENGTH:I = 0x96

.field private static final INDEX_BLOCK_ID:I = 0x0

.field private static final INDEX_BLOCK_SIZE:I = 0x2

.field private static final INDEX_BLOCK_VERSION:I = 0x4

.field private static final INDEX_RESERVED:I = 0x5

.field private static final INDEX_ROTATION_MATRIX_FINAL:I = 0x66

.field private static final INDEX_ROTATION_MATRIX_FINAL_STATUS:I = 0x8a

.field private static final INDEX_ROTATION_MATRIX_FINAL_TIME_STAMP:I = 0x92

.field private static final INDEX_ROTATION_MATRIX_FINAL_TRIP_NUM:I = 0x8e

.field private static final INDEX_ROTATION_MATRIX_PLANE:I = 0x36

.field private static final INDEX_ROTATION_MATRIX_PLANE_STATUS:I = 0x5a

.field private static final INDEX_ROTATION_MATRIX_PLANE_TIME_STAMP:I = 0x62

.field private static final INDEX_ROTATION_MATRIX_PLANE_TRIP_NUM:I = 0x5e

.field private static final INDEX_ROTATION_MATRIX_Z:I = 0x6

.field private static final INDEX_ROTATION_MATRIX_Z_STATUS:I = 0x2a

.field private static final INDEX_ROTATION_MATRIX_Z_TIME_STAMP:I = 0x32

.field private static final INDEX_ROTATION_MATRIX_Z_TRIP_NUM:I = 0x2e


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/CareStructParser;-><init>()V

    return-void
.end method

.method private parseRotationMatrix([BI)Lcom/texa/carelib/care/attitude/RotationMatrix;
    .locals 4

    .line 118
    array-length v0, p1

    add-int/lit8 v1, p2, 0x4

    add-int/lit8 v1, v1, 0x24

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0x9

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    mul-int/lit8 v3, v2, 0x4

    add-int/2addr v3, p2

    .line 124
    invoke-virtual {p0, p1, v3}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportParserV1;->getFloat([BI)Ljava/lang/Float;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p2, p2, 0x24

    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportParserV1;->getSignedInt([BI)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p2, p2, 0x4

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportParserV1;->getTimestamp([BI)Ljava/util/Date;

    move-result-object p1

    .line 135
    new-instance p2, Lcom/texa/carelib/care/attitude/RotationMatrix;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p2, v1, p1, v0}, Lcom/texa/carelib/care/attitude/RotationMatrix;-><init>([FLjava/util/Date;I)V

    return-object p2

    .line 132
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Parse error"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseRotationMatrixFinal([B)Lcom/texa/carelib/care/attitude/RotationMatrix;
    .locals 1

    const/16 v0, 0x66

    .line 114
    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportParserV1;->parseRotationMatrix([BI)Lcom/texa/carelib/care/attitude/RotationMatrix;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public parse([B)Lcom/texa/carelib/care/attitude/RotationMatrixReport;
    .locals 3

    .line 51
    new-instance v0, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;

    invoke-direct {v0}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;-><init>()V

    .line 52
    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;->setRawData([B)Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;

    move-result-object v1

    .line 53
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportParserV1;->parseBlockVersion([B)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;->setVersion(I)Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;

    move-result-object v1

    .line 54
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportParserV1;->parseRotationMatrixFinal([B)Lcom/texa/carelib/care/attitude/RotationMatrix;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;->setRotationMatrixFinal(Lcom/texa/carelib/care/attitude/RotationMatrix;)Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;

    .line 56
    invoke-virtual {v0}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;->build()Lcom/texa/carelib/care/attitude/RotationMatrixReport;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse([B)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportParserV1;->parse([B)Lcom/texa/carelib/care/attitude/RotationMatrixReport;

    move-result-object p1

    return-object p1
.end method

.method protected parseBlockVersion([B)I
    .locals 1

    const/4 v0, 0x4

    .line 67
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportParserV1;->getUnsignedByte([BI)Ljava/lang/Short;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 72
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method
