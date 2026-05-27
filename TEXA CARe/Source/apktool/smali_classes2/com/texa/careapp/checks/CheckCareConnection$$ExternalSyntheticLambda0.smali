.class public final synthetic Lcom/texa/careapp/checks/CheckCareConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/checks/CheckCareConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/checks/CheckCareConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/checks/CheckCareConnection$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/checks/CheckCareConnection;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/checks/CheckCareConnection$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/checks/CheckCareConnection;

    check-cast p1, Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {v0, p1, p2}, Lcom/texa/careapp/checks/CheckCareConnection;->lambda$check$0$com-texa-careapp-checks-CheckCareConnection(Lcom/texa/careapp/carelib/CommunicationObservable$Status;Ljava/lang/Long;)Lcom/texa/careapp/checks/Check$Result;

    move-result-object p1

    return-object p1
.end method
