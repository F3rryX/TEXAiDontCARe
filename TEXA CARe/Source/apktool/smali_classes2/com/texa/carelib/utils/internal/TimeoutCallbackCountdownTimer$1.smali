.class Lcom/texa/carelib/utils/internal/TimeoutCallbackCountdownTimer$1;
.super Landroid/os/CountDownTimer;
.source "TimeoutCallbackCountdownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/carelib/utils/internal/TimeoutCallbackCountdownTimer;->set(Ljava/lang/Runnable;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/utils/internal/TimeoutCallbackCountdownTimer;

.field final synthetic val$action:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/texa/carelib/utils/internal/TimeoutCallbackCountdownTimer;JJLjava/lang/Runnable;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackCountdownTimer$1;->this$0:Lcom/texa/carelib/utils/internal/TimeoutCallbackCountdownTimer;

    iput-object p6, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackCountdownTimer$1;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackCountdownTimer$1;->val$action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 39
    iget-object v0, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackCountdownTimer$1;->this$0:Lcom/texa/carelib/utils/internal/TimeoutCallbackCountdownTimer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/texa/carelib/utils/internal/TimeoutCallbackCountdownTimer;->access$002(Lcom/texa/carelib/utils/internal/TimeoutCallbackCountdownTimer;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
