.class public final synthetic Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda7;->f$0:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda7;->f$0:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;

    check-cast p1, Lcom/texa/carelib/communication/Communication;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->lambda$startScanForDevices$8$com-texa-careapp-app-onboarding-DongleDiscoveryScreen(Lcom/texa/carelib/communication/Communication;)V

    return-void
.end method
