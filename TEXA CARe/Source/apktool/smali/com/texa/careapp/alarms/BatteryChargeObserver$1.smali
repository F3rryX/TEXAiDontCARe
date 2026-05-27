.class Lcom/texa/careapp/alarms/BatteryChargeObserver$1;
.super Ljava/lang/Object;
.source "BatteryChargeObserver.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/alarms/BatteryChargeObserver;->createBatteryObservable()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/alarms/BatteryChargeObserver;


# direct methods
.method constructor <init>(Lcom/texa/careapp/alarms/BatteryChargeObserver;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver$1;->this$0:Lcom/texa/careapp/alarms/BatteryChargeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 162
    new-instance v0, Lcom/texa/careapp/alarms/BatteryChargeObserver$1$1;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/alarms/BatteryChargeObserver$1$1;-><init>(Lcom/texa/careapp/alarms/BatteryChargeObserver$1;Lio/reactivex/ObservableEmitter;)V

    .line 192
    iget-object p1, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver$1;->this$0:Lcom/texa/careapp/alarms/BatteryChargeObserver;

    invoke-static {p1}, Lcom/texa/careapp/alarms/BatteryChargeObserver;->access$000(Lcom/texa/careapp/alarms/BatteryChargeObserver;)Lcom/texa/carelib/care/trips/CurrentTrip;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/trips/CurrentTrip;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    return-void
.end method
