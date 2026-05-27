.class public final synthetic Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;

    invoke-virtual {v0, p1, p2}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->lambda$refreshPurchasesAsync$1$com-texa-careapp-app-activationSosServices-SosInAppBillingSubscription(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
