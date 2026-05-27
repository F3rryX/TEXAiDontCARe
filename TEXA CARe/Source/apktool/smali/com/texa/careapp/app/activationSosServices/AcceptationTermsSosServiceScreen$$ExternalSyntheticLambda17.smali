.class public final synthetic Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda17;->f$0:Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda17;->f$0:Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;

    check-cast p1, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;

    invoke-static {v0, p1}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->lambda$changeLockStatus$19(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
