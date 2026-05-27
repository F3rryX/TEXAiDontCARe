.class Lcom/texa/careapp/alarms/BatteryChargeObserver$1$1;
.super Ljava/lang/Object;
.source "BatteryChargeObserver.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/alarms/BatteryChargeObserver$1;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/texa/careapp/alarms/BatteryChargeObserver$1;

.field final synthetic val$emitter:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lcom/texa/careapp/alarms/BatteryChargeObserver$1;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver$1$1;->this$1:Lcom/texa/careapp/alarms/BatteryChargeObserver$1;

    iput-object p2, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver$1$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver$1$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object p1, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver$1$1;->this$1:Lcom/texa/careapp/alarms/BatteryChargeObserver$1;

    iget-object p1, p1, Lcom/texa/careapp/alarms/BatteryChargeObserver$1;->this$0:Lcom/texa/careapp/alarms/BatteryChargeObserver;

    invoke-static {p1}, Lcom/texa/careapp/alarms/BatteryChargeObserver;->access$000(Lcom/texa/careapp/alarms/BatteryChargeObserver;)Lcom/texa/carelib/care/trips/CurrentTrip;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/carelib/care/trips/CurrentTrip;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void

    .line 170
    :cond_0
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.texa.carelib.care.trips.CurrentTrip#TRIP_END_INFO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/trips/CurrentTrip;

    .line 173
    invoke-interface {p1}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripEndInfo()Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 174
    invoke-interface {p1}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripEndInfo()Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripEndInfo;->getMaxVoltageEngineOn()Ljava/lang/Float;

    move-result-object p1

    if-nez p1, :cond_1

    .line 178
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Average voltage is null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "got exception"

    .line 179
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver$1$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 182
    :cond_1
    invoke-static {}, Lcom/texa/careapp/alarms/BatteryChargeObserver;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "propertyChange, voltage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver$1$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
