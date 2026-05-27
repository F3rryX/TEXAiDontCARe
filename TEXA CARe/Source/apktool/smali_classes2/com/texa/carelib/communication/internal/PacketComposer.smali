.class public Lcom/texa/carelib/communication/internal/PacketComposer;
.super Ljava/lang/Object;
.source "PacketComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/communication/internal/PacketComposer$Callback;,
        Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;
    }
.end annotation


# static fields
.field private static final D:Z = false

.field private static final TAG:Ljava/lang/String; = "PacketComposer"


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mCallback:Lcom/texa/carelib/communication/internal/PacketComposer$Callback;

.field private mChecksum:I

.field private mCommandId:I

.field private mCommandStatus:I

.field private mDataToReceive:I

.field private volatile mLastReadTimeNanos:J

.field private final mLock:Ljava/lang/Object;

.field private final mPayload:[B

.field private mPayloadIndex:I

.field private mPayloadLength:I

.field private final mRawData:[B

.field private mState:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mLock:Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->WaitStx:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    iput-object v0, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mState:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    const/16 v0, 0x866

    .line 24
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mBuffer:Ljava/nio/ByteBuffer;

    .line 25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mLastReadTimeNanos:J

    new-array v1, v0, [B

    .line 26
    iput-object v1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mPayload:[B

    new-array v0, v0, [B

    .line 27
    iput-object v0, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mRawData:[B

    return-void
.end method

.method private cancelResetIfScheduled()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected addToChecksum(B)V
    .locals 1

    .line 236
    iget v0, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mChecksum:I

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    iput v0, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mChecksum:I

    and-int/lit16 p1, v0, 0xff

    .line 237
    iput p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mChecksum:I

    return-void
.end method

.method public dataReady([BI)V
    .locals 2

    if-eqz p1, :cond_1

    if-lez p2, :cond_1

    .line 36
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mLastReadTimeNanos:J

    .line 37
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/PacketComposer;->cancelResetIfScheduled()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 42
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 43
    invoke-virtual {p0, v1}, Lcom/texa/carelib/communication/internal/PacketComposer;->processByte(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mState:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    sget-object p2, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->WaitStx:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    if-eq p1, p2, :cond_1

    .line 48
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mLastReadTimeNanos:J

    :cond_1
    return-void
.end method

.method protected getChecksum()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mChecksum:I

    return v0
.end method

.method protected getCommandId()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mCommandId:I

    return v0
.end method

.method protected getPayloadActualLength()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mPayloadIndex:I

    return v0
.end method

.method protected getPayloadTotalLength()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mPayloadLength:I

    return v0
.end method

.method protected getState()Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mState:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    return-object v0
.end method

.method protected onIntraPacketTimeout()V
    .locals 0

    .line 231
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/PacketComposer;->resetState()V

    return-void
.end method

.method protected onInvalidPacketChecksum(II)V
    .locals 3

    .line 171
    sget-object v0, Lcom/texa/carelib/communication/internal/PacketComposer;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "Invalid packet checksum[actual=%d,expected=%d]"

    invoke-static {v0, p1, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected processByte(I)V
    .locals 10

    .line 64
    sget-object v0, Lcom/texa/carelib/communication/internal/PacketComposer$1;->$SwitchMap$com$texa$carelib$communication$internal$PacketComposer$PacketComposerState:[I

    iget-object v1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mState:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    invoke-virtual {v1}, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/4 v0, 0x3

    if-ne v0, p1, :cond_6

    .line 153
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mCallback:Lcom/texa/carelib/communication/internal/PacketComposer$Callback;

    if-eqz p1, :cond_6

    .line 154
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    .line 155
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 156
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mRawData:[B

    invoke-virtual {v0, v1, v3, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 157
    iget-object v4, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mCallback:Lcom/texa/carelib/communication/internal/PacketComposer$Callback;

    iget v5, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mCommandId:I

    iget v6, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mCommandStatus:I

    iget-object v7, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mPayload:[B

    iget p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mPayloadLength:I

    add-int/lit8 v8, p1, -0x1

    iget-object v9, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mRawData:[B

    invoke-interface/range {v4 .. v9}, Lcom/texa/carelib/communication/internal/PacketComposer$Callback;->onMessageReady(II[BI[B)V

    goto/16 :goto_3

    .line 139
    :pswitch_1
    iget v0, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mChecksum:I

    if-ne v0, p1, :cond_0

    .line 140
    sget-object p1, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->WaitStop:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mState:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    const/4 v2, 0x0

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/communication/internal/PacketComposer;->onInvalidPacketChecksum(II)V

    .line 145
    :goto_0
    sget-object p1, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->WaitStop:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mState:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    goto/16 :goto_3

    :pswitch_2
    int-to-byte v0, p1

    .line 122
    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/PacketComposer;->addToChecksum(B)V

    .line 123
    iget v1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mPayloadIndex:I

    if-nez v1, :cond_1

    .line 124
    iput p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mCommandStatus:I

    goto :goto_1

    :cond_1
    if-lez v1, :cond_2

    .line 126
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mPayload:[B

    add-int/lit8 v4, v1, -0x1

    aput-byte v0, p1, v4

    :cond_2
    :goto_1
    add-int/2addr v1, v2

    .line 129
    iput v1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mPayloadIndex:I

    .line 130
    iget p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mDataToReceive:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mDataToReceive:I

    .line 131
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 133
    iget p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mDataToReceive:I

    if-gtz p1, :cond_5

    .line 134
    sget-object p1, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->WaitChecksum:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mState:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    goto/16 :goto_2

    :pswitch_3
    int-to-byte v0, p1

    .line 105
    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/PacketComposer;->addToChecksum(B)V

    .line 106
    iget v4, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mPayloadLength:I

    shl-int/lit8 p1, p1, 0x8

    const v5, 0xff00

    and-int/2addr p1, v5

    add-int/2addr v4, p1

    iput v4, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mPayloadLength:I

    if-nez v4, :cond_3

    .line 108
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 109
    sget-object p1, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->WaitChecksum:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mState:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    goto/16 :goto_2

    :cond_3
    if-lez v4, :cond_4

    .line 110
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    add-int/lit8 p1, p1, -0x6

    sub-int/2addr p1, v1

    if-ge v4, p1, :cond_4

    .line 111
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 112
    sget-object p1, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->WaitData:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mState:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    .line 113
    iget p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mPayloadLength:I

    iput p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mDataToReceive:I

    .line 114
    iput v3, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mPayloadIndex:I

    goto :goto_2

    .line 116
    :cond_4
    sget-object p1, Lcom/texa/carelib/communication/internal/PacketComposer;->TAG:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Packet length too long!"

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_4
    int-to-byte v0, p1

    .line 98
    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/PacketComposer;->addToChecksum(B)V

    .line 99
    iput p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mPayloadLength:I

    .line 100
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 101
    sget-object p1, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->WaitLengthMsb:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mState:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    goto :goto_2

    :pswitch_5
    int-to-byte p1, p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/PacketComposer;->addToChecksum(B)V

    .line 93
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 94
    sget-object p1, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->WaitLengthLsb:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mState:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    goto :goto_2

    :pswitch_6
    int-to-byte p1, p1

    .line 86
    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/PacketComposer;->addToChecksum(B)V

    .line 87
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 88
    sget-object p1, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->WaitCurrentIndex:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mState:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    goto :goto_2

    :pswitch_7
    int-to-byte v0, p1

    .line 79
    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/PacketComposer;->addToChecksum(B)V

    .line 80
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 81
    iput p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mCommandId:I

    .line 82
    sget-object p1, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->WaitMaxIndex:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mState:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    goto :goto_2

    .line 66
    :pswitch_8
    iput v3, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mPayloadLength:I

    .line 67
    iput v3, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mDataToReceive:I

    .line 68
    iput v3, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mChecksum:I

    .line 69
    iput v3, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mCommandId:I

    .line 70
    iput v3, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mCommandStatus:I

    .line 71
    iput v3, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mPayloadIndex:I

    if-ne v1, p1, :cond_5

    .line 73
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mBuffer:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 74
    sget-object p1, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->WaitCommandId:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mState:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    :cond_5
    :goto_2
    const/4 v2, 0x0

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    .line 165
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/PacketComposer;->resetState()V

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method resetState()V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mState:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    sget-object v1, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->WaitStop:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 176
    sget-object v0, Lcom/texa/carelib/communication/internal/PacketComposer;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Reset state"

    invoke-static {v0, v3, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/PacketComposer;->cancelResetIfScheduled()V

    .line 180
    sget-object v0, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->WaitStx:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    iput-object v0, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mState:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    .line 181
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 182
    iput v2, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mPayloadLength:I

    .line 183
    iput v2, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mPayloadIndex:I

    .line 184
    iput v2, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mDataToReceive:I

    .line 185
    iput v2, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mChecksum:I

    .line 186
    iput v2, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mCommandId:I

    .line 187
    iput v2, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mCommandStatus:I

    return-void
.end method

.method public setCallback(Lcom/texa/carelib/communication/internal/PacketComposer$Callback;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mCallback:Lcom/texa/carelib/communication/internal/PacketComposer$Callback;

    return-void
.end method

.method public size()I
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/PacketComposer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
