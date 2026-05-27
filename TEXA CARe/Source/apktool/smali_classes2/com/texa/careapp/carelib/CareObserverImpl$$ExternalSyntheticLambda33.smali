.class public final synthetic Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/carelib/CareObserverImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda33;->f$0:Lcom/texa/careapp/carelib/CareObserverImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda33;->f$0:Lcom/texa/careapp/carelib/CareObserverImpl;

    check-cast p1, Lio/reactivex/schedulers/Timed;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/carelib/CareObserverImpl;->lambda$observeParametersLastUpdate$18$com-texa-careapp-carelib-CareObserverImpl(Lio/reactivex/schedulers/Timed;)V

    return-void
.end method
