.class Lcom/texa/careapp/app/service/RxCareService$1;
.super Ljava/lang/Object;
.source "RxCareService.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/service/RxCareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/service/RxCareService;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/service/RxCareService;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/texa/careapp/app/service/RxCareService$1;->this$0:Lcom/texa/careapp/app/service/RxCareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/texa/careapp/app/service/RxCareService$1;->this$0:Lcom/texa/careapp/app/service/RxCareService;

    iget-object v0, v0, Lcom/texa/careapp/app/service/RxCareService;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    .line 56
    invoke-interface {v0}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripStatus()Lcom/texa/carelib/care/trips/TripStatus;

    move-result-object v1

    .line 58
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.texa.carelib.care.trips.CurrentTrip#TRIP_STATUS"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    sget-object p1, Lcom/texa/carelib/care/trips/TripStatus;->InProgress:Lcom/texa/carelib/care/trips/TripStatus;

    if-ne v1, p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/texa/careapp/app/service/RxCareService$1;->this$0:Lcom/texa/careapp/app/service/RxCareService;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/service/RxCareService;->onTripStarted(Lcom/texa/carelib/care/trips/CurrentTrip;)V

    :cond_0
    return-void
.end method
