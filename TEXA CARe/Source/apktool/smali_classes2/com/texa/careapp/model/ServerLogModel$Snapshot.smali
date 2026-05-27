.class public Lcom/texa/careapp/model/ServerLogModel$Snapshot;
.super Ljava/lang/Object;
.source "ServerLogModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/model/ServerLogModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Snapshot"
.end annotation


# instance fields
.field private battPct:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private bt:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private btConn:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private gps:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private sim:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private simValid:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private wan:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private wanReach:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 121
    instance-of p1, p1, Lcom/texa/careapp/model/ServerLogModel$Snapshot;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 121
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/model/ServerLogModel$Snapshot;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/model/ServerLogModel$Snapshot;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isBt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isBt()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isBtConn()Z

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isBtConn()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isGps()Z

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isGps()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isWan()Z

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isWan()Z

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isWanReach()Z

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isWanReach()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isSim()Z

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isSim()Z

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isSimValid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isSimValid()Z

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->getBattPct()I

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->getBattPct()I

    move-result p1

    if-eq v1, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public getBattPct()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->battPct:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 121
    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isBt()Z

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

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isBtConn()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x4f

    goto :goto_1

    :cond_1
    const/16 v4, 0x61

    :goto_1
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isGps()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x4f

    goto :goto_2

    :cond_2
    const/16 v4, 0x61

    :goto_2
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isWan()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x4f

    goto :goto_3

    :cond_3
    const/16 v4, 0x61

    :goto_3
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isWanReach()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x4f

    goto :goto_4

    :cond_4
    const/16 v4, 0x61

    :goto_4
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isSim()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x4f

    goto :goto_5

    :cond_5
    const/16 v4, 0x61

    :goto_5
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isSimValid()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_6

    :cond_6
    const/16 v1, 0x61

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->getBattPct()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isBt()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->bt:Z

    return v0
.end method

.method public isBtConn()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->btConn:Z

    return v0
.end method

.method public isGps()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->gps:Z

    return v0
.end method

.method public isSim()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->sim:Z

    return v0
.end method

.method public isSimValid()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->simValid:Z

    return v0
.end method

.method public isWan()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->wan:Z

    return v0
.end method

.method public isWanReach()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->wanReach:Z

    return v0
.end method

.method public setBattPct(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->battPct:I

    return-void
.end method

.method public setBt(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->bt:Z

    return-void
.end method

.method public setBtConn(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->btConn:Z

    return-void
.end method

.method public setGps(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->gps:Z

    return-void
.end method

.method public setSim(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->sim:Z

    return-void
.end method

.method public setSimValid(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->simValid:Z

    return-void
.end method

.method public setWan(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->wan:Z

    return-void
.end method

.method public setWanReach(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->wanReach:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerLogModel.Snapshot(bt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isBt()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", btConn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isBtConn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", gps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isGps()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", wan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isWan()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", wanReach="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isWanReach()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isSim()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", simValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->isSimValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", battPct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->getBattPct()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
