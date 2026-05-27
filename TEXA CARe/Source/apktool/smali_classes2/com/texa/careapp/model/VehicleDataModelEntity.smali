.class public Lcom/texa/careapp/model/VehicleDataModelEntity;
.super Ljava/lang/Object;
.source "VehicleDataModelEntity.java"


# instance fields
.field dongleSerialNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hwid"
    .end annotation
.end field

.field plate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "plate"
    .end annotation
.end field

.field vinCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vin"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleDataModelEntity;->dongleSerialNumber:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/texa/careapp/model/VehicleDataModelEntity;->plate:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/texa/careapp/model/VehicleDataModelEntity;->vinCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 15
    instance-of p1, p1, Lcom/texa/careapp/model/VehicleDataModelEntity;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 15
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/model/VehicleDataModelEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/model/VehicleDataModelEntity;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/model/VehicleDataModelEntity;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelEntity;->getDongleSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelEntity;->getDongleSerialNumber()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelEntity;->getPlate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelEntity;->getPlate()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelEntity;->getVinCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelEntity;->getVinCode()Ljava/lang/String;

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

.method public getDongleSerialNumber()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleDataModelEntity;->dongleSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPlate()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleDataModelEntity;->plate:Ljava/lang/String;

    return-object v0
.end method

.method public getVinCode()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleDataModelEntity;->vinCode:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 15
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelEntity;->getDongleSerialNumber()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelEntity;->getPlate()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelEntity;->getVinCode()Ljava/lang/String;

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

.method public setDongleSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleDataModelEntity;->dongleSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public setPlate(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleDataModelEntity;->plate:Ljava/lang/String;

    return-void
.end method

.method public setVinCode(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleDataModelEntity;->vinCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VehicleDataModelEntity(dongleSerialNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelEntity;->getDongleSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", plate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelEntity;->getPlate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vinCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelEntity;->getVinCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
