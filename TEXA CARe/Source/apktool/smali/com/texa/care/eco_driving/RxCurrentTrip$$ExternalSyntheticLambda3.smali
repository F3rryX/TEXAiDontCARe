.class public final synthetic Lcom/texa/care/eco_driving/RxCurrentTrip$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/care/eco_driving/RxObservableObject$Supplier;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/trips/CurrentTrip;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/trips/CurrentTrip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/care/eco_driving/RxCurrentTrip$$ExternalSyntheticLambda3;->f$0:Lcom/texa/carelib/care/trips/CurrentTrip;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/care/eco_driving/RxCurrentTrip$$ExternalSyntheticLambda3;->f$0:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-interface {v0}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripStatisticsInfo()Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object v0

    return-object v0
.end method
