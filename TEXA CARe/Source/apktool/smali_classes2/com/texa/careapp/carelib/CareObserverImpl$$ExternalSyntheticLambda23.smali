.class public final synthetic Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/carelib/CareObserverImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda23;->f$0:Lcom/texa/careapp/carelib/CareObserverImpl;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda23;->f$0:Lcom/texa/careapp/carelib/CareObserverImpl;

    check-cast p1, Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/carelib/CareObserverImpl;->lambda$tripStartSmart$30$com-texa-careapp-carelib-CareObserverImpl(Lcom/texa/carelib/communication/CommunicationStatus;)Z

    move-result p1

    return p1
.end method
