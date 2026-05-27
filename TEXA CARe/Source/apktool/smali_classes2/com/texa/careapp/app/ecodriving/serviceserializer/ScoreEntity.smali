.class public Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;
.super Ljava/lang/Object;
.source "ScoreEntity.java"


# instance fields
.field dataVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field hidden:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field modifiedAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field odometer:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field previousValue:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field scoreType:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "score_type_id"
    .end annotation
.end field

.field timestamp:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field timestampMillis:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field value:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->id:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->getTypeId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->scoreType:I

    .line 45
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->getScore()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->value:I

    .line 46
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->getPreviousScore()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->previousValue:I

    .line 47
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->getTimestamp()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->timestamp:Ljava/util/Date;

    .line 48
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->timestampMillis:J

    .line 49
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->getOdometer()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->odometer:I

    .line 50
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->hidden:Z

    .line 51
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->getLastMod()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->modifiedAt:Ljava/util/Date;

    .line 52
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->getDataVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->dataVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/util/Date;JIZLjava/util/Date;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->id:Ljava/lang/String;

    iput p2, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->scoreType:I

    iput p3, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->value:I

    iput p4, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->previousValue:I

    iput-object p5, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->timestamp:Ljava/util/Date;

    iput-wide p6, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->timestampMillis:J

    iput p8, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->odometer:I

    iput-boolean p9, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->hidden:Z

    iput-object p10, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->modifiedAt:Ljava/util/Date;

    iput-object p11, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->dataVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 16
    instance-of p1, p1, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 16
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getScoreType()I

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getScoreType()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getValue()I

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getPreviousValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getPreviousValue()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getTimestamp()Ljava/util/Date;

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
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getTimestampMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getTimestampMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getOdometer()I

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getOdometer()I

    move-result v3

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->isHidden()Z

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->isHidden()Z

    move-result v3

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v3

    if-nez v1, :cond_d

    if-eqz v3, :cond_e

    goto :goto_2

    :cond_d
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_2
    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getDataVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getDataVersion()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_f

    if-eqz p1, :cond_10

    goto :goto_3

    :cond_f
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    :goto_3
    return v2

    :cond_10
    return v0
.end method

.method public getDataVersion()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->dataVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedAt()Ljava/util/Date;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->modifiedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getOdometer()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->odometer:I

    return v0
.end method

.method public getPreviousValue()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->previousValue:I

    return v0
.end method

.method public getScoreType()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->scoreType:I

    return v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->timestampMillis:J

    return-wide v0
.end method

.method public getValue()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 16
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getId()Ljava/lang/String;

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

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getScoreType()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getValue()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getPreviousValue()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getTimestamp()Ljava/util/Date;

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

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getTimestampMillis()J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x3b

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v4, v3

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getOdometer()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x4f

    goto :goto_2

    :cond_2
    const/16 v3, 0x61

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_3

    const/16 v3, 0x2b

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getDataVersion()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->hidden:Z

    return v0
.end method

.method public setDataVersion(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->dataVersion:Ljava/lang/String;

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->hidden:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->id:Ljava/lang/String;

    return-void
.end method

.method public setModifiedAt(Ljava/util/Date;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->modifiedAt:Ljava/util/Date;

    return-void
.end method

.method public setOdometer(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->odometer:I

    return-void
.end method

.method public setPreviousValue(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->previousValue:I

    return-void
.end method

.method public setScoreType(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->scoreType:I

    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->timestamp:Ljava/util/Date;

    return-void
.end method

.method public setTimestampMillis(J)V
    .locals 0

    .line 16
    iput-wide p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->timestampMillis:J

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->value:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScoreEntity(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scoreType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getScoreType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", previousValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getPreviousValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestampMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getTimestampMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", odometer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getOdometer()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->isHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", modifiedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dataVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getDataVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
