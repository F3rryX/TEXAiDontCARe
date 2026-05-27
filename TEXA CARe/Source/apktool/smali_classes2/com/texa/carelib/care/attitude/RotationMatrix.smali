.class public Lcom/texa/carelib/care/attitude/RotationMatrix;
.super Ljava/lang/Object;
.source "RotationMatrix.java"


# instance fields
.field private mData:[F

.field private mStatus:I

.field private mTimeStamp:Ljava/util/Date;


# direct methods
.method public constructor <init>([FLjava/util/Date;I)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/texa/carelib/care/attitude/RotationMatrix;->mData:[F

    .line 29
    iput-object p2, p0, Lcom/texa/carelib/care/attitude/RotationMatrix;->mTimeStamp:Ljava/util/Date;

    .line 30
    iput p3, p0, Lcom/texa/carelib/care/attitude/RotationMatrix;->mStatus:I

    return-void
.end method


# virtual methods
.method public getData()[F
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/texa/carelib/care/attitude/RotationMatrix;->mData:[F

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/texa/carelib/care/attitude/RotationMatrix;->mStatus:I

    return v0
.end method

.method public getTimeStamp()Ljava/util/Date;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/texa/carelib/care/attitude/RotationMatrix;->mTimeStamp:Ljava/util/Date;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .line 62
    iget v0, p0, Lcom/texa/carelib/care/attitude/RotationMatrix;->mStatus:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/carelib/care/attitude/RotationMatrix;->mData:[F

    if-eqz v0, :cond_0

    array-length v0, v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
