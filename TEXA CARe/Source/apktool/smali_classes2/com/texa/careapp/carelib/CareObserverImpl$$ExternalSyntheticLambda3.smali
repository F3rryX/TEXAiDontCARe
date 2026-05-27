.class public final synthetic Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/carelib/CareObserverImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/carelib/CareObserverImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/carelib/CareObserverImpl;

    check-cast p1, Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/carelib/CareObserverImpl;->lambda$tripStartSmart$33$com-texa-careapp-carelib-CareObserverImpl(Lcom/texa/carelib/communication/CommunicationStatus;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
