.class public Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;
.super Ljava/lang/Object;
.source "RotationMatrixReportBuilder.java"


# instance fields
.field private mRotationMatrixFinal:Lcom/texa/carelib/care/attitude/RotationMatrix;

.field private rawData:[B

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/texa/carelib/care/attitude/RotationMatrixReport;
    .locals 4

    .line 54
    new-instance v0, Lcom/texa/carelib/care/attitude/RotationMatrixReport;

    iget-object v1, p0, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;->rawData:[B

    iget v2, p0, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;->version:I

    iget-object v3, p0, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;->mRotationMatrixFinal:Lcom/texa/carelib/care/attitude/RotationMatrix;

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/attitude/RotationMatrixReport;-><init>([BILcom/texa/carelib/care/attitude/RotationMatrix;)V

    return-object v0
.end method

.method public setRawData([B)Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;->rawData:[B

    return-object p0
.end method

.method public setRotationMatrixFinal(Lcom/texa/carelib/care/attitude/RotationMatrix;)Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;->mRotationMatrixFinal:Lcom/texa/carelib/care/attitude/RotationMatrix;

    return-object p0
.end method

.method public setVersion(I)Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;
    .locals 0

    .line 33
    iput p1, p0, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportBuilder;->version:I

    return-object p0
.end method
