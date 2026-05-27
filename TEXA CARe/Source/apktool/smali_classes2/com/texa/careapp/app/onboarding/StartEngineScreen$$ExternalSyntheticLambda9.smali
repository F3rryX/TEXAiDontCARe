.class public final synthetic Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/onboarding/StartEngineScreen;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda9;->f$0:Lcom/texa/careapp/app/onboarding/StartEngineScreen;

    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda9;->f$0:Lcom/texa/careapp/app/onboarding/StartEngineScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->lambda$getUserVehicleData$14$com-texa-careapp-app-onboarding-StartEngineScreen(Ljava/lang/String;Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;)V

    return-void
.end method
