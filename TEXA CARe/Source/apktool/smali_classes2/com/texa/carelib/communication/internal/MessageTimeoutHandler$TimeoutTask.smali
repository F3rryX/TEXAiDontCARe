.class Lcom/texa/carelib/communication/internal/MessageTimeoutHandler$TimeoutTask;
.super Ljava/lang/Object;
.source "MessageTimeoutHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/communication/internal/MessageTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutTask"
.end annotation


# instance fields
.field private final mCreateDate:Ljava/util/Date;

.field private final mListener:Lcom/texa/carelib/communication/internal/MessageTimeoutHandler$CommandTimeoutListener;

.field private final mMessage:Lcom/texa/carelib/communication/Message;

.field final synthetic this$0:Lcom/texa/carelib/communication/internal/MessageTimeoutHandler;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/communication/internal/MessageTimeoutHandler;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/communication/internal/MessageTimeoutHandler$CommandTimeoutListener;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/MessageTimeoutHandler$TimeoutTask;->this$0:Lcom/texa/carelib/communication/internal/MessageTimeoutHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/MessageTimeoutHandler$TimeoutTask;->mCreateDate:Ljava/util/Date;

    .line 150
    iput-object p2, p0, Lcom/texa/carelib/communication/internal/MessageTimeoutHandler$TimeoutTask;->mMessage:Lcom/texa/carelib/communication/Message;

    .line 151
    iput-object p3, p0, Lcom/texa/carelib/communication/internal/MessageTimeoutHandler$TimeoutTask;->mListener:Lcom/texa/carelib/communication/internal/MessageTimeoutHandler$CommandTimeoutListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 156
    sget-object v0, Lcom/texa/carelib/communication/internal/MessageTimeoutHandler;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/texa/carelib/communication/internal/MessageTimeoutHandler$TimeoutTask;->mMessage:Lcom/texa/carelib/communication/Message;

    invoke-virtual {v2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/texa/carelib/communication/internal/MessageTimeoutHandler$TimeoutTask;->mMessage:Lcom/texa/carelib/communication/Message;

    invoke-virtual {v2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/carelib/communication/Commands;->getName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/texa/carelib/communication/internal/MessageTimeoutHandler$TimeoutTask;->mCreateDate:Ljava/util/Date;

    invoke-static {v2}, Lcom/texa/carelib/core/utils/internal/Utils;->getISO8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-static {}, Lcom/texa/carelib/core/utils/internal/Utils;->getUTCNow()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/carelib/core/utils/internal/Utils;->getISO8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const-string v2, "Command %d(%s): TIMEOUT Send date[%s] Current Date[%s]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/MessageTimeoutHandler$TimeoutTask;->mListener:Lcom/texa/carelib/communication/internal/MessageTimeoutHandler$CommandTimeoutListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/MessageTimeoutHandler$TimeoutTask;->mMessage:Lcom/texa/carelib/communication/Message;

    invoke-interface {v0, v1}, Lcom/texa/carelib/communication/internal/MessageTimeoutHandler$CommandTimeoutListener;->onCommandTimeout(Lcom/texa/carelib/communication/Message;)V

    goto :goto_0

    .line 161
    :cond_0
    sget-object v0, Lcom/texa/carelib/communication/internal/MessageTimeoutHandler;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "command timeout is null!!!"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
