.class public Lcom/texa/care/eco_driving/AccCountersSnapshot;
.super Lcom/texa/care/eco_driving/CountersSnapshot;
.source "AccCountersSnapshot.java"


# instance fields
.field final speed:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Date;Lcom/texa/care/eco_driving/TupleSupport;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;",
            "Ljava/util/Date;",
            "Lcom/texa/care/eco_driving/TupleSupport;",
            "D)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/care/eco_driving/CountersSnapshot;-><init>(Ljava/util/List;Ljava/util/Date;Lcom/texa/care/eco_driving/TupleSupport;)V

    .line 23
    iput-wide p4, p0, Lcom/texa/care/eco_driving/AccCountersSnapshot;->speed:D

    return-void
.end method


# virtual methods
.method public getSpeed()D
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/texa/care/eco_driving/AccCountersSnapshot;->speed:D

    return-wide v0
.end method
