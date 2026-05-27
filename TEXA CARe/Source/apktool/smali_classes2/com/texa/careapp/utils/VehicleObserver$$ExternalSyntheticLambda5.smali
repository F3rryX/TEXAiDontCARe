.class public final synthetic Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/texa/careapp/networking/response/UserVehicleListResponse;

    invoke-static {v0, p1}, Lcom/texa/careapp/utils/VehicleObserver;->lambda$getVehicleModelObservable$3(Ljava/lang/String;Lcom/texa/careapp/networking/response/UserVehicleListResponse;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
