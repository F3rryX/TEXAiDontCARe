.class public final synthetic Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;

    check-cast p1, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->lambda$onResume$2$com-texa-careapp-app-activationSosServices-ActivationPlusServiceScreen(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)V

    return-void
.end method
