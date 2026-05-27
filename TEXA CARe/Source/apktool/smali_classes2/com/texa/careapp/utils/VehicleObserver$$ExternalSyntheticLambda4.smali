.class public final synthetic Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/utils/VehicleObserver;

.field public final synthetic f$1:Lcom/texa/careapp/model/VehicleModel;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/utils/VehicleObserver;Lcom/texa/careapp/model/VehicleModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/utils/VehicleObserver;

    iput-object p2, p0, Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda4;->f$1:Lcom/texa/careapp/model/VehicleModel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/utils/VehicleObserver;

    iget-object v1, p0, Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda4;->f$1:Lcom/texa/careapp/model/VehicleModel;

    check-cast p1, Lcom/texa/careapp/networking/response/VehicleResponse;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/utils/VehicleObserver;->lambda$getVehicleModelObservable$5$com-texa-careapp-utils-VehicleObserver(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/networking/response/VehicleResponse;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
