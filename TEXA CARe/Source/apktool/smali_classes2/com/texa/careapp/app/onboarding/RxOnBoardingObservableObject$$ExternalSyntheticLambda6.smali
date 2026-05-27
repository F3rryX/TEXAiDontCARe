.class public final synthetic Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$Supplier;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$$ExternalSyntheticLambda6;->f$0:Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$Supplier;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$$ExternalSyntheticLambda6;->f$0:Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$Supplier;

    invoke-static {v0}, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->lambda$observePropertyChanges$2(Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$Supplier;)Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
