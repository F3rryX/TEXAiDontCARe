.class public final synthetic Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/model/PurchaseData;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/model/PurchaseData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda27;->f$0:Lcom/texa/careapp/model/PurchaseData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda27;->f$0:Lcom/texa/careapp/model/PurchaseData;

    check-cast p1, Lcom/texa/careapp/networking/response/ServerResponse;

    invoke-static {v0, p1}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->lambda$observeSendReceipt$5(Lcom/texa/careapp/model/PurchaseData;Lcom/texa/careapp/networking/response/ServerResponse;)V

    return-void
.end method
