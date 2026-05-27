.class public final synthetic Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;

    invoke-virtual {v0}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->lambda$retryBillingServiceConnectionWithExponentialBackoff$2$com-texa-careapp-app-activationSosServices-SosInAppBillingSubscription()V

    return-void
.end method
