.class public Lcom/texa/care/eco_driving/score/HighSpeedScore;
.super Lcom/texa/care/eco_driving/score/BaseScore;
.source "HighSpeedScore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;
    }
.end annotation


# static fields
.field private static final BASE_COUNT_MIN:I = 0x1e

.field private static final EVENT_MUTE_INTERVAL:J = 0x12cL

.field private static final SPEED_BASE_KPH:D = 100.0

.field private static final settingsByProfile:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;",
            "Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private shouldIgnoreEventMute:Z

.field private final snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/texa/care/eco_driving/score/HighSpeedScore;->settingsByProfile:Ljava/util/HashMap;

    .line 57
    sget-object v1, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->UNDEFINED:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    new-instance v2, Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;

    invoke-direct {v2}, Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->CHAUFFEUR:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    new-instance v2, Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;

    invoke-direct {v2}, Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->EXPERIENCED:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    new-instance v2, Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;

    const-wide v3, 0x405b800000000000L    # 110.0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;-><init>(DD)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->NEWBIE:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    new-instance v2, Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;-><init>(DD)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "Speed limit score"

    const/16 v1, 0x64

    .line 75
    invoke-direct {p0, v0, v1}, Lcom/texa/care/eco_driving/score/BaseScore;-><init>(Ljava/lang/String;I)V

    .line 77
    new-instance v0, Lcom/texa/care/eco_driving/CountersSnapshotStack;

    const/16 v1, 0x32

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/care/eco_driving/CountersSnapshotStack;-><init>(ID)V

    iput-object v0, p0, Lcom/texa/care/eco_driving/score/HighSpeedScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    return-void
.end method

.method private calcCount(Ljava/util/List;)Lcom/texa/care/eco_driving/TupleSupport;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;)",
            "Lcom/texa/care/eco_driving/TupleSupport;"
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Lcom/texa/care/eco_driving/score/HighSpeedScore;->getSettings()Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;->access$100(Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;)D

    move-result-wide v0

    .line 154
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/texa/carelib/core/CounterInfo;

    .line 155
    invoke-virtual {v6}, Lcom/texa/carelib/core/CounterInfo;->getRange()Lcom/texa/carelib/core/Range;

    move-result-object v7

    invoke-virtual {v7}, Lcom/texa/carelib/core/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    .line 156
    invoke-virtual {v6}, Lcom/texa/carelib/core/CounterInfo;->getValue()I

    move-result v6

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    cmpl-double v11, v7, v9

    if-ltz v11, :cond_1

    int-to-double v9, v6

    add-double/2addr v4, v9

    :cond_1
    cmpl-double v9, v7, v0

    if-ltz v9, :cond_0

    sub-double/2addr v7, v0

    .line 162
    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v8, v7

    mul-int v6, v6, v8

    int-to-double v6, v6

    add-double/2addr v2, v6

    goto :goto_0

    .line 164
    :cond_2
    new-instance p1, Lcom/texa/care/eco_driving/TupleSupport;

    invoke-direct {p1, v2, v3, v4, v5}, Lcom/texa/care/eco_driving/TupleSupport;-><init>(DD)V

    return-object p1
.end method

.method private calcScore()I
    .locals 7

    .line 135
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/HighSpeedScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->getCur()Lcom/texa/care/eco_driving/CountersSnapshot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v1, v0, Lcom/texa/care/eco_driving/CountersSnapshot;->count:Lcom/texa/care/eco_driving/TupleSupport;

    iget-wide v1, v1, Lcom/texa/care/eco_driving/TupleSupport;->nSamples:D

    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    .line 139
    iget-object v1, v0, Lcom/texa/care/eco_driving/CountersSnapshot;->count:Lcom/texa/care/eco_driving/TupleSupport;

    iget-wide v1, v1, Lcom/texa/care/eco_driving/TupleSupport;->result:D

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    div-double/2addr v1, v3

    iget-object v0, v0, Lcom/texa/care/eco_driving/CountersSnapshot;->count:Lcom/texa/care/eco_driving/TupleSupport;

    iget-wide v3, v0, Lcom/texa/care/eco_driving/TupleSupport;->nSamples:D

    div-double/2addr v1, v3

    .line 140
    iget v0, p0, Lcom/texa/care/eco_driving/score/HighSpeedScore;->MAX_SCORE:I

    int-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v1

    mul-double v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    .line 141
    iget v0, p0, Lcom/texa/care/eco_driving/score/HighSpeedScore;->MAX_SCORE:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private countDelta()D
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/HighSpeedScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->getCur()Lcom/texa/care/eco_driving/CountersSnapshot;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/texa/care/eco_driving/score/HighSpeedScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->getPrev()Lcom/texa/care/eco_driving/CountersSnapshot;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, v0, Lcom/texa/care/eco_driving/CountersSnapshot;->count:Lcom/texa/care/eco_driving/TupleSupport;

    iget-wide v2, v0, Lcom/texa/care/eco_driving/TupleSupport;->result:D

    iget-object v0, v1, Lcom/texa/care/eco_driving/CountersSnapshot;->count:Lcom/texa/care/eco_driving/TupleSupport;

    iget-wide v0, v0, Lcom/texa/care/eco_driving/TupleSupport;->result:D

    sub-double/2addr v2, v0

    return-wide v2

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getSettings()Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/HighSpeedScore;->getScoreConfigurationProvider()Lcom/texa/care/eco_driving/score/ScoreConfigurationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/texa/care/eco_driving/score/HighSpeedScore;->settingsByProfile:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/HighSpeedScore;->getScoreConfigurationProvider()Lcom/texa/care/eco_driving/score/ScoreConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/care/eco_driving/score/ScoreConfigurationProvider;->getDrivingProfile()Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;

    return-object v0

    .line 85
    :cond_0
    sget-object v0, Lcom/texa/care/eco_driving/score/HighSpeedScore;->settingsByProfile:Ljava/util/HashMap;

    sget-object v1, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->UNDEFINED:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;

    return-object v0
.end method

.method private shouldNotifyEvent(Lcom/texa/care/eco_driving/CountersSnapshotStack;)Z
    .locals 7

    .line 117
    invoke-direct {p0}, Lcom/texa/care/eco_driving/score/HighSpeedScore;->countDelta()D

    move-result-wide v0

    invoke-direct {p0}, Lcom/texa/care/eco_driving/score/HighSpeedScore;->getSettings()Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;->access$000(Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;)D

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpl-double v6, v0, v2

    if-ltz v6, :cond_1

    .line 118
    iget-boolean v0, p0, Lcom/texa/care/eco_driving/score/HighSpeedScore;->shouldIgnoreEventMute:Z

    if-eqz v0, :cond_0

    .line 119
    iput-boolean v5, p0, Lcom/texa/care/eco_driving/score/HighSpeedScore;->shouldIgnoreEventMute:Z

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->getCur()Lcom/texa/care/eco_driving/CountersSnapshot;

    move-result-object p1

    .line 123
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/HighSpeedScore;->events:Ljava/util/List;

    invoke-static {v0}, Lcom/texa/care/eco_driving/Utils;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 125
    iget-object p1, p1, Lcom/texa/care/eco_driving/CountersSnapshot;->time:Ljava/util/Date;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/care/eco_driving/Utils;->dateDifference(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return v4
.end method


# virtual methods
.method public createScoreUpdateEvent()Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;
    .locals 1

    .line 36
    new-instance v0, Lcom/texa/care/eco_driving/events/scoreevents/HighSpeedScoreUpdateEvent;

    invoke-direct {v0, p0}, Lcom/texa/care/eco_driving/events/scoreevents/HighSpeedScoreUpdateEvent;-><init>(Lcom/texa/care/eco_driving/score/HighSpeedScore;)V

    return-object v0
.end method

.method public getSnapshotStack()Lcom/texa/care/eco_driving/CountersSnapshotStack;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/HighSpeedScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    return-object v0
.end method

.method public getType()Lcom/texa/care/eco_driving/score/ScoreType;
    .locals 1

    .line 31
    sget-object v0, Lcom/texa/care/eco_driving/score/ScoreType;->HIGH_SPEED:Lcom/texa/care/eco_driving/score/ScoreType;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/HighSpeedScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->reset()V

    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lcom/texa/care/eco_driving/score/HighSpeedScore;->shouldIgnoreEventMute:Z

    .line 171
    invoke-super {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->reset()V

    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/HighSpeedScore;->getContextDate()Ljava/util/Date;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/texa/care/eco_driving/score/HighSpeedScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    new-instance v2, Lcom/texa/care/eco_driving/CountersSnapshot;

    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/score/HighSpeedScore;->calcCount(Ljava/util/List;)Lcom/texa/care/eco_driving/TupleSupport;

    move-result-object v3

    invoke-direct {v2, p1, v0, v3}, Lcom/texa/care/eco_driving/CountersSnapshot;-><init>(Ljava/util/List;Ljava/util/Date;Lcom/texa/care/eco_driving/TupleSupport;)V

    invoke-virtual {v1, v2}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->update(Lcom/texa/care/eco_driving/CountersSnapshot;)V

    .line 93
    invoke-direct {p0}, Lcom/texa/care/eco_driving/score/HighSpeedScore;->calcScore()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/texa/care/eco_driving/score/HighSpeedScore;->setScore(I)V

    .line 94
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/HighSpeedScore;->manageScoreUpdate()Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;

    .line 96
    invoke-direct {p0}, Lcom/texa/care/eco_driving/score/HighSpeedScore;->countDelta()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/texa/care/eco_driving/score/HighSpeedScore;->shouldIgnoreEventMute:Z

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/texa/care/eco_driving/score/HighSpeedScore;->snapshotStack:Lcom/texa/care/eco_driving/CountersSnapshotStack;

    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/score/HighSpeedScore;->shouldNotifyEvent(Lcom/texa/care/eco_driving/CountersSnapshotStack;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 102
    new-instance p1, Lcom/texa/care/eco_driving/events/drivingevents/HighSpeedEvent;

    invoke-direct {p1, v0, p0}, Lcom/texa/care/eco_driving/events/drivingevents/HighSpeedEvent;-><init>(Ljava/util/Date;Lcom/texa/care/eco_driving/score/HighSpeedScore;)V

    .line 103
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/HighSpeedScore;->getLocationProvider()Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/care/eco_driving/events/drivingevents/HighSpeedEvent;->acquiredPosition(Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/texa/care/eco_driving/score/HighSpeedScore;->addEvent(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;)Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;

    :cond_1
    return-void
.end method
