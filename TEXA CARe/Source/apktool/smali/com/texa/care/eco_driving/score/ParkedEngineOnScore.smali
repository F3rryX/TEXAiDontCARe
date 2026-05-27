.class public Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;
.super Lcom/texa/care/eco_driving/score/BaseScore;
.source "ParkedEngineOnScore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;
    }
.end annotation


# static fields
.field private static final BASE_COUNT_MIN:D = 10.0

.field private static final ENGINE_TEMP_MIN:D = 50.0

.field private static final EVENT_DURATION_MIN_S:D = 90.0

.field private static final RPM_TARGET_MIN:D = 200.0

.field private static final SPEED_TARGET_MAX:D = 2.0


# instance fields
.field private curPeriod:Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

.field private currentValues:Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;

.field private engineHotCounters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private hasNotifiedCurPeriod:Z

.field private scoreRelevantPeriods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Parked vehicle with engine on score"

    const/16 v1, 0x64

    .line 42
    invoke-direct {p0, v0, v1}, Lcom/texa/care/eco_driving/score/BaseScore;-><init>(Ljava/lang/String;I)V

    .line 30
    new-instance v0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;

    invoke-direct {v0, p0}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;-><init>(Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;)V

    iput-object v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->currentValues:Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->scoreRelevantPeriods:Ljava/util/List;

    .line 32
    new-instance v0, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    invoke-direct {v0, p0}, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;-><init>(Lcom/texa/care/eco_driving/score/BaseScore;)V

    iput-object v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->curPeriod:Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->hasNotifiedCurPeriod:Z

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    const-string v0, "Parked vehicle with engine on score"

    .line 47
    invoke-direct {p0, v0, p1}, Lcom/texa/care/eco_driving/score/BaseScore;-><init>(Ljava/lang/String;I)V

    .line 30
    new-instance p1, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;

    invoke-direct {p1, p0}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;-><init>(Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;)V

    iput-object p1, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->currentValues:Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->scoreRelevantPeriods:Ljava/util/List;

    .line 32
    new-instance p1, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    invoke-direct {p1, p0}, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;-><init>(Lcom/texa/care/eco_driving/score/BaseScore;)V

    iput-object p1, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->curPeriod:Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->hasNotifiedCurPeriod:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/texa/care/eco_driving/score/BaseScore;-><init>(Ljava/lang/String;I)V

    .line 30
    new-instance p1, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;

    invoke-direct {p1, p0}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;-><init>(Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;)V

    iput-object p1, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->currentValues:Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->scoreRelevantPeriods:Ljava/util/List;

    .line 32
    new-instance p1, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    invoke-direct {p1, p0}, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;-><init>(Lcom/texa/care/eco_driving/score/BaseScore;)V

    iput-object p1, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->curPeriod:Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->hasNotifiedCurPeriod:Z

    return-void
.end method

.method private isInTargetZone(Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;)Z
    .locals 1

    .line 147
    invoke-static {p1}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;->access$000(Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {p1}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;->access$100(Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {p1}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;->access$200(Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {p1}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;->access$000(Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->isInTargetZone_rpm(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {p1}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;->access$100(Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->isInTargetZone_speed(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {p1}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;->access$200(Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->isInTargetZone_engineTemp(Ljava/lang/Double;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isInTargetZone_engineTemp(Ljava/lang/Double;)Z
    .locals 4

    .line 164
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isInTargetZone_period(Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;)Z
    .locals 6

    .line 168
    iget-object v0, p1, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->endDate:Ljava/util/Date;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->beginDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p1, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->beginDate:Ljava/util/Date;

    iget-object p1, p1, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->endDate:Ljava/util/Date;

    invoke-static {v0, p1}, Lcom/texa/care/eco_driving/Utils;->dateDifference(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double p1, v2, v4

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isInTargetZone_rpm(Ljava/lang/Double;)Z
    .locals 4

    .line 156
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isInTargetZone_speed(Ljava/lang/Double;)Z
    .locals 4

    .line 160
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private processData()V
    .locals 6

    .line 83
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->getContextDate()Ljava/util/Date;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->currentValues:Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;

    invoke-direct {p0, v1}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->isInTargetZone(Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->curPeriod:Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    iget-object v1, v1, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->beginDate:Ljava/util/Date;

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->curPeriod:Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    iput-object v0, v1, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->beginDate:Ljava/util/Date;

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->curPeriod:Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    iput-object v0, v1, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->endDate:Ljava/util/Date;

    .line 89
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->curPeriod:Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    invoke-direct {p0, v0}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->isInTargetZone_period(Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    iget-boolean v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->hasNotifiedCurPeriod:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->hasNotifiedCurPeriod:Z

    .line 92
    new-instance v0, Lcom/texa/care/eco_driving/events/drivingevents/ParkedEngineOnEvent;

    invoke-direct {v0, p0}, Lcom/texa/care/eco_driving/events/drivingevents/ParkedEngineOnEvent;-><init>(Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;)V

    .line 93
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->getLocationProvider()Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/care/eco_driving/events/drivingevents/ParkedEngineOnEvent;->acquiredPosition(Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->addEvent(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;)Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->curPeriod:Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    invoke-direct {p0, v0}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->isInTargetZone_period(Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->scoreRelevantPeriods:Ljava/util/List;

    new-instance v3, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    iget-object v4, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->curPeriod:Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    iget-object v4, v4, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->beginDate:Ljava/util/Date;

    iget-object v5, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->curPeriod:Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    iget-object v5, v5, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->endDate:Ljava/util/Date;

    invoke-direct {v3, p0, v4, v5}, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;-><init>(Lcom/texa/care/eco_driving/score/BaseScore;Ljava/util/Date;Ljava/util/Date;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->curPeriod:Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    invoke-virtual {v0, v2, v2}, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->setDates(Ljava/util/Date;Ljava/util/Date;)Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    .line 101
    iget-boolean v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->hasNotifiedCurPeriod:Z

    if-eqz v0, :cond_2

    .line 102
    iput-boolean v1, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->hasNotifiedCurPeriod:Z

    goto :goto_0

    .line 104
    :cond_2
    new-instance v0, Lcom/texa/care/eco_driving/events/drivingevents/ParkedEngineOnEvent;

    invoke-direct {v0, p0}, Lcom/texa/care/eco_driving/events/drivingevents/ParkedEngineOnEvent;-><init>(Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;)V

    .line 105
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->getLocationProvider()Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/care/eco_driving/events/drivingevents/ParkedEngineOnEvent;->acquiredPosition(Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->addEvent(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;)Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;

    goto :goto_0

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->curPeriod:Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    invoke-virtual {v0, v2, v2}, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->setDates(Ljava/util/Date;Ljava/util/Date;)Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    .line 110
    iput-boolean v1, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->hasNotifiedCurPeriod:Z

    .line 114
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->updateScore()V

    .line 115
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->manageScoreUpdate()Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;

    return-void
.end method

.method private updateScore()V
    .locals 8

    .line 121
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->engineHotCounters:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/carelib/core/CounterInfo;

    .line 124
    invoke-virtual {v3}, Lcom/texa/carelib/core/CounterInfo;->getValue()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    int-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_4

    const-wide/16 v2, 0x0

    .line 129
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->scoreRelevantPeriods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    .line 130
    iget-object v5, v4, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->beginDate:Ljava/util/Date;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->endDate:Ljava/util/Date;

    if-eqz v5, :cond_1

    .line 131
    iget-object v5, v4, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->beginDate:Ljava/util/Date;

    iget-object v4, v4, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->endDate:Ljava/util/Date;

    invoke-static {v5, v4}, Lcom/texa/care/eco_driving/Utils;->dateDifference(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_1

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->curPeriod:Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    invoke-direct {p0, v0}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->isInTargetZone_period(Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->curPeriod:Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    iget-object v0, v0, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->endDate:Ljava/util/Date;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->curPeriod:Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    iget-object v0, v0, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->beginDate:Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->curPeriod:Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    iget-object v0, v0, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->beginDate:Ljava/util/Date;

    iget-object v4, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->curPeriod:Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    iget-object v4, v4, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->endDate:Ljava/util/Date;

    invoke-static {v0, v4}, Lcom/texa/care/eco_driving/Utils;->dateDifference(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 139
    :cond_3
    iget v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->MAX_SCORE:I

    int-to-double v4, v0

    long-to-double v2, v2

    mul-double v2, v2, v4

    const-wide v6, 0x4090e00000000000L    # 1080.0

    div-double/2addr v2, v6

    sub-double/2addr v4, v2

    double-to-int v0, v4

    .line 140
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :cond_4
    const/4 v0, -0x1

    .line 143
    :goto_2
    invoke-virtual {p0, v0}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->setScore(I)V

    return-void
.end method


# virtual methods
.method public createScoreUpdateEvent()Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;
    .locals 1

    .line 183
    new-instance v0, Lcom/texa/care/eco_driving/events/scoreevents/ParkedEngineOnUpdateScoreEvent;

    invoke-direct {v0, p0}, Lcom/texa/care/eco_driving/events/scoreevents/ParkedEngineOnUpdateScoreEvent;-><init>(Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;)V

    return-object v0
.end method

.method public getType()Lcom/texa/care/eco_driving/score/ScoreType;
    .locals 1

    .line 178
    sget-object v0, Lcom/texa/care/eco_driving/score/ScoreType;->PARKED_ENGINE_ON:Lcom/texa/care/eco_driving/score/ScoreType;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 53
    invoke-super {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->reset()V

    .line 54
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->curPeriod:Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->setDates(Ljava/util/Date;Ljava/util/Date;)Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->hasNotifiedCurPeriod:Z

    .line 56
    new-instance v0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;

    invoke-direct {v0, p0}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;-><init>(Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;)V

    iput-object v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->currentValues:Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;

    .line 57
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->scoreRelevantPeriods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    iput-object v1, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->engineHotCounters:Ljava/util/List;

    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->engineHotCounters:Ljava/util/List;

    .line 64
    invoke-direct {p0}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->processData()V

    return-void
.end method

.method public updateEngineTemp(D)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->currentValues:Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;->access$202(Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;Ljava/lang/Double;)Ljava/lang/Double;

    .line 79
    invoke-direct {p0}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->processData()V

    return-void
.end method

.method public updateRpm(D)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->currentValues:Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;->access$002(Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;Ljava/lang/Double;)Ljava/lang/Double;

    .line 69
    invoke-direct {p0}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->processData()V

    return-void
.end method

.method public updateSpeed(D)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->currentValues:Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;->access$102(Lcom/texa/care/eco_driving/score/ParkedEngineOnScore$TargetValues;Ljava/lang/Double;)Ljava/lang/Double;

    .line 74
    invoke-direct {p0}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->processData()V

    return-void
.end method
