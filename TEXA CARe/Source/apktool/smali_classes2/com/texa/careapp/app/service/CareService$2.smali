.class Lcom/texa/careapp/app/service/CareService$2;
.super Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;
.source "CareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/service/CareService;->scoreUpdateCall(Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/service/CareService;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/service/CareService;Lcom/texa/care/eco_driving/score/BaseScore;)V
    .locals 0

    .line 1494
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService$2;->this$0:Lcom/texa/careapp/app/service/CareService;

    invoke-direct {p0, p2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;-><init>(Lcom/texa/care/eco_driving/score/BaseScore;)V

    return-void
.end method


# virtual methods
.method public getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;
    .locals 1

    .line 1497
    sget-object v0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->UNDEFINED:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    return-object v0
.end method
