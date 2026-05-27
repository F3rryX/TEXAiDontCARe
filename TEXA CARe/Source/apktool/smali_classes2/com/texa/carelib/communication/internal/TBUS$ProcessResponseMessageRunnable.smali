.class Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;
.super Ljava/lang/Object;
.source "TBUS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/communication/internal/TBUS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessResponseMessageRunnable"
.end annotation


# instance fields
.field private mRequestMessage:Lcom/texa/carelib/communication/Message;

.field private mResponseMessage:Lcom/texa/carelib/communication/Message;

.field final synthetic this$0:Lcom/texa/carelib/communication/internal/TBUS;


# direct methods
.method constructor <init>(Lcom/texa/carelib/communication/internal/TBUS;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/communication/Message;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;->this$0:Lcom/texa/carelib/communication/internal/TBUS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p2, p0, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;->mRequestMessage:Lcom/texa/carelib/communication/Message;

    .line 194
    iput-object p3, p0, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;->mResponseMessage:Lcom/texa/carelib/communication/Message;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 199
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;->mResponseMessage:Lcom/texa/carelib/communication/Message;

    if-eqz v0, :cond_3

    .line 201
    sget-object v0, Lcom/texa/carelib/communication/internal/TBUS;->TAG:Ljava/lang/String;

    const-string v1, "Parsed message: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;->mResponseMessage:Lcom/texa/carelib/communication/Message;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;->this$0:Lcom/texa/carelib/communication/internal/TBUS;

    invoke-static {v0}, Lcom/texa/carelib/communication/internal/TBUS;->access$000(Lcom/texa/carelib/communication/internal/TBUS;)Lcom/texa/carelib/communication/internal/MessageTimeoutHandler;

    move-result-object v0

    const/16 v1, 0xff

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;->mResponseMessage:Lcom/texa/carelib/communication/Message;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;->this$0:Lcom/texa/carelib/communication/internal/TBUS;

    invoke-static {v0}, Lcom/texa/carelib/communication/internal/TBUS;->access$000(Lcom/texa/carelib/communication/internal/TBUS;)Lcom/texa/carelib/communication/internal/MessageTimeoutHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;->mResponseMessage:Lcom/texa/carelib/communication/Message;

    invoke-virtual {v0, v2}, Lcom/texa/carelib/communication/internal/MessageTimeoutHandler;->unsubscribe(Lcom/texa/carelib/communication/Message;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;->mResponseMessage:Lcom/texa/carelib/communication/Message;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    .line 227
    new-instance v0, Lcom/texa/carelib/communication/internal/TBUSEvent;

    sget-object v1, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;->Error:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

    invoke-direct {v0, p0, v1}, Lcom/texa/carelib/communication/internal/TBUSEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;)V

    .line 228
    sget-object v1, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;->ErrorStatus:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/internal/TBUSEvent;->setError(Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;)V

    .line 229
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;->mRequestMessage:Lcom/texa/carelib/communication/Message;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/internal/TBUSEvent;->setRequestMessage(Lcom/texa/carelib/communication/Message;)V

    .line 230
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;->mResponseMessage:Lcom/texa/carelib/communication/Message;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/internal/TBUSEvent;->setResponseMessage(Lcom/texa/carelib/communication/Message;)V

    .line 231
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;->this$0:Lcom/texa/carelib/communication/internal/TBUS;

    invoke-static {v1, v0}, Lcom/texa/carelib/communication/internal/TBUS;->access$100(Lcom/texa/carelib/communication/internal/TBUS;Lcom/texa/carelib/communication/internal/TBUSEvent;)V

    .line 232
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;->this$0:Lcom/texa/carelib/communication/internal/TBUS;

    invoke-static {v0, v4}, Lcom/texa/carelib/communication/internal/TBUS;->access$200(Lcom/texa/carelib/communication/internal/TBUS;Z)V

    goto :goto_0

    .line 220
    :cond_1
    new-instance v0, Lcom/texa/carelib/communication/internal/TBUSEvent;

    sget-object v1, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;->Message:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

    invoke-direct {v0, p0, v1}, Lcom/texa/carelib/communication/internal/TBUSEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;)V

    .line 221
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;->mRequestMessage:Lcom/texa/carelib/communication/Message;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/internal/TBUSEvent;->setRequestMessage(Lcom/texa/carelib/communication/Message;)V

    .line 222
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;->mResponseMessage:Lcom/texa/carelib/communication/Message;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/internal/TBUSEvent;->setResponseMessage(Lcom/texa/carelib/communication/Message;)V

    .line 223
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;->this$0:Lcom/texa/carelib/communication/internal/TBUS;

    invoke-static {v1, v0}, Lcom/texa/carelib/communication/internal/TBUS;->access$100(Lcom/texa/carelib/communication/internal/TBUS;Lcom/texa/carelib/communication/internal/TBUSEvent;)V

    goto :goto_0

    .line 212
    :cond_2
    new-instance v0, Lcom/texa/carelib/communication/internal/TBUSEvent;

    sget-object v1, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;->Message:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

    invoke-direct {v0, p0, v1}, Lcom/texa/carelib/communication/internal/TBUSEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;)V

    .line 213
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;->mRequestMessage:Lcom/texa/carelib/communication/Message;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/internal/TBUSEvent;->setRequestMessage(Lcom/texa/carelib/communication/Message;)V

    .line 214
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;->mResponseMessage:Lcom/texa/carelib/communication/Message;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/internal/TBUSEvent;->setResponseMessage(Lcom/texa/carelib/communication/Message;)V

    .line 215
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;->this$0:Lcom/texa/carelib/communication/internal/TBUS;

    invoke-static {v1, v0}, Lcom/texa/carelib/communication/internal/TBUS;->access$100(Lcom/texa/carelib/communication/internal/TBUS;Lcom/texa/carelib/communication/internal/TBUSEvent;)V

    .line 216
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;->this$0:Lcom/texa/carelib/communication/internal/TBUS;

    invoke-static {v0, v4}, Lcom/texa/carelib/communication/internal/TBUS;->access$200(Lcom/texa/carelib/communication/internal/TBUS;Z)V

    .line 238
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/TBUS$ProcessResponseMessageRunnable;->this$0:Lcom/texa/carelib/communication/internal/TBUS;

    invoke-static {v0}, Lcom/texa/carelib/communication/internal/TBUS;->access$300(Lcom/texa/carelib/communication/internal/TBUS;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 239
    monitor-enter p0

    .line 249
    :try_start_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :goto_1
    return-void
.end method
