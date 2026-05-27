.class Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1;
.super Lcom/texa/carelib/communication/DeviceDiscoveryListener;
.source "DongleDiscoveryScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1;->this$0:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;

    invoke-direct {p0}, Lcom/texa/carelib/communication/DeviceDiscoveryListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onDeviceFound$0$com-texa-careapp-app-onboarding-DongleDiscoveryScreen$1(Lcom/texa/carelib/communication/events/DeviceFoundEvent;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1;->this$0:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;

    invoke-virtual {p1}, Lcom/texa/carelib/communication/events/DeviceFoundEvent;->getDeviceInfo()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->access$200(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/carelib/communication/DeviceInfo;)V

    return-void
.end method

.method public synthetic lambda$onDeviceNameChanged$1$com-texa-careapp-app-onboarding-DongleDiscoveryScreen$1(Lcom/texa/carelib/communication/events/DeviceNameChangedEvent;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1;->this$0:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;

    invoke-virtual {p1}, Lcom/texa/carelib/communication/events/DeviceNameChangedEvent;->getDeviceInfo()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->access$100(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/carelib/communication/DeviceInfo;)V

    return-void
.end method

.method public onDeviceFound(Lcom/texa/carelib/communication/events/DeviceFoundEvent;)V
    .locals 2

    const-string v0, "TEST_SCAN"

    const-string v1, "onDeviceFound"

    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1;->this$0:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->access$000(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1;Lcom/texa/carelib/communication/events/DeviceFoundEvent;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDeviceNameChanged(Lcom/texa/carelib/communication/events/DeviceNameChangedEvent;)V
    .locals 2

    .line 144
    invoke-super {p0, p1}, Lcom/texa/carelib/communication/DeviceDiscoveryListener;->onDeviceNameChanged(Lcom/texa/carelib/communication/events/DeviceNameChangedEvent;)V

    .line 145
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1;->this$0:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->access$000(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1;Lcom/texa/carelib/communication/events/DeviceNameChangedEvent;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
