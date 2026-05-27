.class public final synthetic Lcom/texa/careapp/carelib/CommunicationObservable$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/carelib/CommunicationObservable$Status;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/carelib/CommunicationObservable$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/carelib/CommunicationObservable$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    check-cast p1, Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    invoke-static {v0, p1}, Lcom/texa/careapp/carelib/CommunicationObservable;->lambda$filterStatus$1(Lcom/texa/careapp/carelib/CommunicationObservable$Status;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)Z

    move-result p1

    return p1
.end method
