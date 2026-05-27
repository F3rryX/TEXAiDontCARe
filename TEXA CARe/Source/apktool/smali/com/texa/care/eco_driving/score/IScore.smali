.class public interface abstract Lcom/texa/care/eco_driving/score/IScore;
.super Ljava/lang/Object;
.source "IScore.java"


# virtual methods
.method public abstract getEvents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScore()I
.end method

.method public abstract getScoreUpdates()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getType()Lcom/texa/care/eco_driving/score/ScoreType;
.end method
