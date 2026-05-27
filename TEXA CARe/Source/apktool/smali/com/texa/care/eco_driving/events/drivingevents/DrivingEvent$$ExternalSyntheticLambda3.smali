.class public final synthetic Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent$$ExternalSyntheticLambda3;->f$0:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent$$ExternalSyntheticLambda3;->f$0:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->$r8$lambda$ZcX_gb6HTUz1WOsZx0v2Ai1K02A(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;Landroid/location/Location;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
