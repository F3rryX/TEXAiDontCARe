.class public final synthetic Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;

    check-cast p1, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->lambda$onResume$2$com-texa-careapp-app-activationSosServices-ActivationLightServiceScreen(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)V

    return-void
.end method
