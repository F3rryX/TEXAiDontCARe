.class public Lcom/texa/careapp/app/activationSosServices/entity/PurchaseUnlockEntity;
.super Ljava/lang/Object;
.source "PurchaseUnlockEntity.java"


# instance fields
.field private ticket:Ljava/lang/String;
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
    instance-of p1, p1, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseUnlockEntity;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 12
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseUnlockEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseUnlockEntity;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseUnlockEntity;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseUnlockEntity;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseUnlockEntity;->getTicket()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseUnlockEntity;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 12
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseUnlockEntity;->getTicket()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public setTicket(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseUnlockEntity;->ticket:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurchaseUnlockEntity(ticket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseUnlockEntity;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
