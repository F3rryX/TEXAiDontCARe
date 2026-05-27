.class public final synthetic Lcom/texa/careapp/alarms/BatteryChargeObserver$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/alarms/BatteryChargeObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/alarms/BatteryChargeObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/alarms/BatteryChargeObserver;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/alarms/BatteryChargeObserver;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/alarms/BatteryChargeObserver;->lambda$observeBatteryLevel$1$com-texa-careapp-alarms-BatteryChargeObserver(Ljava/lang/Float;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
