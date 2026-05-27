.class public Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;
.super Ljava/lang/Object;
.source "HintEntity.java"


# instance fields
.field private deleted:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private hintId:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private hintTypeId:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private modifiedAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private translations:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 16
    instance-of p1, p1, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 16
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getHintId()I

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getHintId()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_4

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_0
    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getHintTypeId()I

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getHintTypeId()I

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->isDeleted()Z

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->isDeleted()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v3

    if-nez v1, :cond_8

    if-eqz v3, :cond_9

    goto :goto_1

    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_1
    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getTranslations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getTranslations()Ljava/util/List;

    move-result-object p1

    if-nez v1, :cond_a

    if-eqz p1, :cond_b

    goto :goto_2

    :cond_a
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    :goto_2
    return v2

    :cond_b
    return v0
.end method

.method public getHintId()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->hintId:I

    return v0
.end method

.method public getHintModel()Lcom/texa/careapp/app/ecodriving/model/HintModel;
    .locals 3

    .line 33
    new-instance v0, Lcom/texa/careapp/app/ecodriving/model/HintModel;

    invoke-direct {v0}, Lcom/texa/careapp/app/ecodriving/model/HintModel;-><init>()V

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getHintId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/ecodriving/model/HintModel;->setIdHint(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getHintTypeId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/ecodriving/model/HintModel;->setType(I)V

    .line 36
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/ecodriving/model/HintModel;->setLastUpdate(Ljava/util/Date;)V

    .line 37
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/ecodriving/model/HintModel;->setImageUrl(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/ecodriving/model/HintModel;->setCountView(I)V

    return-object v0
.end method

.method public getHintTypeId()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->hintTypeId:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedAt()Ljava/util/Date;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->modifiedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getTranslations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->translations:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 16
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getHintId()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    const/16 v3, 0x2b

    if-nez v2, :cond_0

    const/16 v2, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getHintTypeId()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x4f

    goto :goto_1

    :cond_1
    const/16 v2, 0x61

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_2

    const/16 v2, 0x2b

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getTranslations()Ljava/util/List;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    return v0
.end method

.method public isDeleted()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->deleted:Z

    return v0
.end method

.method public setDeleted(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->deleted:Z

    return-void
.end method

.method public setHintId(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->hintId:I

    return-void
.end method

.method public setHintTypeId(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->hintTypeId:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setModifiedAt(Ljava/util/Date;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->modifiedAt:Ljava/util/Date;

    return-void
.end method

.method public setTranslations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->translations:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HintEntity(hintId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getHintId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hintTypeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getHintTypeId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->isDeleted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", modifiedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", translations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getTranslations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
