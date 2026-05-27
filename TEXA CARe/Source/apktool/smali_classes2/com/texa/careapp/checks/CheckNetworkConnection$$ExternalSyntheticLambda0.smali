.class public final synthetic Lcom/texa/careapp/checks/CheckNetworkConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/checks/CheckNetworkConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/checks/CheckNetworkConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/checks/CheckNetworkConnection$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/checks/CheckNetworkConnection;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/checks/CheckNetworkConnection$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/checks/CheckNetworkConnection;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/checks/CheckNetworkConnection;->lambda$networkObservable$3$com-texa-careapp-checks-CheckNetworkConnection(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
