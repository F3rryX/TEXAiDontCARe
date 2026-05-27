.class public final synthetic Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;

    check-cast p1, Lcom/texa/careapp/networking/response/InsuranceListResponse;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->lambda$displayInsurances$2$com-texa-careapp-app-schedule-addThreshold-SetInsuranceCompanyScreen(Lcom/texa/careapp/networking/response/InsuranceListResponse;)V

    return-void
.end method
