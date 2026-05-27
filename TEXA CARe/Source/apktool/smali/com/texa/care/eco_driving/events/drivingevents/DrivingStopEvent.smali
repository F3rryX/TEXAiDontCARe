.class public Lcom/texa/care/eco_driving/events/drivingevents/DrivingStopEvent;
.super Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;
.source "DrivingStopEvent.java"


# direct methods
.method public constructor <init>(Lcom/texa/care/eco_driving/score/BaseScore;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;-><init>(Lcom/texa/care/eco_driving/score/BaseScore;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Lcom/texa/care/eco_driving/score/BaseScore;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;-><init>(Ljava/util/Date;Lcom/texa/care/eco_driving/score/BaseScore;)V

    return-void
.end method


# virtual methods
.method public getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;
    .locals 1

    .line 27
    sget-object v0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    return-object v0
.end method
