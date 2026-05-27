.class public Lcom/texa/careapp/networking/EmergencyLocation;
.super Ljava/lang/Object;
.source "EmergencyLocation.java"


# instance fields
.field private accuracy:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private latitude:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private locationTimestamp:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field private longitude:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Landroid/location/Location;)Lcom/texa/careapp/networking/EmergencyLocation;
    .locals 4

    .line 31
    new-instance v0, Lcom/texa/careapp/networking/EmergencyLocation;

    invoke-direct {v0}, Lcom/texa/careapp/networking/EmergencyLocation;-><init>()V

    .line 32
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/networking/EmergencyLocation;->setLatitude(D)V

    .line 33
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/networking/EmergencyLocation;->setLongitude(D)V

    .line 34
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/networking/EmergencyLocation;->setAccuracy(F)V

    .line 35
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/texa/careapp/networking/EmergencyLocation;->setLocationTimestamp(Ljava/util/Date;)V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 18
    instance-of p1, p1, Lcom/texa/careapp/networking/EmergencyLocation;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 18
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/networking/EmergencyLocation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/networking/EmergencyLocation;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/networking/EmergencyLocation;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/networking/EmergencyLocation;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/texa/careapp/networking/EmergencyLocation;->getLatitude()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/texa/careapp/networking/EmergencyLocation;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/texa/careapp/networking/EmergencyLocation;->getLongitude()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/texa/careapp/networking/EmergencyLocation;->getAccuracy()F

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/networking/EmergencyLocation;->getAccuracy()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/texa/careapp/networking/EmergencyLocation;->getLocationTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/networking/EmergencyLocation;->getLocationTimestamp()Ljava/util/Date;

    move-result-object p1

    if-nez v1, :cond_6

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_6
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :goto_0
    return v2

    :cond_7
    return v0
.end method

.method public getAccuracy()F
    .locals 1

    .line 25
    iget v0, p0, Lcom/texa/careapp/networking/EmergencyLocation;->accuracy:F

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/texa/careapp/networking/EmergencyLocation;->latitude:D

    return-wide v0
.end method

.method public getLocationTimestamp()Ljava/util/Date;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/texa/careapp/networking/EmergencyLocation;->locationTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/texa/careapp/networking/EmergencyLocation;->longitude:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 18
    invoke-virtual {p0}, Lcom/texa/careapp/networking/EmergencyLocation;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    const/16 v0, 0x3b

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/texa/careapp/networking/EmergencyLocation;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x3b

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v3, v2

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/networking/EmergencyLocation;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/texa/careapp/networking/EmergencyLocation;->getLocationTimestamp()Ljava/util/Date;

    move-result-object v2

    mul-int/lit8 v1, v1, 0x3b

    if-nez v2, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public setAccuracy(F)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/texa/careapp/networking/EmergencyLocation;->accuracy:F

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/texa/careapp/networking/EmergencyLocation;->latitude:D

    return-void
.end method

.method public setLocationTimestamp(Ljava/util/Date;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/texa/careapp/networking/EmergencyLocation;->locationTimestamp:Ljava/util/Date;

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/texa/careapp/networking/EmergencyLocation;->longitude:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EmergencyLocation(latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/EmergencyLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/EmergencyLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/EmergencyLocation;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", locationTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/EmergencyLocation;->getLocationTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
