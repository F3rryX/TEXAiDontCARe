.class public final synthetic Lcom/texa/careapp/carelib/CommunicationObservable$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/carelib/CommunicationObservable;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/carelib/CommunicationObservable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/carelib/CommunicationObservable$$ExternalSyntheticLambda6;->f$0:Lcom/texa/careapp/carelib/CommunicationObservable;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/carelib/CommunicationObservable$$ExternalSyntheticLambda6;->f$0:Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-virtual {v0}, Lcom/texa/careapp/carelib/CommunicationObservable;->lambda$observeConnectionStatus$3$com-texa-careapp-carelib-CommunicationObservable()Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
