.class Lcom/texa/careapp/carelib/CareObserverImpl$3;
.super Lcom/texa/carelib/care/vehicle/VehicleListener;
.source "CareObserverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/carelib/CareObserverImpl;->lambda$vehicleListenerObserver$19(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/carelib/CareObserverImpl;

.field final synthetic val$emitter:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lcom/texa/careapp/carelib/CareObserverImpl;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl$3;->this$0:Lcom/texa/careapp/carelib/CareObserverImpl;

    iput-object p2, p0, Lcom/texa/careapp/carelib/CareObserverImpl$3;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Lcom/texa/carelib/care/vehicle/VehicleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onParametersUpdated(Lcom/texa/carelib/care/vehicle/events/ParametersUpdatedEvent;)V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl$3;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl$3;->this$0:Lcom/texa/careapp/carelib/CareObserverImpl;

    invoke-static {p1}, Lcom/texa/careapp/carelib/CareObserverImpl;->access$100(Lcom/texa/careapp/carelib/CareObserverImpl;)Lcom/texa/carelib/care/vehicle/Vehicle;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/carelib/care/vehicle/Vehicle;->removeVehicleListener(Lcom/texa/carelib/care/vehicle/VehicleListener;)V

    return-void

    .line 328
    :cond_0
    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicle/events/ParametersUpdatedEvent;->getUpdatedParametersIDs()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 329
    iget-object v1, p0, Lcom/texa/careapp/carelib/CareObserverImpl$3;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
