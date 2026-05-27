.class public Lcom/texa/carelib/care/trips/CountersDescriptionType;
.super Ljava/lang/Object;
.source "CountersDescriptionType.java"


# instance fields
.field private mBinSize:F

.field private mMaxValueX:F

.field private mMinValueX:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/texa/carelib/care/trips/CountersDescriptionType;->mMinValueX:F

    .line 15
    iput v0, p0, Lcom/texa/carelib/care/trips/CountersDescriptionType;->mMaxValueX:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    iput v0, p0, Lcom/texa/carelib/care/trips/CountersDescriptionType;->mBinSize:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>()V

    .line 22
    iput p1, p0, Lcom/texa/carelib/care/trips/CountersDescriptionType;->mMinValueX:F

    .line 23
    iput p2, p0, Lcom/texa/carelib/care/trips/CountersDescriptionType;->mMaxValueX:F

    .line 24
    iput p3, p0, Lcom/texa/carelib/care/trips/CountersDescriptionType;->mBinSize:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 53
    :cond_1
    check-cast p1, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 55
    iget v2, p1, Lcom/texa/carelib/care/trips/CountersDescriptionType;->mMinValueX:F

    iget v3, p0, Lcom/texa/carelib/care/trips/CountersDescriptionType;->mMinValueX:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 56
    :cond_2
    iget v2, p1, Lcom/texa/carelib/care/trips/CountersDescriptionType;->mMaxValueX:F

    iget v3, p0, Lcom/texa/carelib/care/trips/CountersDescriptionType;->mMaxValueX:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 57
    :cond_3
    iget p1, p1, Lcom/texa/carelib/care/trips/CountersDescriptionType;->mBinSize:F

    iget v2, p0, Lcom/texa/carelib/care/trips/CountersDescriptionType;->mBinSize:F

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getBinSize()F
    .locals 1

    .line 46
    iget v0, p0, Lcom/texa/carelib/care/trips/CountersDescriptionType;->mBinSize:F

    return v0
.end method

.method public getMaxValueX()F
    .locals 1

    .line 39
    iget v0, p0, Lcom/texa/carelib/care/trips/CountersDescriptionType;->mMaxValueX:F

    return v0
.end method

.method public getMinValueX()F
    .locals 1

    .line 32
    iget v0, p0, Lcom/texa/carelib/care/trips/CountersDescriptionType;->mMinValueX:F

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 63
    iget v0, p0, Lcom/texa/carelib/care/trips/CountersDescriptionType;->mMinValueX:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 64
    iget v3, p0, Lcom/texa/carelib/care/trips/CountersDescriptionType;->mMaxValueX:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_1

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 65
    iget v3, p0, Lcom/texa/carelib/care/trips/CountersDescriptionType;->mBinSize:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_2

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CountersDescriptionType{mMinValueX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/texa/carelib/care/trips/CountersDescriptionType;->mMinValueX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxValueX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/texa/carelib/care/trips/CountersDescriptionType;->mMaxValueX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBinSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/texa/carelib/care/trips/CountersDescriptionType;->mBinSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
