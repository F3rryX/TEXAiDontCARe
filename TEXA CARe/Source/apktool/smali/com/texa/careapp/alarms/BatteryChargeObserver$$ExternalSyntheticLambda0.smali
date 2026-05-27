.class public final synthetic Lcom/texa/careapp/alarms/BatteryChargeObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/alarms/BatteryChargeObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/alarms/BatteryChargeObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/alarms/BatteryChargeObserver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/alarms/BatteryChargeObserver;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/alarms/BatteryChargeObserver;->lambda$new$0$com-texa-careapp-alarms-BatteryChargeObserver(Ljava/lang/Float;)V

    return-void
.end method
