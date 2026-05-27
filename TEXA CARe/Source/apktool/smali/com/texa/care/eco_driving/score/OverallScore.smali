.class public Lcom/texa/care/eco_driving/score/OverallScore;
.super Lcom/texa/care/eco_driving/score/BaseScore;
.source "OverallScore.java"

# interfaces
.implements Lcom/texa/care/eco_driving/ScoreListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/care/eco_driving/score/OverallScore$Component;
    }
.end annotation


# instance fields
.field private components:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/care/eco_driving/score/OverallScore$Component;",
            ">;"
        }
    .end annotation
.end field

.field private shouldUpdateScore:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "overall score"

    const/16 v1, 0x64

    .line 33
    invoke-direct {p0, v0, v1}, Lcom/texa/care/eco_driving/score/OverallScore;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/texa/care/eco_driving/score/BaseScore;-><init>(Ljava/lang/String;I)V

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/care/eco_driving/score/OverallScore;->components:Ljava/util/List;

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/texa/care/eco_driving/score/OverallScore;->shouldUpdateScore:Z

    .line 29
    iput-boolean p1, p0, Lcom/texa/care/eco_driving/score/OverallScore;->shouldUpdateScore:Z

    return-void
.end method

.method private weightSum()I
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/OverallScore;->components:Ljava/util/List;

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

    check-cast v3, Lcom/texa/care/eco_driving/score/OverallScore$Component;

    .line 96
    invoke-virtual {v3}, Lcom/texa/care/eco_driving/score/OverallScore$Component;->getWeight()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/OverallScore;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/care/eco_driving/score/OverallScore$Component;

    .line 100
    invoke-virtual {v3}, Lcom/texa/care/eco_driving/score/OverallScore$Component;->getBaseScore()Lcom/texa/care/eco_driving/score/BaseScore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/texa/care/eco_driving/score/BaseScore;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    .line 101
    :cond_2
    invoke-virtual {v3}, Lcom/texa/care/eco_driving/score/OverallScore$Component;->getWeight()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    goto :goto_1

    :cond_3
    return v1
.end method


# virtual methods
.method addComponent(Lcom/texa/care/eco_driving/score/BaseScore;)Lcom/texa/care/eco_driving/score/OverallScore;
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/texa/care/eco_driving/score/OverallScore;->addComponent(Lcom/texa/care/eco_driving/score/BaseScore;I)Lcom/texa/care/eco_driving/score/OverallScore;

    move-result-object p1

    return-object p1
.end method

.method public addComponent(Lcom/texa/care/eco_driving/score/BaseScore;I)Lcom/texa/care/eco_driving/score/OverallScore;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/OverallScore;->components:Ljava/util/List;

    new-instance v1, Lcom/texa/care/eco_driving/score/OverallScore$Component;

    invoke-direct {v1, p0, p1, p2}, Lcom/texa/care/eco_driving/score/OverallScore$Component;-><init>(Lcom/texa/care/eco_driving/score/OverallScore;Lcom/texa/care/eco_driving/score/BaseScore;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object p1, p1, Lcom/texa/care/eco_driving/score/BaseScore;->listeners:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public createScoreUpdateEvent()Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;
    .locals 1

    .line 68
    new-instance v0, Lcom/texa/care/eco_driving/events/scoreevents/OverallScoreUpdateEvent;

    invoke-direct {v0, p0}, Lcom/texa/care/eco_driving/events/scoreevents/OverallScoreUpdateEvent;-><init>(Lcom/texa/care/eco_driving/score/OverallScore;)V

    return-object v0
.end method

.method public getScore()I
    .locals 10

    .line 38
    invoke-direct {p0}, Lcom/texa/care/eco_driving/score/OverallScore;->weightSum()I

    move-result v0

    if-lez v0, :cond_3

    const-wide/16 v1, 0x0

    .line 43
    iget-object v3, p0, Lcom/texa/care/eco_driving/score/OverallScore;->components:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/care/eco_driving/score/OverallScore$Component;

    .line 44
    invoke-virtual {v4}, Lcom/texa/care/eco_driving/score/OverallScore$Component;->getBaseScore()Lcom/texa/care/eco_driving/score/BaseScore;

    move-result-object v5

    .line 45
    invoke-virtual {v4}, Lcom/texa/care/eco_driving/score/OverallScore$Component;->getWeight()I

    move-result v4

    const/4 v6, 0x0

    .line 48
    invoke-virtual {v5}, Lcom/texa/care/eco_driving/score/BaseScore;->isValid()Z

    move-result v7

    if-eqz v7, :cond_1

    if-lez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    :goto_1
    move v6, v4

    :cond_1
    int-to-double v6, v6

    int-to-double v8, v0

    div-double/2addr v6, v8

    .line 53
    iget v4, p0, Lcom/texa/care/eco_driving/score/OverallScore;->MAX_SCORE:I

    int-to-double v8, v4

    invoke-virtual {v5}, Lcom/texa/care/eco_driving/score/BaseScore;->getNormScore()D

    move-result-wide v4

    mul-double v8, v8, v4

    mul-double v8, v8, v6

    add-double/2addr v1, v8

    goto :goto_0

    .line 55
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    goto :goto_2

    :cond_3
    const/4 v1, -0x1

    :goto_2
    return v1
.end method

.method public getType()Lcom/texa/care/eco_driving/score/ScoreType;
    .locals 1

    .line 63
    sget-object v0, Lcom/texa/care/eco_driving/score/ScoreType;->OVERALL:Lcom/texa/care/eco_driving/score/ScoreType;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/OverallScore;->scoreUpdates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/texa/care/eco_driving/score/OverallScore;->shouldUpdateScore:Z

    .line 113
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/OverallScore;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/care/eco_driving/score/OverallScore$Component;

    .line 114
    invoke-virtual {v1}, Lcom/texa/care/eco_driving/score/OverallScore$Component;->getBaseScore()Lcom/texa/care/eco_driving/score/BaseScore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/score/BaseScore;->reset()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/texa/care/eco_driving/score/OverallScore;->shouldUpdateScore:Z

    .line 117
    invoke-super {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->reset()V

    return-void
.end method

.method public setDistance(Ljava/lang/Float;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/OverallScore;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/care/eco_driving/score/OverallScore$Component;

    .line 87
    invoke-virtual {v1}, Lcom/texa/care/eco_driving/score/OverallScore$Component;->getBaseScore()Lcom/texa/care/eco_driving/score/BaseScore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/texa/care/eco_driving/score/BaseScore;->setDistance(Ljava/lang/Float;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lcom/texa/care/eco_driving/score/BaseScore;->setDistance(Ljava/lang/Float;)V

    return-void
.end method

.method public setInterval(J)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/OverallScore;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/care/eco_driving/score/OverallScore$Component;

    .line 79
    invoke-virtual {v1}, Lcom/texa/care/eco_driving/score/OverallScore$Component;->getBaseScore()Lcom/texa/care/eco_driving/score/BaseScore;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/texa/care/eco_driving/score/BaseScore;->setInterval(J)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/texa/care/eco_driving/score/BaseScore;->setInterval(J)V

    return-void
.end method

.method public setScore(I)V
    .locals 0

    return-void
.end method

.method public update(Lcom/texa/care/eco_driving/score/BaseScore;III)V
    .locals 0

    .line 134
    iget-boolean p1, p0, Lcom/texa/care/eco_driving/score/OverallScore;->shouldUpdateScore:Z

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/OverallScore;->manageScoreUpdate()Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;

    :cond_0
    return-void
.end method
