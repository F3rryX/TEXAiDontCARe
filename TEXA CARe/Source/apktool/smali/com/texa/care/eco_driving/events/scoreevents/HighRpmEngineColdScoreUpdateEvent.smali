.class public Lcom/texa/care/eco_driving/events/scoreevents/HighRpmEngineColdScoreUpdateEvent;
.super Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;
.source "HighRpmEngineColdScoreUpdateEvent.java"


# direct methods
.method public constructor <init>(JLcom/texa/care/eco_driving/score/HighRpmEngineColdScore;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;-><init>(JLcom/texa/care/eco_driving/score/BaseScore;)V

    return-void
.end method

.method public constructor <init>(Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;-><init>(Lcom/texa/care/eco_driving/score/BaseScore;)V

    return-void
.end method


# virtual methods
.method public getType()Lcom/texa/care/eco_driving/score/ScoreType;
    .locals 1

    .line 24
    sget-object v0, Lcom/texa/care/eco_driving/score/ScoreType;->HIGH_RPM_ENGINE_COLD:Lcom/texa/care/eco_driving/score/ScoreType;

    return-object v0
.end method
