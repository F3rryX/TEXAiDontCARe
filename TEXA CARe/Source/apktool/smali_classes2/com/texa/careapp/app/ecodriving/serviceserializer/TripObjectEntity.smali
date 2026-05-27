.class public Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;
.super Ljava/lang/Object;
.source "TripObjectEntity.java"


# instance fields
.field dataVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field events:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;",
            ">;"
        }
    .end annotation
.end field

.field hidden:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field hwid:Ljava/lang/String;
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

.field parentId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field scores:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;",
            ">;"
        }
    .end annotation
.end field

.field tripEnd:Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field tripStart:Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field vehicleId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)V
    .locals 20

    move-object/from16 v0, p0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->scores:Ljava/util/List;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->events:Ljava/util/List;

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->id:Ljava/lang/String;

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getIdParent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->parentId:Ljava/lang/String;

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getDriverId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->userId:Ljava/lang/String;

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getVehicleId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->vehicleId:Ljava/lang/String;

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getHwId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->hwid:Ljava/lang/String;

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->isHidden()Z

    move-result v1

    iput-boolean v1, v0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->hidden:Z

    .line 53
    new-instance v1, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartOdo()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartTrip()J

    move-result-wide v4

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartLocationLat()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartLocationLng()Ljava/lang/Double;

    move-result-object v7

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartLocationAltitude()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartLocationAccuracy()Ljava/lang/Float;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartLabel()Ljava/lang/String;

    move-result-object v10

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;-><init>(Ljava/lang/Float;JLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Float;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->tripStart:Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    .line 56
    new-instance v1, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndOdo()Ljava/lang/Float;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndTrip()J

    move-result-wide v13

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndLocationLat()Ljava/lang/Double;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndLocationLng()Ljava/lang/Double;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndLocationAltitude()Ljava/lang/Double;

    move-result-object v17

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndLocationAccuracy()Ljava/lang/Float;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndLabel()Ljava/lang/String;

    move-result-object v19

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;-><init>(Ljava/lang/Float;JLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Float;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->tripEnd:Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUnsyncScoreUpdateSnapshot()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;

    .line 60
    iget-object v3, v0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->scores:Ljava/util/List;

    new-instance v4, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;

    invoke-direct {v4, v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;-><init>(Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUnsyncEventSnapshot()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    .line 62
    iget-object v3, v0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->events:Ljava/util/List;

    new-instance v4, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;

    invoke-direct {v4, v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;-><init>(Lcom/texa/careapp/app/ecodriving/model/TripEventModel;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastMod()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->modifiedAt:Ljava/util/Date;

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getDataVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->dataVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 18
    instance-of p1, p1, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 18
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getParentId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getUserId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getVehicleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getVehicleId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getHwid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getHwid()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_b

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_4
    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->isHidden()Z

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->isHidden()Z

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripStart()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripStart()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v3

    if-nez v1, :cond_e

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_e
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :goto_5
    return v2

    :cond_f
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripEnd()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripEnd()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v3

    if-nez v1, :cond_10

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_10
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    :goto_6
    return v2

    :cond_11
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getScores()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getScores()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_12

    if-eqz v3, :cond_13

    goto :goto_7

    :cond_12
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :goto_7
    return v2

    :cond_13
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getEvents()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getEvents()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_14

    if-eqz v3, :cond_15

    goto :goto_8

    :cond_14
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    :goto_8
    return v2

    :cond_15
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v3

    if-nez v1, :cond_16

    if-eqz v3, :cond_17

    goto :goto_9

    :cond_16
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    :goto_9
    return v2

    :cond_17
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getDataVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getDataVersion()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_18

    if-eqz p1, :cond_19

    goto :goto_a

    :cond_18
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    :goto_a
    return v2

    :cond_19
    return v0
.end method

.method public getDataVersion()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->dataVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->events:Ljava/util/List;

    return-object v0
.end method

.method public getHwid()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->hwid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedAt()Ljava/util/Date;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->modifiedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public getScores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->scores:Ljava/util/List;

    return-object v0
.end method

.method public getTripEnd()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->tripEnd:Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    return-object v0
.end method

.method public getTripStart()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->tripStart:Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->vehicleId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 18
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getParentId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getUserId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getVehicleId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getHwid()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_4

    const/16 v3, 0x2b

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x4f

    goto :goto_5

    :cond_5
    const/16 v3, 0x61

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripStart()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_6

    const/16 v3, 0x2b

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getTripEnd()Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_7

    const/16 v3, 0x2b

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getScores()Ljava/util/List;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_8

    const/16 v3, 0x2b

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getEvents()Ljava/util/List;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_9

    const/16 v3, 0x2b

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_a

    const/16 v3, 0x2b

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getDataVersion()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_b

    goto :goto_b

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v0, v1

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->hidden:Z

    return v0
.end method

.method public setDataVersion(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->dataVersion:Ljava/lang/String;

    return-void
.end method

.method public setEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->events:Ljava/util/List;

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->hidden:Z

    return-void
.end method

.method public setHwid(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->hwid:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->id:Ljava/lang/String;

    return-void
.end method

.method public setModifiedAt(Ljava/util/Date;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->modifiedAt:Ljava/util/Date;

    return-void
.end method

.method public setParentId(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->parentId:Ljava/lang/String;

    return-void
.end method

.method public setScores(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->scores:Ljava/util/List;

    return-void
.end method

.method public setTripEnd(Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->tripEnd:Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    return-void
.end method

.method public setTripStart(Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->tripStart:Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->userId:Ljava/lang/String;

    return-void
.end method

.method public setVehicleId(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->vehicleId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TripObjectEntity{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", parentId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->parentId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vehicleId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->vehicleId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hwid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->hwid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hidden="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->hidden:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", tripStart="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->tripStart:Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", tripEnd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->tripEnd:Lcom/texa/careapp/app/ecodriving/serviceserializer/TripDataEntity;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", scores="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->scores:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", events="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->events:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", modifiedAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->modifiedAt:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", dataVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->dataVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
