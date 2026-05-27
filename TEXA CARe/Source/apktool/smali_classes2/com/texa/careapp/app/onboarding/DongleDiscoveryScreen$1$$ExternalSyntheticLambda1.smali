.class public final synthetic Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1;

.field public final synthetic f$1:Lcom/texa/carelib/communication/events/DeviceNameChangedEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1;Lcom/texa/carelib/communication/events/DeviceNameChangedEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1;

    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1$$ExternalSyntheticLambda1;->f$1:Lcom/texa/carelib/communication/events/DeviceNameChangedEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1$$ExternalSyntheticLambda1;->f$1:Lcom/texa/carelib/communication/events/DeviceNameChangedEvent;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1;->lambda$onDeviceNameChanged$1$com-texa-careapp-app-onboarding-DongleDiscoveryScreen$1(Lcom/texa/carelib/communication/events/DeviceNameChangedEvent;)V

    return-void
.end method
