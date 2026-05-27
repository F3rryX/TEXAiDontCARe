.class public final synthetic Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;

.field public final synthetic f$1:Lcom/texa/careapp/networking/HardwareIdList;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/careapp/networking/HardwareIdList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda10;->f$0:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;

    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda10;->f$1:Lcom/texa/careapp/networking/HardwareIdList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda10;->f$0:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda10;->f$1:Lcom/texa/careapp/networking/HardwareIdList;

    check-cast p1, Lcom/texa/careapp/networking/response/DongleListResponse;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->lambda$requestAdditionalData$0$com-texa-careapp-app-onboarding-DongleDiscoveryScreen(Lcom/texa/careapp/networking/HardwareIdList;Lcom/texa/careapp/networking/response/DongleListResponse;)V

    return-void
.end method
