.class Lcom/texa/careapp/carelib/CareObserverImpl$1;
.super Ljava/lang/Object;
.source "CareObserverImpl.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/carelib/CareObserverImpl;->lambda$observe$0(Lcom/texa/carelib/core/ObservableObject;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$emitter:Lio/reactivex/ObservableEmitter;

.field final synthetic val$observableObject:Lcom/texa/carelib/core/ObservableObject;

.field final synthetic val$property:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/reactivex/ObservableEmitter;Lcom/texa/carelib/core/ObservableObject;Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    iput-object p2, p0, Lcom/texa/careapp/carelib/CareObserverImpl$1;->val$observableObject:Lcom/texa/carelib/core/ObservableObject;

    iput-object p3, p0, Lcom/texa/careapp/carelib/CareObserverImpl$1;->val$property:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl$1;->val$observableObject:Lcom/texa/carelib/core/ObservableObject;

    invoke-interface {p1, p0}, Lcom/texa/carelib/core/ObservableObject;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl$1;->val$property:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
