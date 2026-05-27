.class public Lcom/texa/careapp/networking/response/SelectionDataResponse;
.super Ljava/lang/Object;
.source "SelectionDataResponse.java"


# instance fields
.field private brand:Lcom/texa/careapp/utils/ValueOrder;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private engine:Lcom/texa/careapp/utils/ValueOrder;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private model:Lcom/texa/careapp/utils/ValueOrder;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private vehicle_code:Lcom/texa/careapp/utils/ValueOrder;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    instance-of p1, p1, Lcom/texa/careapp/networking/response/SelectionDataResponse;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 13
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/networking/response/SelectionDataResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/networking/response/SelectionDataResponse;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getBrand()Lcom/texa/careapp/utils/ValueOrder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getBrand()Lcom/texa/careapp/utils/ValueOrder;

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
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getModel()Lcom/texa/careapp/utils/ValueOrder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getModel()Lcom/texa/careapp/utils/ValueOrder;

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
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getEngine()Lcom/texa/careapp/utils/ValueOrder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getEngine()Lcom/texa/careapp/utils/ValueOrder;

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
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getVehicle_code()Lcom/texa/careapp/utils/ValueOrder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getVehicle_code()Lcom/texa/careapp/utils/ValueOrder;

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

.method public getBrand()Lcom/texa/careapp/utils/ValueOrder;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/texa/careapp/networking/response/SelectionDataResponse;->brand:Lcom/texa/careapp/utils/ValueOrder;

    return-object v0
.end method

.method public getEngine()Lcom/texa/careapp/utils/ValueOrder;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/texa/careapp/networking/response/SelectionDataResponse;->engine:Lcom/texa/careapp/utils/ValueOrder;

    return-object v0
.end method

.method public getModel()Lcom/texa/careapp/utils/ValueOrder;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/texa/careapp/networking/response/SelectionDataResponse;->model:Lcom/texa/careapp/utils/ValueOrder;

    return-object v0
.end method

.method public getVehicle_code()Lcom/texa/careapp/utils/ValueOrder;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/texa/careapp/networking/response/SelectionDataResponse;->vehicle_code:Lcom/texa/careapp/utils/ValueOrder;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 13
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getBrand()Lcom/texa/careapp/utils/ValueOrder;

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

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getModel()Lcom/texa/careapp/utils/ValueOrder;

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

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getEngine()Lcom/texa/careapp/utils/ValueOrder;

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

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getVehicle_code()Lcom/texa/careapp/utils/ValueOrder;

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

.method public setBrand(Lcom/texa/careapp/utils/ValueOrder;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/texa/careapp/networking/response/SelectionDataResponse;->brand:Lcom/texa/careapp/utils/ValueOrder;

    return-void
.end method

.method public setEngine(Lcom/texa/careapp/utils/ValueOrder;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/texa/careapp/networking/response/SelectionDataResponse;->engine:Lcom/texa/careapp/utils/ValueOrder;

    return-void
.end method

.method public setModel(Lcom/texa/careapp/utils/ValueOrder;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/texa/careapp/networking/response/SelectionDataResponse;->model:Lcom/texa/careapp/utils/ValueOrder;

    return-void
.end method

.method public setVehicle_code(Lcom/texa/careapp/utils/ValueOrder;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/texa/careapp/networking/response/SelectionDataResponse;->vehicle_code:Lcom/texa/careapp/utils/ValueOrder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectionDataResponse(brand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getBrand()Lcom/texa/careapp/utils/ValueOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getModel()Lcom/texa/careapp/utils/ValueOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", engine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getEngine()Lcom/texa/careapp/utils/ValueOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vehicle_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getVehicle_code()Lcom/texa/careapp/utils/ValueOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
