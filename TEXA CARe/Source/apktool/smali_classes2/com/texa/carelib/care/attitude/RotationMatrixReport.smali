.class public Lcom/texa/carelib/care/attitude/RotationMatrixReport;
.super Ljava/lang/Object;
.source "RotationMatrixReport.java"

# interfaces
.implements Lcom/texa/carelib/core/utils/CareStruct;


# instance fields
.field private mRawData:[B

.field private mRotationMatrixFinal:Lcom/texa/carelib/care/attitude/RotationMatrix;

.field private mVersion:I


# direct methods
.method public constructor <init>([BILcom/texa/carelib/care/attitude/RotationMatrix;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/texa/carelib/care/attitude/RotationMatrixReport;->mRawData:[B

    .line 21
    iput p2, p0, Lcom/texa/carelib/care/attitude/RotationMatrixReport;->mVersion:I

    .line 22
    iput-object p3, p0, Lcom/texa/carelib/care/attitude/RotationMatrixReport;->mRotationMatrixFinal:Lcom/texa/carelib/care/attitude/RotationMatrix;

    return-void
.end method


# virtual methods
.method public getRawData()[B
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/texa/carelib/care/attitude/RotationMatrixReport;->mRawData:[B

    return-object v0
.end method

.method public getRotationMatrixFinal()Lcom/texa/carelib/care/attitude/RotationMatrix;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/carelib/care/attitude/RotationMatrixReport;->mRotationMatrixFinal:Lcom/texa/carelib/care/attitude/RotationMatrix;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/texa/carelib/care/attitude/RotationMatrixReport;->mVersion:I

    return v0
.end method
