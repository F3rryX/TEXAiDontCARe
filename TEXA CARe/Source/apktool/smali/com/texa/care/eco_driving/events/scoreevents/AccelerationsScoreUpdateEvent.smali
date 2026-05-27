.class public Lcom/texa/care/eco_driving/events/scoreevents/AccelerationsScoreUpdateEvent;
.super Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;
.source "AccelerationsScoreUpdateEvent.java"


# direct methods
.method public constructor <init>(JLcom/texa/care/eco_driving/score/AccelerationsScore;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;-><init>(JLcom/texa/care/eco_driving/score/BaseScore;)V

    return-void
.end method

.method public constructor <init>(JLcom/texa/care/eco_driving/score/AccelerationsScore;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/texa/care/eco_driving/score/AccelerationsScore;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;-><init>(JLcom/texa/care/eco_driving/score/BaseScore;)V

    if-eqz p4, :cond_0

    .line 26
    iget-object p1, p0, Lcom/texa/care/eco_driving/events/scoreevents/AccelerationsScoreUpdateEvent;->extra:Ljava/util/HashMap;

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/texa/care/eco_driving/score/AccelerationsScore;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;-><init>(Lcom/texa/care/eco_driving/score/BaseScore;)V

    return-void
.end method


# virtual methods
.method public getType()Lcom/texa/care/eco_driving/score/ScoreType;
    .locals 1

    .line 36
    sget-object v0, Lcom/texa/care/eco_driving/score/ScoreType;->ACCELERATIONS:Lcom/texa/care/eco_driving/score/ScoreType;

    return-object v0
.end method
