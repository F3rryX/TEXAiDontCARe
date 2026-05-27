.class public final synthetic Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;

.field public final synthetic f$1:Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda25;->f$0:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;

    iput-object p2, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda25;->f$1:Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda25;->f$0:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda25;->f$1:Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;

    check-cast p1, Lcom/texa/careapp/model/PurchaseData;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->lambda$observePlayStorePurchase$22$com-texa-careapp-app-activationSosServices-AcceptationTermsSosServiceScreen(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;Lcom/texa/careapp/model/PurchaseData;)V

    return-void
.end method
