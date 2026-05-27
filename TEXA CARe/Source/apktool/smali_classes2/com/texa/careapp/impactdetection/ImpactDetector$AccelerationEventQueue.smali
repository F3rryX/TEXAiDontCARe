.class Lcom/texa/careapp/impactdetection/ImpactDetector$AccelerationEventQueue;
.super Ljava/util/LinkedList;
.source "ImpactDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/impactdetection/ImpactDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccelerationEventQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Lcom/texa/careapp/impactdetection/AccelerationEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final mQueueTimePeriodInMilliseconds:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1314
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 1315
    iput-wide p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector$AccelerationEventQueue;->mQueueTimePeriodInMilliseconds:J

    return-void
.end method


# virtual methods
.method public add(Lcom/texa/careapp/impactdetection/AccelerationEvent;)Z
    .locals 6

    .line 1320
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 1323
    :goto_0
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector$AccelerationEventQueue;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/impactdetection/AccelerationEvent;

    .line 1324
    invoke-virtual {p1}, Lcom/texa/careapp/impactdetection/AccelerationEvent;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/texa/careapp/impactdetection/AccelerationEvent;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/texa/careapp/impactdetection/ImpactDetector$AccelerationEventQueue;->mQueueTimePeriodInMilliseconds:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 1325
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector$AccelerationEventQueue;->pollFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 1306
    check-cast p1, Lcom/texa/careapp/impactdetection/AccelerationEvent;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/impactdetection/ImpactDetector$AccelerationEventQueue;->add(Lcom/texa/careapp/impactdetection/AccelerationEvent;)Z

    move-result p1

    return p1
.end method
