.class public Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;
.super Ljava/lang/Object;
.source "HintTranslationEntity.java"


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private language:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
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
    instance-of p1, p1, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 16
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;->getLanguage()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_7

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    :goto_2
    return v2

    :cond_8
    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHintTranslationModel(Lcom/texa/careapp/app/ecodriving/model/HintModel;)Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;
    .locals 2

    .line 27
    new-instance v0, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;

    invoke-direct {v0}, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;-><init>()V

    .line 28
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;->setIdHintTranslation(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;->setLanguage(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;->setTitle(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;->setDescription(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;->setIdHint(Lcom/texa/careapp/app/ecodriving/model/HintModel;)V

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 16
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_1

    const/16 v3, 0x2b

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;->getDescription()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;->description:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;->language:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HintTranslationEntity(language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
