.class public Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;
.super Ljava/lang/Object;
.source "AvgCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private averageComputationByType(Ljava/util/List;)Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;",
            ">;)",
            "Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    if-eqz p1, :cond_2

    .line 73
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 74
    new-instance v5, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;

    invoke-direct {v5, p0, v1}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;-><init>(Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$1;)V

    const/4 v1, 0x0

    .line 75
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->getTypeId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v1}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->access$202(Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;I)I

    .line 76
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;

    .line 77
    invoke-static {v5}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->access$200(Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;)I

    move-result v6

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->getTypeId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 78
    new-instance p1, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;

    invoke-direct {p1, v0, v4, v2, v3}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;-><init>(Ljava/lang/Integer;Ljava/lang/Double;D)V

    return-object p1

    .line 80
    :cond_0
    invoke-virtual {v5, v1}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->addScoreByType(Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;)V

    goto :goto_0

    .line 83
    :cond_1
    new-instance v1, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;

    invoke-static {v5}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->access$200(Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->getAverageValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v5}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->access$100(Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;)D

    move-result-wide v7

    invoke-direct {v1, p1, v6, v7, v8}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;-><init>(Ljava/lang/Integer;Ljava/lang/Double;D)V

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_1

    .line 86
    :cond_3
    new-instance v1, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;-><init>(Ljava/lang/Integer;Ljava/lang/Double;D)V

    :goto_1
    return-object v1
.end method

.method private averagesComputation(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 47
    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;

    .line 49
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->getTypeId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 50
    new-instance v3, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;-><init>(Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$1;)V

    .line 51
    invoke-virtual {v3, v2}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->addScore(Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;)V

    .line 52
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->getTypeId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->getTypeId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;

    .line 55
    invoke-virtual {v3, v2}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->addScore(Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;)V

    .line 56
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->getTypeId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 60
    :goto_1
    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 61
    new-instance v2, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;

    invoke-virtual {v1, p1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    long-to-int v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 62
    invoke-virtual {v1, p1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;

    invoke-virtual {v4}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->getAverageValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, p1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;

    invoke-static {v5}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->access$100(Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;)D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;-><init>(Ljava/lang/Integer;Ljava/lang/Double;D)V

    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private normalizedAverageComputationByType(Ljava/util/List;)Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;",
            ">;)",
            "Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 139
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz p1, :cond_7

    .line 108
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, -0x1

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;

    .line 111
    invoke-virtual {v9}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->getDuration()Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    cmpl-float v10, v10, v7

    if-lez v10, :cond_0

    .line 112
    invoke-interface {p1, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 113
    invoke-virtual {v9}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->getDuration()Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    goto :goto_0

    :cond_1
    if-eq v8, v4, :cond_2

    .line 117
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;

    goto :goto_1

    :cond_2
    move-object v4, v0

    :goto_1
    const/4 v6, 0x0

    if-eqz v4, :cond_4

    .line 120
    invoke-interface {p1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 121
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;

    int-to-float v8, v8

    .line 122
    invoke-virtual {v9}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->getDuration()Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v8, v8

    goto :goto_2

    .line 124
    :cond_3
    invoke-virtual {v4}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->getDuration()Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->setDuration(Ljava/lang/Float;)V

    .line 125
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_4
    new-instance v4, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;

    invoke-direct {v4, p0, v0}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;-><init>(Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$1;)V

    .line 128
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->getTypeId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v4, v0}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->access$202(Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;I)I

    .line 129
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;

    .line 130
    invoke-static {v4}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->access$200(Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;)I

    move-result v6

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->getTypeId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_5

    .line 131
    new-instance p1, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;

    invoke-direct {p1, v5, v3, v1, v2}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;-><init>(Ljava/lang/Integer;Ljava/lang/Double;D)V

    return-object p1

    .line 133
    :cond_5
    invoke-virtual {v4, v0}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->addScoreByType(Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;)V

    goto :goto_3

    .line 136
    :cond_6
    new-instance v0, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;

    invoke-static {v4}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->access$200(Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->getAverageValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v4}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->access$100(Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;)D

    move-result-wide v7

    invoke-direct {v0, p1, v6, v7, v8}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;-><init>(Ljava/lang/Integer;Ljava/lang/Double;D)V

    :cond_7
    if-eqz v0, :cond_8

    goto :goto_4

    .line 139
    :cond_8
    new-instance v0, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;

    invoke-direct {v0, v5, v3, v1, v2}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;-><init>(Ljava/lang/Integer;Ljava/lang/Double;D)V

    :goto_4
    return-object v0
.end method


# virtual methods
.method public createList()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v7, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v1, 0x3e99999a    # 0.3f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const v1, 0x4270cccd    # 60.2f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-wide/high16 v1, 0x402e000000000000L    # 15.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, ""

    move-object v1, v7

    move-object v2, v9

    invoke-direct/range {v1 .. v6}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;-><init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Double;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;

    const v2, 0x400ccccd    # 2.2f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const v2, 0x4337b333    # 183.7f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const-wide/high16 v2, 0x4056000000000000L    # 88.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    const-string v13, ""

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;-><init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Double;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getAverage(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;->averagesComputation(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAverageByType(Ljava/util/List;)Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;",
            ">;)",
            "Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;->averageComputationByType(Ljava/util/List;)Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;

    move-result-object p1

    return-object p1
.end method

.method public getNormalizedAverageByType(Ljava/util/List;)Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;",
            ">;)",
            "Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;->normalizedAverageComputationByType(Ljava/util/List;)Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;

    move-result-object p1

    return-object p1
.end method
