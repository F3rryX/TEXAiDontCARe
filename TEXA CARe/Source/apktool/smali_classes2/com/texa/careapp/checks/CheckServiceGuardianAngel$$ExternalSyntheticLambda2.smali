.class public final synthetic Lcom/texa/careapp/checks/CheckServiceGuardianAngel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/checks/CheckServiceGuardianAngel;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/checks/CheckServiceGuardianAngel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/checks/CheckServiceGuardianAngel$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/checks/CheckServiceGuardianAngel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/checks/CheckServiceGuardianAngel$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/checks/CheckServiceGuardianAngel;

    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/checks/CheckServiceGuardianAngel;->lambda$check$0$com-texa-careapp-checks-CheckServiceGuardianAngel(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
