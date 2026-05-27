.class public Lcom/texa/careapp/networking/LampsServerData;
.super Ljava/lang/Object;
.source "LampsServerData.java"


# instance fields
.field private list:Ljava/util/HashMap;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;"
        }
    .end annotation
.end field

.field private vehicleId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/networking/LampsServerData;->list:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 16
    instance-of p1, p1, Lcom/texa/careapp/networking/LampsServerData;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 16
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/networking/LampsServerData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/networking/LampsServerData;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/networking/LampsServerData;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/networking/LampsServerData;->getVehicleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/networking/LampsServerData;->getVehicleId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/texa/careapp/networking/LampsServerData;->getList()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/networking/LampsServerData;->getList()Ljava/util/HashMap;

    move-result-object p1

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public getList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/texa/careapp/networking/LampsServerData;->list:Ljava/util/HashMap;

    return-object v0
.end method

.method public getVehicleId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/texa/careapp/networking/LampsServerData;->vehicleId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 16
    invoke-virtual {p0}, Lcom/texa/careapp/networking/LampsServerData;->getVehicleId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/texa/careapp/networking/LampsServerData;->getList()Ljava/util/HashMap;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setActiveLamps(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    .line 31
    invoke-virtual {v0}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/texa/careapp/networking/LampsServerData;->list:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->getDataId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setList(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/networking/LampsServerData;->list:Ljava/util/HashMap;

    return-void
.end method

.method public setVehicleId(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/networking/LampsServerData;->vehicleId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LampsServerData(vehicleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/LampsServerData;->getVehicleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/LampsServerData;->getList()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
