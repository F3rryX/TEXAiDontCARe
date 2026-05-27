.class Lcom/texa/careapp/carelib/CareObserverImpl$2;
.super Ljava/lang/Object;
.source "CareObserverImpl.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/carelib/CareObserverImpl;->lambda$observeMulti$1(Lcom/texa/carelib/core/ObservableObject;Ljava/util/List;Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$emitter:Lio/reactivex/ObservableEmitter;

.field final synthetic val$observableObject:Lcom/texa/carelib/core/ObservableObject;

.field final synthetic val$properties:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/reactivex/ObservableEmitter;Lcom/texa/carelib/core/ObservableObject;Ljava/util/List;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl$2;->val$emitter:Lio/reactivex/ObservableEmitter;

    iput-object p2, p0, Lcom/texa/careapp/carelib/CareObserverImpl$2;->val$observableObject:Lcom/texa/carelib/core/ObservableObject;

    iput-object p3, p0, Lcom/texa/careapp/carelib/CareObserverImpl$2;->val$properties:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl$2;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl$2;->val$observableObject:Lcom/texa/carelib/core/ObservableObject;

    invoke-interface {p1, p0}, Lcom/texa/carelib/core/ObservableObject;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl$2;->val$properties:Ljava/util/List;

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl$2;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
