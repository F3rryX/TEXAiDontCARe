.class public Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;
.super Ljava/lang/Object;
.source "EventsEntity.java"


# instance fields
.field dataVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field eventInfo:Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field eventType:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "event_type_id"
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

.field intervalTime:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field modifiedAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/app/ecodriving/model/TripEventModel;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->id:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTypeId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->eventType:I

    .line 37
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getIntervalTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->intervalTime:J

    .line 38
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->hidden:Z

    .line 39
    new-instance v0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;

    invoke-direct {v0, p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;-><init>(Lcom/texa/careapp/app/ecodriving/model/TripEventModel;)V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->eventInfo:Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;

    .line 40
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLastMod()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->modifiedAt:Ljava/util/Date;

    .line 41
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getDataVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->dataVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 15
    instance-of p1, p1, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 15
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getEventType()I

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getEventType()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getIntervalTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getIntervalTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->isHidden()Z

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->isHidden()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getEventInfo()Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getEventInfo()Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;

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
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v3

    if-nez v1, :cond_a

    if-eqz v3, :cond_b

    goto :goto_2

    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_2
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getDataVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getDataVersion()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_c

    if-eqz p1, :cond_d

    goto :goto_3

    :cond_c
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    :goto_3
    return v2

    :cond_d
    return v0
.end method

.method public getDataVersion()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->dataVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getEventInfo()Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->eventInfo:Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->eventType:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIntervalTime()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->intervalTime:J

    return-wide v0
.end method

.method public getModifiedAt()Ljava/util/Date;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->modifiedAt:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 15
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getEventType()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getIntervalTime()J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x3b

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v4, v3

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x4f

    goto :goto_1

    :cond_1
    const/16 v3, 0x61

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getEventInfo()Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_2

    const/16 v3, 0x2b

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getModifiedAt()Ljava/util/Date;

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

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getDataVersion()Ljava/lang/String;

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

    .line 26
    iget-boolean v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->hidden:Z

    return v0
.end method

.method public setDataVersion(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->dataVersion:Ljava/lang/String;

    return-void
.end method

.method public setEventInfo(Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->eventInfo:Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;

    return-void
.end method

.method public setEventType(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->eventType:I

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->hidden:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->id:Ljava/lang/String;

    return-void
.end method

.method public setIntervalTime(J)V
    .locals 0

    .line 15
    iput-wide p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->intervalTime:J

    return-void
.end method

.method public setModifiedAt(Ljava/util/Date;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->modifiedAt:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventsEntity(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getEventType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", intervalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getIntervalTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->isHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", eventInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getEventInfo()Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", modifiedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dataVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;->getDataVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
