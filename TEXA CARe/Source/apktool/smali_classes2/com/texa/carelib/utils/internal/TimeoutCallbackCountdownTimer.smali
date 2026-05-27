.class public Lcom/texa/carelib/utils/internal/TimeoutCallbackCountdownTimer;
.super Ljava/lang/Object;
.source "TimeoutCallbackCountdownTimer.java"

# interfaces
.implements Lcom/texa/carelib/utils/TimeoutCallback;


# instance fields
.field private mCountDownTimer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/texa/carelib/utils/internal/TimeoutCallbackCountdownTimer;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackCountdownTimer;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackCountdownTimer;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackCountdownTimer;->mCountDownTimer:Landroid/os/CountDownTimer;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public set(Ljava/lang/Runnable;J)Z
    .locals 8

    .line 21
    iget-object v0, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackCountdownTimer;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_2

    .line 24
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 26
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 29
    :cond_0
    new-instance v0, Lcom/texa/carelib/utils/internal/TimeoutCallbackCountdownTimer$1;

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/texa/carelib/utils/internal/TimeoutCallbackCountdownTimer$1;-><init>(Lcom/texa/carelib/utils/internal/TimeoutCallbackCountdownTimer;JJLjava/lang/Runnable;)V

    .line 41
    invoke-virtual {v0}, Lcom/texa/carelib/utils/internal/TimeoutCallbackCountdownTimer$1;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackCountdownTimer;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 22
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Callback already set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
