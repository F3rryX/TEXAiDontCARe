.class public final synthetic Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/onboarding/StartEngineScreen;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/texa/careapp/model/VehicleDataModelResponseEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Ljava/lang/String;Lcom/texa/careapp/model/VehicleDataModelResponseEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda14;->f$0:Lcom/texa/careapp/app/onboarding/StartEngineScreen;

    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda14;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda14;->f$2:Lcom/texa/careapp/model/VehicleDataModelResponseEntity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda14;->f$0:Lcom/texa/careapp/app/onboarding/StartEngineScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda14;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda14;->f$2:Lcom/texa/careapp/model/VehicleDataModelResponseEntity;

    check-cast p1, Lcom/texa/careapp/networking/response/UserVehicleListResponse;

    invoke-virtual {v0, v1, v2, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->lambda$getUserVehicleData$13$com-texa-careapp-app-onboarding-StartEngineScreen(Ljava/lang/String;Lcom/texa/careapp/model/VehicleDataModelResponseEntity;Lcom/texa/careapp/networking/response/UserVehicleListResponse;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
