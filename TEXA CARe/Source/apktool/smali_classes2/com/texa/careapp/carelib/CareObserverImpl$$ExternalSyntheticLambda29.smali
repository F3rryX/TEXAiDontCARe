.class public final synthetic Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/core/ObservableObject;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/core/ObservableObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda29;->f$0:Lcom/texa/carelib/core/ObservableObject;

    iput-object p2, p0, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda29;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda29;->f$0:Lcom/texa/carelib/core/ObservableObject;

    iget-object v1, p0, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda29;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/texa/careapp/carelib/CareObserverImpl;->lambda$observe$0(Lcom/texa/carelib/core/ObservableObject;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
