.class public final synthetic Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/utils/VehicleObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/utils/VehicleObserver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/utils/VehicleObserver;

    check-cast p1, Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/VehicleObserver;->lambda$updateVehicleData$1$com-texa-careapp-utils-VehicleObserver(Lcom/texa/careapp/model/VehicleModel;)V

    return-void
.end method
