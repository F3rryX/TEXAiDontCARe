.class Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$3;
.super Ljava/lang/Object;
.source "DongleDiscoveryScreen.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


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

    .line 160
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$3;->this$0:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$propertyChange$0$com-texa-careapp-app-onboarding-DongleDiscoveryScreen$3(Ljava/beans/PropertyChangeEvent;)V
    .locals 0

    .line 166
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$3;->propertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 3

    .line 163
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    .line 165
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$3$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$3;Ljava/beans/PropertyChangeEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 170
    :cond_0
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.texa.carelib.communication.Communication#PROPERTY_STATUS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 171
    sget-object p1, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$4;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 178
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$3;->this$0:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->access$600(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$3;->this$0:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->access$500(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)V

    :cond_3
    :goto_0
    return-void
.end method
