.class public Lcom/texa/careapp/model/VehicleModelUpdateEntity;
.super Ljava/lang/Object;
.source "VehicleModelUpdateEntity.java"


# instance fields
.field autoDrive:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auto_drive"
    .end annotation
.end field

.field color:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "color"
    .end annotation
.end field

.field country:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country"
    .end annotation
.end field

.field description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field odometer:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "odometer"
    .end annotation
.end field

.field registrationDate:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "registration_date"
    .end annotation
.end field

.field rescueContact:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rescue_contact"
    .end annotation
.end field

.field schemaVersion:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "schema_version"
    .end annotation
.end field

.field tyresTypeId:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tyres_type_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;I)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->description:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->country:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->registrationDate:Ljava/util/Date;

    .line 75
    iput p4, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->odometer:I

    const/4 p1, 0x2

    .line 76
    iput p1, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->schemaVersion:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ILjava/lang/String;IZLjava/lang/String;I)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->description:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->country:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->registrationDate:Ljava/util/Date;

    .line 61
    iput p4, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->odometer:I

    .line 62
    iput-object p5, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->color:Ljava/lang/String;

    .line 63
    iput p6, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->tyresTypeId:I

    .line 64
    iput-boolean p7, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->autoDrive:Z

    .line 65
    iput-object p8, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->rescueContact:Ljava/lang/String;

    .line 66
    iput p9, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->schemaVersion:I

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 16
    instance-of p1, p1, Lcom/texa/careapp/model/VehicleModelUpdateEntity;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 16
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/model/VehicleModelUpdateEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/model/VehicleModelUpdateEntity;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getDescription()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getCountry()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getRegistrationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getRegistrationDate()Ljava/util/Date;

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
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getOdometer()I

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getOdometer()I

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getColor()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_a

    if-eqz v3, :cond_b

    goto :goto_3

    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_3
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getTyresTypeId()I

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getTyresTypeId()I

    move-result v3

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->isAutoDrive()Z

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->isAutoDrive()Z

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getRescueContact()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getRescueContact()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_e

    if-eqz v3, :cond_f

    goto :goto_4

    :cond_e
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :goto_4
    return v2

    :cond_f
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getSchemaVersion()I

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getSchemaVersion()I

    move-result p1

    if-eq v1, p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getOdometer()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->odometer:I

    return v0
.end method

.method public getRegistrationDate()Ljava/util/Date;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->registrationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getRescueContact()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->rescueContact:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemaVersion()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->schemaVersion:I

    return v0
.end method

.method public getTyresTypeId()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->tyresTypeId:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 16
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getDescription()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getCountry()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getRegistrationDate()Ljava/util/Date;

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

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getOdometer()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getColor()Ljava/lang/String;

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

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getTyresTypeId()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->isAutoDrive()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x4f

    goto :goto_4

    :cond_4
    const/16 v3, 0x61

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getRescueContact()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getSchemaVersion()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isAutoDrive()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->autoDrive:Z

    return v0
.end method

.method public setAutoDrive(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->autoDrive:Z

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->color:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->country:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->description:Ljava/lang/String;

    return-void
.end method

.method public setOdometer(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->odometer:I

    return-void
.end method

.method public setRegistrationDate(Ljava/util/Date;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->registrationDate:Ljava/util/Date;

    return-void
.end method

.method public setRescueContact(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->rescueContact:Ljava/lang/String;

    return-void
.end method

.method public setSchemaVersion(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->schemaVersion:I

    return-void
.end method

.method public setTyresTypeId(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->tyresTypeId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VehicleModelUpdateEntity(description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", registrationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getRegistrationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", odometer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getOdometer()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tyresTypeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getTyresTypeId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", autoDrive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->isAutoDrive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rescueContact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getRescueContact()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", schemaVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;->getSchemaVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
