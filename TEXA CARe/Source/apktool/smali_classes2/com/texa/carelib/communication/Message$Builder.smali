.class public Lcom/texa/carelib/communication/Message$Builder;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/communication/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCommandID:I

.field private mID:Ljava/util/UUID;

.field private mPayload:[B

.field private mReceivedTime:Ljava/util/Date;

.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/communication/Message$Builder;->mID:Ljava/util/UUID;

    const/4 v0, -0x1

    .line 140
    iput v0, p0, Lcom/texa/carelib/communication/Message$Builder;->mCommandID:I

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/texa/carelib/communication/Message$Builder;->mStatus:I

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/texa/carelib/communication/Message$Builder;->mPayload:[B

    .line 143
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/communication/Message$Builder;->mReceivedTime:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/communication/Message;)V
    .locals 1

    .line 147
    invoke-direct {p0}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    .line 149
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/communication/Message$Builder;->mID:Ljava/util/UUID;

    .line 150
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    iput v0, p0, Lcom/texa/carelib/communication/Message$Builder;->mCommandID:I

    .line 151
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/communication/Message$Builder;->mPayload:[B

    .line 152
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result v0

    iput v0, p0, Lcom/texa/carelib/communication/Message$Builder;->mStatus:I

    .line 153
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getReceivedTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/communication/Message$Builder;->mReceivedTime:Ljava/util/Date;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/communication/Message$Builder;)Ljava/util/UUID;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/texa/carelib/communication/Message$Builder;->mID:Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/carelib/communication/Message$Builder;)Ljava/util/Date;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/texa/carelib/communication/Message$Builder;->mReceivedTime:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/carelib/communication/Message$Builder;)I
    .locals 0

    .line 137
    iget p0, p0, Lcom/texa/carelib/communication/Message$Builder;->mCommandID:I

    return p0
.end method

.method static synthetic access$300(Lcom/texa/carelib/communication/Message$Builder;)[B
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/texa/carelib/communication/Message$Builder;->mPayload:[B

    return-object p0
.end method

.method static synthetic access$400(Lcom/texa/carelib/communication/Message$Builder;)I
    .locals 0

    .line 137
    iget p0, p0, Lcom/texa/carelib/communication/Message$Builder;->mStatus:I

    return p0
.end method


# virtual methods
.method public build()Lcom/texa/carelib/communication/Message;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/texa/carelib/communication/Message$Builder;->mID:Ljava/util/UUID;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 162
    iget v1, p0, Lcom/texa/carelib/communication/Message$Builder;->mCommandID:I

    if-eq v0, v1, :cond_0

    .line 166
    new-instance v0, Lcom/texa/carelib/communication/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/texa/carelib/communication/Message;-><init>(Lcom/texa/carelib/communication/Message$Builder;Lcom/texa/carelib/communication/Message$1;)V

    return-object v0

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Command ID not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Message ID not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;
    .locals 0

    .line 189
    iput p1, p0, Lcom/texa/carelib/communication/Message$Builder;->mCommandID:I

    return-object p0
.end method

.method public setID(Ljava/util/UUID;)Lcom/texa/carelib/communication/Message$Builder;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/texa/carelib/communication/Message$Builder;->mID:Ljava/util/UUID;

    return-object p0
.end method

.method public setPayload([B)Lcom/texa/carelib/communication/Message$Builder;
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/texa/carelib/communication/Message$Builder;->mPayload:[B

    return-object p0
.end method

.method public setReceivedTime(Ljava/util/Date;)Lcom/texa/carelib/communication/Message$Builder;
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/texa/carelib/communication/Message$Builder;->mReceivedTime:Ljava/util/Date;

    return-object p0
.end method

.method public setStatus(I)Lcom/texa/carelib/communication/Message$Builder;
    .locals 0

    .line 201
    iput p1, p0, Lcom/texa/carelib/communication/Message$Builder;->mStatus:I

    return-object p0
.end method
