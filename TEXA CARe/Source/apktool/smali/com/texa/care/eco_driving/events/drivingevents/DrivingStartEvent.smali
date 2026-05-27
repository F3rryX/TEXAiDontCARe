.class public Lcom/texa/care/eco_driving/events/drivingevents/DrivingStartEvent;
.super Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;
.source "DrivingStartEvent.java"


# direct methods
.method public constructor <init>(Lcom/texa/care/eco_driving/score/BaseScore;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;-><init>(Lcom/texa/care/eco_driving/score/BaseScore;)V

    return-void
.end method


# virtual methods
.method public getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;
    .locals 1

    .line 20
    sget-object v0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_START:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    return-object v0
.end method
