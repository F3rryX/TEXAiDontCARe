.class public final synthetic Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/beans/PropertyChangeEvent;

    invoke-static {v0, p1}, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->lambda$_observePropertyChanges$3(Ljava/lang/String;Ljava/beans/PropertyChangeEvent;)Z

    move-result p1

    return p1
.end method
