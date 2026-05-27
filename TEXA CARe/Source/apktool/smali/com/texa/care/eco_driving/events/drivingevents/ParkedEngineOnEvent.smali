.class public Lcom/texa/care/eco_driving/events/drivingevents/ParkedEngineOnEvent;
.super Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;
.source "ParkedEngineOnEvent.java"


# direct methods
.method public constructor <init>(Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;-><init>(Lcom/texa/care/eco_driving/score/BaseScore;)V

    return-void
.end method


# virtual methods
.method public getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;
    .locals 1

    .line 18
    sget-object v0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->PARKED_ENGINE_ON:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    return-object v0
.end method
