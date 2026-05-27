.class public Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;
.super Ljava/lang/Object;
.source "LocationEntity.java"


# static fields
.field protected static final INVALID_DATA:I = -0x1


# instance fields
.field accuracy:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field altitude:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "elevation"
    .end annotation
.end field

.field latitude:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field longitude:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 4

    .line 33
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Float;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Float;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->latitude:Ljava/lang/Double;

    .line 38
    iput-object p2, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->longitude:Ljava/lang/Double;

    .line 39
    invoke-virtual {p4}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->accuracy:Ljava/lang/Double;

    if-eqz p3, :cond_0

    .line 40
    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->altitude:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 16
    instance-of p1, p1, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 16
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getLatitude()Ljava/lang/Double;

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
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getLongitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getLongitude()Ljava/lang/Double;

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
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getAccuracy()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getAccuracy()Ljava/lang/Double;

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
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getAltitude()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getAltitude()Ljava/lang/Integer;

    move-result-object p1

    if-nez v1, :cond_9

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    :goto_3
    return v2

    :cond_a
    return v0
.end method

.method public getAccuracy()Ljava/lang/Double;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->accuracy:Ljava/lang/Double;

    return-object v0
.end method

.method public getAltitude()Ljava/lang/Integer;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->altitude:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 16
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getLatitude()Ljava/lang/Double;

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

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getLongitude()Ljava/lang/Double;

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

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getAccuracy()Ljava/lang/Double;

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

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getAltitude()Ljava/lang/Integer;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public setAccuracy(Ljava/lang/Double;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->accuracy:Ljava/lang/Double;

    return-void
.end method

.method public setAltitude(Ljava/lang/Integer;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->altitude:Ljava/lang/Integer;

    return-void
.end method

.method public setLatitude(Ljava/lang/Double;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->latitude:Ljava/lang/Double;

    return-void
.end method

.method public setLongitude(Ljava/lang/Double;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->longitude:Ljava/lang/Double;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationEntity(latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getLongitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getAccuracy()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/LocationEntity;->getAltitude()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
