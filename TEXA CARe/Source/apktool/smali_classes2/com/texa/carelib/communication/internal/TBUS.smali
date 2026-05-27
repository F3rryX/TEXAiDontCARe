.class public Lcom/texa/carelib/communication/internal/TBUS;
.super Ljava/lang/Object;
.source "TBUS.java"

# interfaces
.implements Lcom/texa/carelib/communication/internal/MessageTimeoutHandler$CommandTimeoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;
    }
.end annotation


# static fields
.field private static final COMMAND_TIMEOUT:I = 0x2710

.field public static final D:Z = true

.field public static final SEND_ATTEMPTS_DEFAULT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "TBUS"


# instance fields
.field private volatile mIsWaitingForReply:Z

.field private mLastMessage:Lcom/texa/carelib/communication/Message;

.field private final mListener:Lcom/texa/carelib/communication/internal/TBUSListener;

.field private mMessageTimeoutHandler:Lcom/texa/carelib/communication/internal/MessageTimeoutHandler;

.field private final mPacketComposer:Lcom/texa/carelib/communication/internal/PacketComposer;

.field private final mPacketComposerCallback:Lcom/texa/carelib/communication/internal/PacketComposer$Callback;

.field private mResendCount:I

.field private mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mSendTries:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/carelib/communication/internal/TBUSListener;Lcom/texa/carelib/communication/internal/MessageTimeoutHandler;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/communication/internal/TBUS;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x2

    .line 45
    iput v0, p0, Lcom/texa/carelib/communication/internal/TBUS;->mSendTries:I

    .line 254
    new-instance v0, Lcom/texa/carelib/communication/internal/TBUS$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/carelib/communication/internal/TBUS$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/communication/internal/TBUS;)V

    iput-object v0, p0, Lcom/texa/carelib/communication/internal/TBUS;->mPacketComposerCallback:Lcom/texa/carelib/communication/internal/PacketComposer$Callback;

    .line 56
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/TBUS;->mListener:Lcom/texa/carelib/communication/internal/TBUSListener;

    .line 57
    iput-object p2, p0, Lcom/texa/carelib/communication/internal/TBUS;->mMessageTimeoutHandler:Lcom/texa/carelib/communication/internal/MessageTimeoutHandler;

    .line 58
    new-instance p1, Lcom/texa/carelib/communication/internal/PacketComposer;

    invoke-direct {p1}, Lcom/texa/carelib/communication/internal/PacketComposer;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/TBUS;->mPacketComposer:Lcom/texa/carelib/communication/internal/PacketComposer;

    .line 59
    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/internal/PacketComposer;->setCallback(Lcom/texa/carelib/communication/internal/PacketComposer$Callback;)V

    .line 60
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/TBUS;->reset()V

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/communication/internal/TBUS;)Lcom/texa/carelib/communication/internal/MessageTimeoutHandler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/texa/carelib/communication/internal/TBUS;->mMessageTimeoutHandler:Lcom/texa/carelib/communication/internal/MessageTimeoutHandler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/carelib/communication/internal/TBUS;Lcom/texa/carelib/communication/internal/TBUSEvent;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/texa/carelib/communication/internal/TBUS;->fireEvent(Lcom/texa/carelib/communication/internal/TBUSEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/texa/carelib/communication/internal/TBUS;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/texa/carelib/communication/internal/TBUS;->setWaitingForReply(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/texa/carelib/communication/internal/TBUS;)Z
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/TBUS;->isWaitingForReply()Z

    move-result p0

    return p0
.end method

.method static synthetic access$402(Lcom/texa/carelib/communication/internal/TBUS;Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/communication/Message;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/TBUS;->mLastMessage:Lcom/texa/carelib/communication/Message;

    return-object p1
.end method

.method private declared-synchronized fireEvent(Lcom/texa/carelib/communication/internal/TBUSEvent;)V
    .locals 5

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/TBUS;->mListener:Lcom/texa/carelib/communication/internal/TBUSListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/texa/carelib/communication/internal/TBUS;->TAG:Ljava/lang/String;

    const-string v2, "Firing event: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/communication/internal/TBUSEvent;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/TBUS;->mListener:Lcom/texa/carelib/communication/internal/TBUSListener;

    invoke-interface {v0, p1}, Lcom/texa/carelib/communication/internal/TBUSListener;->onTBUSEventReceived(Lcom/texa/carelib/communication/internal/TBUSEvent;)V

    goto :goto_0

    .line 113
    :cond_0
    sget-object p1, Lcom/texa/carelib/communication/internal/TBUS;->TAG:Ljava/lang/String;

    const-string v0, "TBUS Listener is null!!!!!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getCommandID([B)Ljava/lang/Integer;
    .locals 2

    .line 182
    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 183
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCommandTimeoutTime()I
    .locals 1

    .line 178
    sget v0, Lcom/texa/carelib/communication/internal/TBUS;->COMMAND_TIMEOUT:I

    return v0
.end method

.method private isWaitingForReply()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/texa/carelib/communication/internal/TBUS;->mIsWaitingForReply:Z

    return v0
.end method

.method private setWaitingForReply(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/texa/carelib/communication/internal/TBUS;->mIsWaitingForReply:Z

    return-void
.end method


# virtual methods
.method public dataReady([BI)V
    .locals 4

    if-gtz p2, :cond_0

    return-void

    .line 97
    :cond_0
    sget-object v0, Lcom/texa/carelib/communication/internal/TBUS;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Lcom/texa/carelib/core/logging/internal/LogUtils;->dataToString([BI)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "dataReady() buffer=%s"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/TBUS;->mPacketComposer:Lcom/texa/carelib/communication/internal/PacketComposer;

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/communication/internal/PacketComposer;->dataReady([BI)V

    return-void
.end method

.method public synthetic lambda$new$0$com-texa-carelib-communication-internal-TBUS(II[BI[B)V
    .locals 1

    .line 255
    new-array p5, p4, [B

    const/4 v0, 0x0

    .line 256
    invoke-static {p3, v0, p5, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    new-instance p3, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p3}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    invoke-virtual {p3, p1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/texa/carelib/communication/Message$Builder;->setStatus(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    .line 259
    iget-object p2, p0, Lcom/texa/carelib/communication/internal/TBUS;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p3, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;

    iget-object p4, p0, Lcom/texa/carelib/communication/internal/TBUS;->mLastMessage:Lcom/texa/carelib/communication/Message;

    invoke-direct {p3, p0, p4, p1}, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;-><init>(Lcom/texa/carelib/communication/internal/TBUS;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/communication/Message;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p4, 0x0

    invoke-interface {p2, p3, p4, p5, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public onCommandTimeout(Lcom/texa/carelib/communication/Message;)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0}, Lcom/texa/carelib/communication/internal/TBUS;->setWaitingForReply(Z)V

    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lcom/texa/carelib/communication/internal/TBUS;->mLastMessage:Lcom/texa/carelib/communication/Message;

    .line 67
    iput v0, p0, Lcom/texa/carelib/communication/internal/TBUS;->mResendCount:I

    .line 68
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/TBUS;->mPacketComposer:Lcom/texa/carelib/communication/internal/PacketComposer;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/internal/PacketComposer;->resetState()V

    .line 69
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/TBUS;->mMessageTimeoutHandler:Lcom/texa/carelib/communication/internal/MessageTimeoutHandler;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/internal/MessageTimeoutHandler;->reset()V

    return-void
.end method

.method public setSendTries(I)V
    .locals 0

    if-gtz p1, :cond_0

    const/4 p1, 0x2

    .line 79
    iput p1, p0, Lcom/texa/carelib/communication/internal/TBUS;->mSendTries:I

    goto :goto_0

    .line 81
    :cond_0
    iput p1, p0, Lcom/texa/carelib/communication/internal/TBUS;->mSendTries:I

    :goto_0
    return-void
.end method
