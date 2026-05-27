.class Lcom/texa/care/eco_driving/RxVehicle$1;
.super Lcom/texa/carelib/care/vehicle/VehicleListener;
.source "RxVehicle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/care/eco_driving/RxVehicle;-><init>(Lcom/texa/carelib/care/vehicle/Vehicle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/care/eco_driving/RxVehicle;


# direct methods
.method constructor <init>(Lcom/texa/care/eco_driving/RxVehicle;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/texa/care/eco_driving/RxVehicle$1;->this$0:Lcom/texa/care/eco_driving/RxVehicle;

    invoke-direct {p0}, Lcom/texa/carelib/care/vehicle/VehicleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onParametersUpdated(Lcom/texa/carelib/care/vehicle/events/ParametersUpdatedEvent;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/texa/carelib/care/vehicle/VehicleListener;->onParametersUpdated(Lcom/texa/carelib/care/vehicle/events/ParametersUpdatedEvent;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicle/events/ParametersUpdatedEvent;->getUpdatedParametersIDs()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    iget-object p1, p0, Lcom/texa/care/eco_driving/RxVehicle$1;->this$0:Lcom/texa/care/eco_driving/RxVehicle;

    invoke-static {p1}, Lcom/texa/care/eco_driving/RxVehicle;->access$000(Lcom/texa/care/eco_driving/RxVehicle;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
