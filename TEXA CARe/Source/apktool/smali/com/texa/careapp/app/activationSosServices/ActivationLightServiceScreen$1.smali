.class Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$1;
.super Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;
.source "ActivationLightServiceScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->buttonGoToServicePlusTOS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$1;->this$0:Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;

    invoke-direct {p0, p2}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;-><init>(Lcom/texa/careapp/model/ServiceDataModel;)V

    return-void
.end method


# virtual methods
.method public acceptedCondition()V
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$1;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$1;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
