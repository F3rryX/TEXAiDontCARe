.class public final synthetic Lcom/texa/careapp/checks/CheckGps$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/checks/CheckGps;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/checks/CheckGps;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/checks/CheckGps$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/checks/CheckGps;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/checks/CheckGps$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/checks/CheckGps;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/checks/CheckGps;->lambda$networkObservable$3$com-texa-careapp-checks-CheckGps(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
