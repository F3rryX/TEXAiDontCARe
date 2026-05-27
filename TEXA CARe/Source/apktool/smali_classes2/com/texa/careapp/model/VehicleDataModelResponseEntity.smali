.class public Lcom/texa/careapp/model/VehicleDataModelResponseEntity;
.super Ljava/lang/Object;
.source "VehicleDataModelResponseEntity.java"


# instance fields
.field private dongleAssociated:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private dongleAssociationType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private dongleConfigured:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private plateFound:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private userAssociated:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private vehicleExists:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private vehicleId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private vinFound:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 12
    instance-of p1, p1, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 12
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isVinFound()Z

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isVinFound()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isPlateFound()Z

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isPlateFound()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isVehicleExists()Z

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isVehicleExists()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->getVehicleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->getVehicleId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_6

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_0
    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isUserAssociated()Z

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isUserAssociated()Z

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isDongleAssociated()Z

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isDongleAssociated()Z

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->getDongleAssociationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->getDongleAssociationType()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_a

    if-eqz v3, :cond_b

    goto :goto_1

    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_1
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isDongleConfigured()Z

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isDongleConfigured()Z

    move-result p1

    if-eq v1, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public getDongleAssociationType()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->dongleAssociationType:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->vehicleId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 12
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isVinFound()Z

    move-result v0

    const/16 v1, 0x4f

    const/16 v2, 0x61

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_0
    const/16 v3, 0x3b

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isPlateFound()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x4f

    goto :goto_1

    :cond_1
    const/16 v4, 0x61

    :goto_1
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isVehicleExists()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x4f

    goto :goto_2

    :cond_2
    const/16 v4, 0x61

    :goto_2
    add-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->getVehicleId()Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v0, v0, 0x3b

    const/16 v5, 0x2b

    if-nez v4, :cond_3

    const/16 v4, 0x2b

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_3
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isUserAssociated()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x4f

    goto :goto_4

    :cond_4
    const/16 v4, 0x61

    :goto_4
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isDongleAssociated()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x4f

    goto :goto_5

    :cond_5
    const/16 v4, 0x61

    :goto_5
    add-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->getDongleAssociationType()Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v0, v0, 0x3b

    if-nez v4, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_6
    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isDongleConfigured()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_7

    :cond_7
    const/16 v1, 0x61

    :goto_7
    add-int/2addr v0, v1

    return v0
.end method

.method public isDongleAssociated()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->dongleAssociated:Z

    return v0
.end method

.method public isDongleConfigured()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->dongleConfigured:Z

    return v0
.end method

.method public isPlateFound()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->plateFound:Z

    return v0
.end method

.method public isUserAssociated()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->userAssociated:Z

    return v0
.end method

.method public isVehicleExists()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->vehicleExists:Z

    return v0
.end method

.method public isVinFound()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->vinFound:Z

    return v0
.end method

.method public setDongleAssociated(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->dongleAssociated:Z

    return-void
.end method

.method public setDongleAssociationType(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->dongleAssociationType:Ljava/lang/String;

    return-void
.end method

.method public setDongleConfigured(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->dongleConfigured:Z

    return-void
.end method

.method public setPlateFound(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->plateFound:Z

    return-void
.end method

.method public setUserAssociated(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->userAssociated:Z

    return-void
.end method

.method public setVehicleExists(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->vehicleExists:Z

    return-void
.end method

.method public setVehicleId(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->vehicleId:Ljava/lang/String;

    return-void
.end method

.method public setVinFound(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->vinFound:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VehicleDataModelResponseEntity(vinFound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isVinFound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", plateFound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isPlateFound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", vehicleExists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isVehicleExists()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", vehicleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->getVehicleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userAssociated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isUserAssociated()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dongleAssociated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isDongleAssociated()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dongleAssociationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->getDongleAssociationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dongleConfigured="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isDongleConfigured()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
