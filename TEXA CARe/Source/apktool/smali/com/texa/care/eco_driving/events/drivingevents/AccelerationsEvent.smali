.class public Lcom/texa/care/eco_driving/events/drivingevents/AccelerationsEvent;
.super Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;
.source "AccelerationsEvent.java"


# direct methods
.method public constructor <init>(Ljava/util/Date;Lcom/texa/care/eco_driving/score/AccelerationsScore;)V
    .locals 2

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;-><init>(Ljava/util/Date;Lcom/texa/care/eco_driving/score/BaseScore;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Acceleration event Created"

    .line 19
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lcom/texa/care/eco_driving/events/drivingevents/AccelerationsEvent;->extra:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/texa/care/eco_driving/score/AccelerationsScore;->getSnapshotStack()Lcom/texa/care/eco_driving/CountersSnapshotStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/CountersSnapshotStack;->getPrev()Lcom/texa/care/eco_driving/CountersSnapshot;

    move-result-object v0

    const-string v1, "prev_snapshot"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p1, p0, Lcom/texa/care/eco_driving/events/drivingevents/AccelerationsEvent;->extra:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/texa/care/eco_driving/score/AccelerationsScore;->getSnapshotStack()Lcom/texa/care/eco_driving/CountersSnapshotStack;

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

    .line 26
    sget-object v0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->ACCELERATIONS:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    return-object v0
.end method
