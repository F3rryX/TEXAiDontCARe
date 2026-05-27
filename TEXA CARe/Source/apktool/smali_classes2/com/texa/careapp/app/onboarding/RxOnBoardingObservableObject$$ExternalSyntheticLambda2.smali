.class public final synthetic Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p1, Ljava/beans/PropertyChangeEvent;

    invoke-static {v0, p1}, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->lambda$_observePropertyChanges$4(Ljava/lang/Object;Ljava/beans/PropertyChangeEvent;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
