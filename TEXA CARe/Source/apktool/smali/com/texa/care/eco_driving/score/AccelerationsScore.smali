.class public Lcom/texa/care/eco_driving/score/AccelerationsScore;
.super Lcom/texa/care/eco_driving/score/BaseScore;
.source "AccelerationsScore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;
    }
.end annotation


# static fields
.field public static final ACC_THRESHOLD_G:D = 0.3

.field private static final ACC_THRESHOLD_MS2:D = 0.6

.field private static final BASE_COUNT_MIN:D = 10.0

.field private static final EVENT_MUTE_INTERVAL:D = 30.0

.field private static final SPEED_INVALID:D = -1.0

.field private static final settingsByProfile:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;",
            "Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lastEventsTimeStamp:Ljava/util/Date;

.field private final snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

.field private speed:D


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->settingsByProfile:Ljava/util/HashMap;

    .line 63
    sget-object v1, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->UNDEFINED:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    new-instance v2, Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;

    invoke-direct {v2}, Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v1, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->CHAUFFEUR:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    new-instance v2, Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;

    const-wide v3, 0x3ff4cccccccccccdL    # 1.3

    const-wide v5, 0x4015333333333333L    # 5.3

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;-><init>(DD)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v1, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->EXPERIENCED:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    new-instance v2, Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;

    const-wide v3, 0x3ff199999999999aL    # 1.1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;-><init>(DD)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->NEWBIE:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    new-instance v2, Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;-><init>(DD)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v0, "accelerations (progressive) score"

    const/16 v1, 0x64

    .line 92
    invoke-direct {p0, v0, v1}, Lcom/texa/care/eco_driving/score/BaseScore;-><init>(Ljava/lang/String;I)V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 74
    iput-wide v0, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->speed:D

    .line 93
    new-instance v2, Lcom/texa/care/eco_driving/CountersSnapshotStack;

    const/16 v3, 0x32

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    invoke-direct {v2, v3, v4, v5}, Lcom/texa/care/eco_driving/CountersSnapshotStack;-><init>(ID)V

    iput-object v2, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    .line 94
    iput-wide v0, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->speed:D

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->lastEventsTimeStamp:Ljava/util/Date;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 4

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/texa/care/eco_driving/score/BaseScore;-><init>(Ljava/lang/String;I)V

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    .line 74
    iput-wide p1, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->speed:D

    .line 100
    new-instance v0, Lcom/texa/care/eco_driving/CountersSnapshotStack;

    const/16 v1, 0x32

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/care/eco_driving/CountersSnapshotStack;-><init>(ID)V

    iput-object v0, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    .line 101
    iput-wide p1, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->speed:D

    const/4 p1, 0x0

    .line 102
    iput-object p1, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->lastEventsTimeStamp:Ljava/util/Date;

    return-void
.end method

.method private calcCount(Ljava/util/List;)Lcom/texa/care/eco_driving/TupleSupport;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;)",
            "Lcom/texa/care/eco_driving/TupleSupport;"
        }
    .end annotation

    .line 142
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/carelib/core/CounterInfo;

    .line 143
    invoke-virtual {v4}, Lcom/texa/carelib/core/CounterInfo;->getValue()I

    move-result v5

    int-to-double v5, v5

    .line 144
    invoke-virtual {v4}, Lcom/texa/carelib/core/CounterInfo;->getRange()Lcom/texa/carelib/core/Range;

    move-result-object v4

    invoke-virtual {v4}, Lcom/texa/carelib/core/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v7, v4

    const-wide v9, 0x3fe3333333333333L    # 0.6

    cmpl-double v4, v7, v9

    if-ltz v4, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/texa/care/eco_driving/score/AccelerationsScore;->getSettings()Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;

    move-result-object v4

    invoke-static {v4}, Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;->access$000(Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;)D

    move-result-wide v9

    mul-double v9, v9, v7

    mul-double v9, v9, v5

    add-double/2addr v0, v9

    :cond_0
    add-double/2addr v2, v5

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 150
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, p1, v4

    const-string v4, "ACCELERATION SCORE COUNT --> %s"

    invoke-static {v4, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    new-instance p1, Lcom/texa/care/eco_driving/TupleSupport;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/texa/care/eco_driving/TupleSupport;-><init>(DD)V

    return-object p1
.end method

.method private calcScore()I
    .locals 8

    .line 156
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->getCur()Lcom/texa/care/eco_driving/CountersSnapshot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v1, v0, Lcom/texa/care/eco_driving/CountersSnapshot;->count:Lcom/texa/care/eco_driving/TupleSupport;

    iget-wide v1, v1, Lcom/texa/care/eco_driving/TupleSupport;->nSamples:D

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    .line 159
    iget-object v1, v0, Lcom/texa/care/eco_driving/CountersSnapshot;->count:Lcom/texa/care/eco_driving/TupleSupport;

    iget-wide v1, v1, Lcom/texa/care/eco_driving/TupleSupport;->result:D

    .line 160
    iget-object v0, v0, Lcom/texa/care/eco_driving/CountersSnapshot;->count:Lcom/texa/care/eco_driving/TupleSupport;

    iget-wide v3, v0, Lcom/texa/care/eco_driving/TupleSupport;->nSamples:D

    const-wide v5, 0x40ac200000000000L    # 3600.0

    mul-double v1, v1, v5

    const-wide v5, 0x4093500000000000L    # 1236.0

    mul-double v3, v3, v5

    div-double/2addr v1, v3

    .line 163
    iget v0, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->MAX_SCORE:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->MAX_SCORE:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v1

    mul-double v4, v4, v6

    double-to-int v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private countForEventNotification(D)D
    .locals 5

    .line 170
    invoke-direct {p0}, Lcom/texa/care/eco_driving/score/AccelerationsScore;->getSettings()Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;->access$100(Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;)D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v4, p1, v2

    if-eqz v4, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/texa/care/eco_driving/score/AccelerationsScore;->getSettings()Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;->access$100(Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;)D

    move-result-wide v0

    const-wide v2, 0x3ffccccccccccccdL    # 1.8

    add-double/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->log10(D)D

    move-result-wide p1

    sub-double/2addr v0, p1

    .line 173
    invoke-direct {p0}, Lcom/texa/care/eco_driving/score/AccelerationsScore;->getSettings()Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;->access$100(Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;)D

    move-result-wide p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-double/2addr p1, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method private eventCounts(Lcom/texa/care/eco_driving/CountersSnapshotStack;)Landroidx/core/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/care/eco_driving/CountersSnapshotStack;",
            ")",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 180
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->getCur()Lcom/texa/care/eco_driving/CountersSnapshot;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->getPrev()Lcom/texa/care/eco_driving/CountersSnapshot;

    move-result-object p1

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    iget-object v1, v0, Lcom/texa/care/eco_driving/CountersSnapshot;->count:Lcom/texa/care/eco_driving/TupleSupport;

    iget-wide v1, v1, Lcom/texa/care/eco_driving/TupleSupport;->result:D

    iget-object v3, p1, Lcom/texa/care/eco_driving/CountersSnapshot;->count:Lcom/texa/care/eco_driving/TupleSupport;

    iget-wide v3, v3, Lcom/texa/care/eco_driving/TupleSupport;->result:D

    sub-double/2addr v1, v3

    .line 186
    iget-object v0, v0, Lcom/texa/care/eco_driving/CountersSnapshot;->count:Lcom/texa/care/eco_driving/TupleSupport;

    iget-wide v3, v0, Lcom/texa/care/eco_driving/TupleSupport;->nSamples:D

    iget-object v0, p1, Lcom/texa/care/eco_driving/CountersSnapshot;->count:Lcom/texa/care/eco_driving/TupleSupport;

    iget-wide v5, v0, Lcom/texa/care/eco_driving/TupleSupport;->nSamples:D

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    mul-double v1, v1, v5

    div-double/2addr v1, v3

    .line 189
    check-cast p1, Lcom/texa/care/eco_driving/AccCountersSnapshot;

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/AccCountersSnapshot;->getSpeed()D

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/texa/care/eco_driving/score/AccelerationsScore;->countForEventNotification(D)D

    move-result-wide v3

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 191
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, p1, v0

    const/4 v0, 0x1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, p1, v0

    const-string v0, "ACCELERATION SCORE COUNT NORM --> %s / %s"

    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    new-instance p1, Landroidx/core/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSettings()Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/AccelerationsScore;->getScoreConfigurationProvider()Lcom/texa/care/eco_driving/score/ScoreConfigurationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->settingsByProfile:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/AccelerationsScore;->getScoreConfigurationProvider()Lcom/texa/care/eco_driving/score/ScoreConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/care/eco_driving/score/ScoreConfigurationProvider;->getDrivingProfile()Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;

    return-object v0

    .line 87
    :cond_0
    sget-object v0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->settingsByProfile:Ljava/util/HashMap;

    sget-object v1, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->UNDEFINED:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;

    return-object v0
.end method

.method private shouldNotifyEvent(Lcom/texa/care/eco_driving/CountersSnapshotStack;)Z
    .locals 7

    .line 199
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->getCur()Lcom/texa/care/eco_driving/CountersSnapshot;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 202
    :cond_0
    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/score/AccelerationsScore;->eventCounts(Lcom/texa/care/eco_driving/CountersSnapshotStack;)Landroidx/core/util/Pair;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 204
    iget-object v3, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double p1, v3, v5

    if-ltz p1, :cond_2

    .line 205
    iget-object p1, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->lastEventsTimeStamp:Ljava/util/Date;

    if-eqz p1, :cond_1

    .line 206
    iget-object v0, v0, Lcom/texa/care/eco_driving/CountersSnapshot;->time:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/texa/care/eco_driving/Utils;->dateDifference(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    cmpl-double p1, v3, v5

    if-ltz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public createScoreUpdateEvent()Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;
    .locals 1

    .line 40
    new-instance v0, Lcom/texa/care/eco_driving/events/scoreevents/AccelerationsScoreUpdateEvent;

    invoke-direct {v0, p0}, Lcom/texa/care/eco_driving/events/scoreevents/AccelerationsScoreUpdateEvent;-><init>(Lcom/texa/care/eco_driving/score/AccelerationsScore;)V

    return-object v0
.end method

.method public getSnapshotStack()Lcom/texa/care/eco_driving/CountersSnapshotStack;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    return-object v0
.end method

.method public getType()Lcom/texa/care/eco_driving/score/ScoreType;
    .locals 1

    .line 35
    sget-object v0, Lcom/texa/care/eco_driving/score/ScoreType;->ACCELERATIONS:Lcom/texa/care/eco_driving/score/ScoreType;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->reset()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 108
    iput-wide v0, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->speed:D

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->lastEventsTimeStamp:Ljava/util/Date;

    .line 110
    invoke-super {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->reset()V

    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;)V"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/AccelerationsScore;->getContextDate()Ljava/util/Date;

    move-result-object v6

    .line 116
    new-instance v7, Lcom/texa/care/eco_driving/AccCountersSnapshot;

    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/score/AccelerationsScore;->calcCount(Ljava/util/List;)Lcom/texa/care/eco_driving/TupleSupport;

    move-result-object v3

    iget-wide v4, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->speed:D

    move-object v0, v7

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/texa/care/eco_driving/AccCountersSnapshot;-><init>(Ljava/util/List;Ljava/util/Date;Lcom/texa/care/eco_driving/TupleSupport;D)V

    .line 117
    iget-object p1, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    invoke-virtual {p1, v7}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->update(Lcom/texa/care/eco_driving/CountersSnapshot;)V

    .line 119
    invoke-direct {p0}, Lcom/texa/care/eco_driving/score/AccelerationsScore;->calcScore()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/texa/care/eco_driving/score/AccelerationsScore;->setScore(I)V

    .line 120
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/AccelerationsScore;->manageScoreUpdate()Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;

    .line 121
    iget-object p1, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/score/AccelerationsScore;->shouldNotifyEvent(Lcom/texa/care/eco_driving/CountersSnapshotStack;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 122
    iput-object v6, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->lastEventsTimeStamp:Ljava/util/Date;

    .line 123
    new-instance p1, Lcom/texa/care/eco_driving/events/drivingevents/AccelerationsEvent;

    invoke-direct {p1, v6, p0}, Lcom/texa/care/eco_driving/events/drivingevents/AccelerationsEvent;-><init>(Ljava/util/Date;Lcom/texa/care/eco_driving/score/AccelerationsScore;)V

    .line 124
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    invoke-direct {p0, v0}, Lcom/texa/care/eco_driving/score/AccelerationsScore;->eventCounts(Lcom/texa/care/eco_driving/CountersSnapshotStack;)Landroidx/core/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    const-string v2, "count"

    invoke-virtual {p1, v2, v1}, Lcom/texa/care/eco_driving/events/drivingevents/AccelerationsEvent;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    const-string v1, "count_for_event"

    invoke-virtual {p1, v1, v0}, Lcom/texa/care/eco_driving/events/drivingevents/AccelerationsEvent;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/AccelerationsScore;->getLocationProvider()Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/care/eco_driving/events/drivingevents/AccelerationsEvent;->acquiredPosition(Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;)V

    .line 130
    invoke-virtual {p0, p1}, Lcom/texa/care/eco_driving/score/AccelerationsScore;->addEvent(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;)Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;

    :cond_1
    return-void
.end method

.method public updateSpeed(D)V
    .locals 0

    .line 135
    iput-wide p1, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore;->speed:D

    return-void
.end method
