.class public Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;
.super Lcom/texa/care/eco_driving/score/BaseScore;
.source "HighRpmEngineColdScore.java"


# static fields
.field private static final BASE_COUNT_MIN:D = 10.0

.field private static final DEFAULT_THRESHOLD:D = 2000.0

.field private static final EVENT_MUTE_INTERVAL:D = 30.0

.field private static final EVENT_NOTIFICATION_COUNT:D = 2.0

.field private static final RPM_IDLE_DEFAULT:D = 800.0

.field private static final RPM_IDLE_MIN:D = 300.0

.field private static final SIGNIFICANT_SAMPLE_COUNT:I = 0x3

.field public static TEMP_THRESHOLD_DEG_C:D = 50.0

.field private static final THRESHOLD_RATE_ON_IDLE:D = 3.0


# instance fields
.field private final snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "High RPM with engine cold score"

    const/16 v1, 0x64

    .line 49
    invoke-direct {p0, v0, v1}, Lcom/texa/care/eco_driving/score/BaseScore;-><init>(Ljava/lang/String;I)V

    .line 50
    new-instance v0, Lcom/texa/care/eco_driving/CountersSnapshotStack;

    const/16 v1, 0x32

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/care/eco_driving/CountersSnapshotStack;-><init>(ID)V

    iput-object v0, p0, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    return-void
.end method

.method constructor <init>(I)V
    .locals 3

    const-string v0, "High RPM with engine cold score"

    .line 54
    invoke-direct {p0, v0, p1}, Lcom/texa/care/eco_driving/score/BaseScore;-><init>(Ljava/lang/String;I)V

    .line 55
    new-instance p1, Lcom/texa/care/eco_driving/CountersSnapshotStack;

    const/16 v0, 0x32

    const-wide/high16 v1, 0x4034000000000000L    # 20.0

    invoke-direct {p1, v0, v1, v2}, Lcom/texa/care/eco_driving/CountersSnapshotStack;-><init>(ID)V

    iput-object p1, p0, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/texa/care/eco_driving/score/BaseScore;-><init>(Ljava/lang/String;I)V

    .line 45
    new-instance p1, Lcom/texa/care/eco_driving/CountersSnapshotStack;

    const/16 p2, 0x32

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    invoke-direct {p1, p2, v0, v1}, Lcom/texa/care/eco_driving/CountersSnapshotStack;-><init>(ID)V

    iput-object p1, p0, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    return-void
.end method

.method private calcRpmMin(Ljava/util/List;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;)D"
        }
    .end annotation

    .line 149
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/core/CounterInfo;

    .line 150
    invoke-virtual {v0}, Lcom/texa/carelib/core/CounterInfo;->getRange()Lcom/texa/carelib/core/Range;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x4072c00000000000L    # 300.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/texa/carelib/core/CounterInfo;->getValue()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    goto :goto_0

    :cond_1
    const-wide/high16 v1, 0x4089000000000000L    # 800.0

    :goto_0
    return-wide v1
.end method

.method private calcRpmThreshold(Ljava/util/List;)D
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;)D"
        }
    .end annotation

    .line 135
    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->calcRpmMin(Ljava/util/List;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double v0, v0, v2

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/carelib/core/CounterInfo;

    .line 138
    invoke-virtual {v2}, Lcom/texa/carelib/core/CounterInfo;->getRange()Lcom/texa/carelib/core/Range;

    move-result-object v3

    double-to-float v4, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/texa/carelib/core/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    invoke-virtual {v2}, Lcom/texa/carelib/core/CounterInfo;->getRange()Lcom/texa/carelib/core/Range;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x4089000000000000L    # 800.0

    :goto_0
    return-wide v0
.end method

.method private calcScore()I
    .locals 6

    .line 102
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->getCur()Lcom/texa/care/eco_driving/CountersSnapshot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v1, v0, Lcom/texa/care/eco_driving/CountersSnapshot;->count:Lcom/texa/care/eco_driving/TupleSupport;

    iget-wide v1, v1, Lcom/texa/care/eco_driving/TupleSupport;->nSamples:D

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    .line 105
    iget-object v0, v0, Lcom/texa/care/eco_driving/CountersSnapshot;->count:Lcom/texa/care/eco_driving/TupleSupport;

    iget-wide v0, v0, Lcom/texa/care/eco_driving/TupleSupport;->result:D

    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    const-wide/16 v4, 0x0

    .line 106
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 107
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 108
    iget v2, p0, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->MAX_SCORE:I

    int-to-double v2, v2

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    double-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private highRpmSamples(Ljava/util/List;)Lcom/texa/care/eco_driving/TupleSupport;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;)",
            "Lcom/texa/care/eco_driving/TupleSupport;"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->calcRpmThreshold(Ljava/util/List;)D

    move-result-wide v0

    .line 121
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 122
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 123
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/texa/carelib/core/CounterInfo;

    .line 124
    invoke-virtual {v6}, Lcom/texa/carelib/core/CounterInfo;->getValue()I

    move-result v7

    int-to-double v7, v7

    add-double/2addr v4, v7

    .line 125
    invoke-virtual {v6}, Lcom/texa/carelib/core/CounterInfo;->getRange()Lcom/texa/carelib/core/Range;

    move-result-object v7

    invoke-virtual {v7}, Lcom/texa/carelib/core/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    cmpl-double v9, v7, v0

    if-ltz v9, :cond_0

    .line 126
    invoke-virtual {v6}, Lcom/texa/carelib/core/CounterInfo;->getValue()I

    move-result v6

    int-to-double v6, v6

    add-double/2addr v2, v6

    goto :goto_0

    .line 130
    :cond_1
    new-instance p1, Lcom/texa/care/eco_driving/TupleSupport;

    invoke-direct {p1, v2, v3, v4, v5}, Lcom/texa/care/eco_driving/TupleSupport;-><init>(DD)V

    return-object p1
.end method

.method private shouldNotifyEvent(Lcom/texa/care/eco_driving/CountersSnapshotStack;)Z
    .locals 7

    .line 80
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->getCur()Lcom/texa/care/eco_driving/CountersSnapshot;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->getPrev()Lcom/texa/care/eco_driving/CountersSnapshot;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-nez v0, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    iget-object v2, v0, Lcom/texa/care/eco_driving/CountersSnapshot;->count:Lcom/texa/care/eco_driving/TupleSupport;

    iget-wide v2, v2, Lcom/texa/care/eco_driving/TupleSupport;->result:D

    iget-object p1, p1, Lcom/texa/care/eco_driving/CountersSnapshot;->count:Lcom/texa/care/eco_driving/TupleSupport;

    iget-wide v4, p1, Lcom/texa/care/eco_driving/TupleSupport;->result:D

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpg-double p1, v2, v4

    if-gez p1, :cond_1

    return v1

    .line 88
    :cond_1
    iget-object p1, p0, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->events:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->events:Ljava/util/List;

    iget-object v3, p0, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->events:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 91
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getTime()Ljava/util/Date;

    move-result-object p1

    iget-object v0, v0, Lcom/texa/care/eco_driving/CountersSnapshot;->time:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/texa/care/eco_driving/Utils;->dateDifference(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    cmpg-double p1, v3, v5

    if-gez p1, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v1
.end method


# virtual methods
.method public createScoreUpdateEvent()Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;
    .locals 1

    .line 175
    new-instance v0, Lcom/texa/care/eco_driving/events/scoreevents/HighRpmEngineColdScoreUpdateEvent;

    invoke-direct {v0, p0}, Lcom/texa/care/eco_driving/events/scoreevents/HighRpmEngineColdScoreUpdateEvent;-><init>(Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;)V

    return-object v0
.end method

.method getRpmThreshold()D
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->getCur()Lcom/texa/care/eco_driving/CountersSnapshot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->getCur()Lcom/texa/care/eco_driving/CountersSnapshot;

    move-result-object v0

    iget-object v0, v0, Lcom/texa/care/eco_driving/CountersSnapshot;->counters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->getCur()Lcom/texa/care/eco_driving/CountersSnapshot;

    move-result-object v0

    iget-object v0, v0, Lcom/texa/care/eco_driving/CountersSnapshot;->counters:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->calcRpmThreshold(Ljava/util/List;)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, 0x409f400000000000L    # 2000.0

    :goto_0
    return-wide v0
.end method

.method public getSnapshotStack()Lcom/texa/care/eco_driving/CountersSnapshotStack;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    return-object v0
.end method

.method public getType()Lcom/texa/care/eco_driving/score/ScoreType;
    .locals 1

    .line 170
    sget-object v0, Lcom/texa/care/eco_driving/score/ScoreType;->HIGH_RPM_ENGINE_COLD:Lcom/texa/care/eco_driving/score/ScoreType;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->reset()V

    .line 61
    invoke-super {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->reset()V

    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->getContextDate()Ljava/util/Date;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    new-instance v2, Lcom/texa/care/eco_driving/CountersSnapshot;

    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->highRpmSamples(Ljava/util/List;)Lcom/texa/care/eco_driving/TupleSupport;

    move-result-object v3

    invoke-direct {v2, p1, v0, v3}, Lcom/texa/care/eco_driving/CountersSnapshot;-><init>(Ljava/util/List;Ljava/util/Date;Lcom/texa/care/eco_driving/TupleSupport;)V

    invoke-virtual {v1, v2}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->update(Lcom/texa/care/eco_driving/CountersSnapshot;)V

    .line 68
    invoke-direct {p0}, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->calcScore()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->setScore(I)V

    .line 69
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->manageScoreUpdate()Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;

    .line 71
    iget-object p1, p0, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->shouldNotifyEvent(Lcom/texa/care/eco_driving/CountersSnapshotStack;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    new-instance p1, Lcom/texa/care/eco_driving/events/drivingevents/HighRpmEngineColdEvent;

    invoke-direct {p1, v0, p0}, Lcom/texa/care/eco_driving/events/drivingevents/HighRpmEngineColdEvent;-><init>(Ljava/util/Date;Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;)V

    .line 73
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->getLocationProvider()Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/care/eco_driving/events/drivingevents/HighRpmEngineColdEvent;->acquiredPosition(Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->addEvent(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;)Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;

    :cond_0
    return-void
.end method
