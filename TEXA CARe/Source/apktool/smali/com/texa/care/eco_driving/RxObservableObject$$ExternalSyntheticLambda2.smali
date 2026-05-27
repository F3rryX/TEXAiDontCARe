.class public final synthetic Lcom/texa/care/eco_driving/RxObservableObject$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/texa/care/eco_driving/RxObservableObject$Supplier;

.field public final synthetic f$1:Lcom/texa/care/eco_driving/RxObservableObject$Validator;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/care/eco_driving/RxObservableObject$Supplier;Lcom/texa/care/eco_driving/RxObservableObject$Validator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/care/eco_driving/RxObservableObject$$ExternalSyntheticLambda2;->f$0:Lcom/texa/care/eco_driving/RxObservableObject$Supplier;

    iput-object p2, p0, Lcom/texa/care/eco_driving/RxObservableObject$$ExternalSyntheticLambda2;->f$1:Lcom/texa/care/eco_driving/RxObservableObject$Validator;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/texa/care/eco_driving/RxObservableObject$$ExternalSyntheticLambda2;->f$0:Lcom/texa/care/eco_driving/RxObservableObject$Supplier;

    iget-object v1, p0, Lcom/texa/care/eco_driving/RxObservableObject$$ExternalSyntheticLambda2;->f$1:Lcom/texa/care/eco_driving/RxObservableObject$Validator;

    invoke-static {v0, v1}, Lcom/texa/care/eco_driving/RxObservableObject;->lambda$observePropertyChanges$0(Lcom/texa/care/eco_driving/RxObservableObject$Supplier;Lcom/texa/care/eco_driving/RxObservableObject$Validator;)Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
