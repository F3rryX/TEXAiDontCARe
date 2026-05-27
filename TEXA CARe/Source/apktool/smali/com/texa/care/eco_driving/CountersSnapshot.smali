.class public Lcom/texa/care/eco_driving/CountersSnapshot;
.super Ljava/lang/Object;
.source "CountersSnapshot.java"


# instance fields
.field public count:Lcom/texa/care/eco_driving/TupleSupport;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public counters:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;"
        }
    .end annotation
.end field

.field public time:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Date;Lcom/texa/care/eco_driving/TupleSupport;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;",
            "Ljava/util/Date;",
            "Lcom/texa/care/eco_driving/TupleSupport;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/texa/care/eco_driving/TupleSupport;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/texa/care/eco_driving/TupleSupport;-><init>(DD)V

    iput-object v0, p0, Lcom/texa/care/eco_driving/CountersSnapshot;->count:Lcom/texa/care/eco_driving/TupleSupport;

    .line 23
    iput-object p1, p0, Lcom/texa/care/eco_driving/CountersSnapshot;->counters:Ljava/util/List;

    .line 24
    iput-object p2, p0, Lcom/texa/care/eco_driving/CountersSnapshot;->time:Ljava/util/Date;

    .line 25
    iput-object p3, p0, Lcom/texa/care/eco_driving/CountersSnapshot;->count:Lcom/texa/care/eco_driving/TupleSupport;

    return-void
.end method
