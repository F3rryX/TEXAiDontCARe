.class public Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;
.super Ljava/lang/Object;
.source "EventInfoEntity.java"


# instance fields
.field geoData:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/serviceserializer/GeoDataEntity;",
            ">;"
        }
    .end annotation
.end field

.field label:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field location:Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field odometer:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
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


# direct methods
.method public constructor <init>(Lcom/texa/careapp/app/ecodriving/model/TripEventModel;)V
    .locals 5

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->geoData:Ljava/util/List;

    .line 33
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getOdometer()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->odometer:I

    .line 34
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTimestamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->timestamp:Ljava/util/Date;

    .line 35
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->timestampMillis:J

    .line 36
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLat()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLng()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getAccuracy()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLat()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLng()Ljava/lang/Double;

    move-result-object v2

    .line 39
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getAltitude()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getAccuracy()Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Float;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->location:Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    .line 40
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLabel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 16
    instance-of p1, p1, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 16
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getOdometer()I

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getOdometer()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getTimestamp()Ljava/util/Date;

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
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getTimestampMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getTimestampMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getLocation()Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getLocation()Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_1

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_1
    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getGeoData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getGeoData()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_2
    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getLabel()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_b

    if-eqz p1, :cond_c

    goto :goto_3

    :cond_b
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    :goto_3
    return v2

    :cond_c
    return v0
.end method

.method public getGeoData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/serviceserializer/GeoDataEntity;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->geoData:Ljava/util/List;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->location:Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    return-object v0
.end method

.method public getOdometer()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->odometer:I

    return v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->timestampMillis:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    .line 16
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getOdometer()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getTimestamp()Ljava/util/Date;

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

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getTimestampMillis()J

    move-result-wide v4

    mul-int/lit8 v0, v0, 0x3b

    const/16 v2, 0x20

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getLocation()Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_1

    const/16 v2, 0x2b

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getGeoData()Ljava/util/List;

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

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getLabel()Ljava/lang/String;

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

.method public setGeoData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/serviceserializer/GeoDataEntity;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->geoData:Ljava/util/List;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->label:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->location:Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    return-void
.end method

.method public setOdometer(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->odometer:I

    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->timestamp:Ljava/util/Date;

    return-void
.end method

.method public setTimestampMillis(J)V
    .locals 0

    .line 16
    iput-wide p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->timestampMillis:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventInfoEntity(odometer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getOdometer()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestampMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getTimestampMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getLocation()Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", geoData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getGeoData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventInfoEntity;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
