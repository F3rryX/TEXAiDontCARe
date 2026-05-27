.class abstract Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;
.super Ljava/lang/Object;
.source "AbstractCountdownTimer.java"


# static fields
.field private static final MSG:I = 0x1


# instance fields
.field private final mCountdownInterval:J

.field private mHandler:Landroid/os/Handler;

.field private final mMillisInFuture:J

.field private mNextTime:J

.field private mStopTimeInFuture:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer$1;-><init>(Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;)V

    iput-object v0, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->mHandler:Landroid/os/Handler;

    .line 63
    iput-wide p1, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->mMillisInFuture:J

    .line 64
    iput-wide p3, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->mCountdownInterval:J

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;)J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->mStopTimeInFuture:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;)J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->mNextTime:J

    return-wide v0
.end method

.method static synthetic access$114(Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;J)J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->mNextTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->mNextTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;)J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->mCountdownInterval:J

    return-wide v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public abstract onFinish()V
.end method

.method public abstract onTick(J)V
.end method

.method public declared-synchronized start()Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;
    .locals 5

    monitor-enter p0

    .line 78
    :try_start_0
    iget-wide v0, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->mMillisInFuture:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->onFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-object p0

    .line 82
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->mNextTime:J

    .line 83
    iget-wide v2, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->mMillisInFuture:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->mStopTimeInFuture:J

    .line 85
    iget-wide v2, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->mCountdownInterval:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->mNextTime:J

    .line 86
    iget-object v0, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->mNextTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
