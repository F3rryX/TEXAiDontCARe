.class public Lcom/texa/care/eco_driving/events/drivingevents/HighSpeedEvent;
.super Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;
.source "HighSpeedEvent.java"


# direct methods
.method public constructor <init>(Ljava/util/Date;Lcom/texa/care/eco_driving/score/HighSpeedScore;)V
    .locals 2

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;-><init>(Ljava/util/Date;Lcom/texa/care/eco_driving/score/BaseScore;)V

    .line 17
    iget-object p1, p0, Lcom/texa/care/eco_driving/events/drivingevents/HighSpeedEvent;->extra:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/texa/care/eco_driving/score/HighSpeedScore;->getSnapshotStack()Lcom/texa/care/eco_driving/CountersSnapshotStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->getPrev()Lcom/texa/care/eco_driving/CountersSnapshot;

    move-result-object v0

    const-string v1, "prev_snapshot"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p1, p0, Lcom/texa/care/eco_driving/events/drivingevents/HighSpeedEvent;->extra:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/texa/care/eco_driving/score/HighSpeedScore;->getSnapshotStack()Lcom/texa/care/eco_driving/CountersSnapshotStack;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->getCur()Lcom/texa/care/eco_driving/CountersSnapshot;

    move-result-object p2

    const-string v0, "cur_snapshot"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;
    .locals 1

    .line 23
    sget-object v0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->HIGH_SPEED:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    return-object v0
.end method
