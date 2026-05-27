.class public Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;
.super Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;
.source "CountdownTimerImpl.java"


# static fields
.field protected static COUNT_INITIAL_VALUE:I = 0xf

.field private static final INTERVAL:I = 0x3e8

.field private static final MILLIS_IN_FUTURE:I

.field private static final TAG:Ljava/lang/String; = "CountdownTimerImpl"


# instance fields
.field private mCount:I

.field private mCountdownFinishedEvent:Lcom/texa/careapp/app/sos/countdown/CountdownFinishedEvent;

.field private mCountdownUpdateEvent:Lcom/texa/careapp/app/sos/countdown/CountdownUpdateEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    mul-int/lit16 v0, v0, 0x3e8

    .line 16
    sput v0, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->MILLIS_IN_FUTURE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 24
    sget v0, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->MILLIS_IN_FUTURE:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;-><init>(JJ)V

    .line 19
    sget v0, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->COUNT_INITIAL_VALUE:I

    iput v0, p0, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->mCount:I

    .line 20
    new-instance v0, Lcom/texa/careapp/app/sos/countdown/CountdownUpdateEvent;

    invoke-direct {v0}, Lcom/texa/careapp/app/sos/countdown/CountdownUpdateEvent;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->mCountdownUpdateEvent:Lcom/texa/careapp/app/sos/countdown/CountdownUpdateEvent;

    .line 21
    new-instance v0, Lcom/texa/careapp/app/sos/countdown/CountdownFinishedEvent;

    invoke-direct {v0}, Lcom/texa/careapp/app/sos/countdown/CountdownFinishedEvent;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->mCountdownFinishedEvent:Lcom/texa/careapp/app/sos/countdown/CountdownFinishedEvent;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    .line 28
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;-><init>(JJ)V

    .line 19
    sget v0, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->COUNT_INITIAL_VALUE:I

    iput v0, p0, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->mCount:I

    .line 20
    new-instance v0, Lcom/texa/careapp/app/sos/countdown/CountdownUpdateEvent;

    invoke-direct {v0}, Lcom/texa/careapp/app/sos/countdown/CountdownUpdateEvent;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->mCountdownUpdateEvent:Lcom/texa/careapp/app/sos/countdown/CountdownUpdateEvent;

    .line 21
    new-instance v0, Lcom/texa/careapp/app/sos/countdown/CountdownFinishedEvent;

    invoke-direct {v0}, Lcom/texa/careapp/app/sos/countdown/CountdownFinishedEvent;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->mCountdownFinishedEvent:Lcom/texa/careapp/app/sos/countdown/CountdownFinishedEvent;

    .line 29
    sput p1, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->COUNT_INITIAL_VALUE:I

    return-void
.end method


# virtual methods
.method public bridge synthetic cancel()V
    .locals 0

    .line 12
    invoke-super {p0}, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->cancel()V

    return-void
.end method

.method public onFinish()V
    .locals 2

    .line 60
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->mCountdownFinishedEvent:Lcom/texa/careapp/app/sos/countdown/CountdownFinishedEvent;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->postUpdate()Lcom/texa/careapp/app/sos/countdown/CountdownUpdateEvent;

    return-void
.end method

.method protected postUpdate()Lcom/texa/careapp/app/sos/countdown/CountdownUpdateEvent;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->mCountdownUpdateEvent:Lcom/texa/careapp/app/sos/countdown/CountdownUpdateEvent;

    iget v1, p0, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->mCount:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->mCount:I

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/sos/countdown/CountdownUpdateEvent;->setCount(I)V

    .line 44
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->mCountdownUpdateEvent:Lcom/texa/careapp/app/sos/countdown/CountdownUpdateEvent;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->mCountdownUpdateEvent:Lcom/texa/careapp/app/sos/countdown/CountdownUpdateEvent;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 64
    sget v0, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->COUNT_INITIAL_VALUE:I

    iput v0, p0, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->mCount:I

    return-void
.end method

.method public bridge synthetic start()Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->start()Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized start()Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;
    .locals 1

    monitor-enter p0

    .line 35
    :try_start_0
    invoke-super {p0}, Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;->start()Lcom/texa/careapp/app/sos/countdown/AbstractCountdownTimer;

    .line 37
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->postUpdate()Lcom/texa/careapp/app/sos/countdown/CountdownUpdateEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
