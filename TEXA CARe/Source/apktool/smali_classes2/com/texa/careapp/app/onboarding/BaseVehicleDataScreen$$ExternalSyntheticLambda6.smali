.class public final synthetic Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda6;->f$0:Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda6;->f$0:Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;

    check-cast p1, Lcom/texa/careapp/networking/response/UserVehicleListResponse;

    check-cast p2, Lcom/texa/careapp/networking/response/VehicleSelectionResponse;

    invoke-virtual {v0, p1, p2}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->lambda$getSelectionObservable$10$com-texa-careapp-app-onboarding-BaseVehicleDataScreen(Lcom/texa/careapp/networking/response/UserVehicleListResponse;Lcom/texa/careapp/networking/response/VehicleSelectionResponse;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
