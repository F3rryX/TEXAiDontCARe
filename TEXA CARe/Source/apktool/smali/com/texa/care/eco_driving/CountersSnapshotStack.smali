.class public Lcom/texa/care/eco_driving/CountersSnapshotStack;
.super Ljava/lang/Object;
.source "CountersSnapshotStack.java"


# instance fields
.field private final COUNT_MAX:I

.field private final INTERVAL_MAX:D

.field private final INTERVAL_MIN:D

.field private collection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/care/eco_driving/CountersSnapshot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ID)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/care/eco_driving/CountersSnapshotStack;->collection:Ljava/util/List;

    .line 46
    iput p1, p0, Lcom/texa/care/eco_driving/CountersSnapshotStack;->COUNT_MAX:I

    .line 47
    iput-wide p2, p0, Lcom/texa/care/eco_driving/CountersSnapshotStack;->INTERVAL_MIN:D

    const-wide/high16 p1, 0x404e000000000000L    # 60.0

    .line 48
    iput-wide p1, p0, Lcom/texa/care/eco_driving/CountersSnapshotStack;->INTERVAL_MAX:D

    return-void
.end method


# virtual methods
.method public getCur()Lcom/texa/care/eco_driving/CountersSnapshot;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/texa/care/eco_driving/CountersSnapshotStack;->collection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/texa/care/eco_driving/CountersSnapshotStack;->collection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/CountersSnapshot;

    return-object v0
.end method

.method public getPrev()Lcom/texa/care/eco_driving/CountersSnapshot;
    .locals 9

    .line 30
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->getCur()Lcom/texa/care/eco_driving/CountersSnapshot;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/texa/care/eco_driving/CountersSnapshotStack;->collection:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 34
    :cond_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 35
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/care/eco_driving/CountersSnapshot;

    .line 36
    iget-object v4, v3, Lcom/texa/care/eco_driving/CountersSnapshot;->time:Ljava/util/Date;

    iget-object v5, v0, Lcom/texa/care/eco_driving/CountersSnapshot;->time:Ljava/util/Date;

    invoke-static {v4, v5}, Lcom/texa/care/eco_driving/Utils;->dateDifference(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v4

    long-to-double v4, v4

    .line 37
    iget-wide v6, p0, Lcom/texa/care/eco_driving/CountersSnapshotStack;->INTERVAL_MIN:D

    cmpl-double v8, v4, v6

    if-ltz v8, :cond_1

    iget-wide v6, p0, Lcom/texa/care/eco_driving/CountersSnapshotStack;->INTERVAL_MAX:D

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_1

    return-object v3

    :cond_2
    return-object v1
.end method

.method public reset()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/texa/care/eco_driving/CountersSnapshotStack;->collection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public update(Lcom/texa/care/eco_driving/CountersSnapshot;)V
    .locals 5

    .line 53
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->getCur()Lcom/texa/care/eco_driving/CountersSnapshot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/texa/care/eco_driving/CountersSnapshotStack;->collection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/texa/care/eco_driving/CountersSnapshot;->time:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->getCur()Lcom/texa/care/eco_driving/CountersSnapshot;

    move-result-object v2

    iget-object v2, v2, Lcom/texa/care/eco_driving/CountersSnapshot;->time:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 55
    iget-object v0, p0, Lcom/texa/care/eco_driving/CountersSnapshotStack;->collection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/texa/care/eco_driving/CountersSnapshotStack;->collection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/texa/care/eco_driving/CountersSnapshotStack;->collection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/texa/care/eco_driving/CountersSnapshotStack;->collection:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/texa/care/eco_driving/CountersSnapshotStack;->COUNT_MAX:I

    if-le p1, v0, :cond_2

    .line 60
    iget-object p1, p0, Lcom/texa/care/eco_driving/CountersSnapshotStack;->collection:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    return-void
.end method
