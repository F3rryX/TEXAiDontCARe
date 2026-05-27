.class public Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;
.super Ljava/lang/Object;
.source "PurchaseLockResponseEntity.java"


# instance fields
.field private alreadyPending:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private expiresIn:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private ticket:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 15
    instance-of p1, p1, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 15
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->getTicket()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->getExpiresIn()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->getExpiresIn()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->isAlreadyPending()Z

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->isAlreadyPending()Z

    move-result p1

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public getExpiresIn()Ljava/lang/Integer;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->expiresIn:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 15
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->getTicket()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->getExpiresIn()Ljava/lang/Integer;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->isAlreadyPending()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x4f

    goto :goto_2

    :cond_2
    const/16 v1, 0x61

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public isAlreadyPending()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->alreadyPending:Z

    return v0
.end method

.method public setAlreadyPending(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->alreadyPending:Z

    return-void
.end method

.method public setExpiresIn(Ljava/lang/Integer;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->expiresIn:Ljava/lang/Integer;

    return-void
.end method

.method public setTicket(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->ticket:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurchaseLockResponseEntity(ticket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expiresIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->getExpiresIn()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alreadyPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->isAlreadyPending()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
