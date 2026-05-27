.class public Lcom/texa/carelib/communication/Message;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/communication/Message$Builder;
    }
.end annotation


# instance fields
.field private mCommandID:I

.field private mID:Ljava/util/UUID;

.field private mPayload:[B

.field private mReceivedTime:Ljava/util/Date;

.field private mStatus:I


# direct methods
.method private constructor <init>(Lcom/texa/carelib/communication/Message$Builder;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lcom/texa/carelib/communication/Message$Builder;->access$000(Lcom/texa/carelib/communication/Message$Builder;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/communication/Message;->mID:Ljava/util/UUID;

    .line 24
    invoke-static {p1}, Lcom/texa/carelib/communication/Message$Builder;->access$100(Lcom/texa/carelib/communication/Message$Builder;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/communication/Message;->mReceivedTime:Ljava/util/Date;

    .line 25
    invoke-static {p1}, Lcom/texa/carelib/communication/Message$Builder;->access$200(Lcom/texa/carelib/communication/Message$Builder;)I

    move-result v0

    iput v0, p0, Lcom/texa/carelib/communication/Message;->mCommandID:I

    .line 26
    invoke-static {p1}, Lcom/texa/carelib/communication/Message$Builder;->access$300(Lcom/texa/carelib/communication/Message$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/communication/Message;->mPayload:[B

    .line 27
    invoke-static {p1}, Lcom/texa/carelib/communication/Message$Builder;->access$400(Lcom/texa/carelib/communication/Message$Builder;)I

    move-result p1

    iput p1, p0, Lcom/texa/carelib/communication/Message;->mStatus:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/carelib/communication/Message$Builder;Lcom/texa/carelib/communication/Message$1;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/texa/carelib/communication/Message;-><init>(Lcom/texa/carelib/communication/Message$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 108
    :cond_0
    instance-of v0, p1, Lcom/texa/carelib/communication/Message;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 110
    :cond_1
    check-cast p1, Lcom/texa/carelib/communication/Message;

    .line 112
    iget-object v0, p0, Lcom/texa/carelib/communication/Message;->mID:Ljava/util/UUID;

    iget-object v2, p1, Lcom/texa/carelib/communication/Message;->mID:Ljava/util/UUID;

    if-eq v0, v2, :cond_2

    return v1

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/texa/carelib/communication/Message;->mReceivedTime:Ljava/util/Date;

    iget-object v2, p1, Lcom/texa/carelib/communication/Message;->mReceivedTime:Ljava/util/Date;

    if-eq v0, v2, :cond_3

    return v1

    .line 114
    :cond_3
    iget v0, p0, Lcom/texa/carelib/communication/Message;->mCommandID:I

    iget v2, p1, Lcom/texa/carelib/communication/Message;->mCommandID:I

    if-eq v0, v2, :cond_4

    return v1

    .line 115
    :cond_4
    iget v0, p0, Lcom/texa/carelib/communication/Message;->mStatus:I

    iget v2, p1, Lcom/texa/carelib/communication/Message;->mStatus:I

    if-eq v0, v2, :cond_5

    return v1

    .line 116
    :cond_5
    iget-object v0, p0, Lcom/texa/carelib/communication/Message;->mPayload:[B

    iget-object p1, p1, Lcom/texa/carelib/communication/Message;->mPayload:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getCommandID()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/texa/carelib/communication/Message;->mCommandID:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/texa/carelib/communication/Message;->mPayload:[B

    return-object v0
.end method

.method public getID()Ljava/util/UUID;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/texa/carelib/communication/Message;->mID:Ljava/util/UUID;

    return-object v0
.end method

.method public getReceivedTime()Ljava/util/Date;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/texa/carelib/communication/Message;->mReceivedTime:Ljava/util/Date;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/texa/carelib/communication/Message;->mStatus:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/texa/carelib/communication/Message;->mID:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 123
    iget v1, p0, Lcom/texa/carelib/communication/Message;->mCommandID:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 124
    iget-object v1, p0, Lcom/texa/carelib/communication/Message;->mReceivedTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 125
    iget v1, p0, Lcom/texa/carelib/communication/Message;->mStatus:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 126
    iget-object v1, p0, Lcom/texa/carelib/communication/Message;->mPayload:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isStatusOK()Z
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ cmd: 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    iget v1, p0, Lcom/texa/carelib/communication/Message;->mCommandID:I

    invoke-static {v1}, Lcom/texa/carelib/core/utils/internal/Hex;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget v2, p0, Lcom/texa/carelib/communication/Message;->mCommandID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/carelib/communication/Commands;->getName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "status: 0x"

    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v3, p0, Lcom/texa/carelib/communication/Message;->mStatus:I

    invoke-static {v3}, Lcom/texa/carelib/core/utils/internal/Hex;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget v1, p0, Lcom/texa/carelib/communication/Message;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/carelib/communication/CommandStatus;->getStatusName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
