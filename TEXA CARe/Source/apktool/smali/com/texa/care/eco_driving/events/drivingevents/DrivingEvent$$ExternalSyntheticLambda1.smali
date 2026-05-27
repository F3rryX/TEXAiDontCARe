.class public final synthetic Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent$$ExternalSyntheticLambda1;->f$0:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent$$ExternalSyntheticLambda1;->f$0:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->$r8$lambda$xYQ1tQoRUQhcThgw-PlQxoaGrJ8(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;Landroid/location/Location;)V

    return-void
.end method
