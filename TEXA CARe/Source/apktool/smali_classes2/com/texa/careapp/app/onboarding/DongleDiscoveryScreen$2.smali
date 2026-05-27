.class Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$2;
.super Ljava/lang/Object;
.source "DongleDiscoveryScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 150
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$2;->this$0:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$2;->this$0:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->access$300(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->access$400(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/carelib/communication/DeviceInfo;)V

    return-void
.end method
