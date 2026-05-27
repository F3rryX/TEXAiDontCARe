.class Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer$1;
.super Landroid/os/Handler;
.source "AbstractCountdownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer$1;->this$0:Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 30
    iget-object p1, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer$1;->this$0:Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;

    monitor-enter p1

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer$1;->this$0:Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;

    invoke-static {v0}, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->access$000(Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 34
    iget-object v0, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer$1;->this$0:Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;

    invoke-virtual {v0}, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->onFinish()V

    goto :goto_0

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer$1;->this$0:Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;

    invoke-virtual {v2, v0, v1}, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->onTick(J)V

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer$1;->this$0:Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;

    invoke-static {v2}, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->access$200(Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->access$114(Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;J)J

    .line 43
    iget-object v2, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer$1;->this$0:Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;

    invoke-static {v2}, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->access$100(Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer$1;->this$0:Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;

    invoke-static {v0}, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->access$100(Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer$1;->this$0:Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;

    invoke-static {v2}, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->access$000(Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;)J

    move-result-wide v2

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-gez v5, :cond_2

    .line 47
    invoke-virtual {p0, v4}, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer$1;->this$0:Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;

    invoke-static {v1}, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->access$100(Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer$1;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0, v4}, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer$1;->this$0:Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;

    invoke-static {v1}, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->access$000(Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer$1;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 51
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
