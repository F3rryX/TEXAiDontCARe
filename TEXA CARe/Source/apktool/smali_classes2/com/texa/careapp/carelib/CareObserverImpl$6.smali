.class Lcom/texa/careapp/carelib/CareObserverImpl$6;
.super Ljava/lang/Object;
.source "CareObserverImpl.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/carelib/CareObserverImpl;->lambda$careNotConnected$29(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/carelib/CareObserverImpl;

.field final synthetic val$emitter:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lcom/texa/careapp/carelib/CareObserverImpl;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl$6;->this$0:Lcom/texa/careapp/carelib/CareObserverImpl;

    iput-object p2, p0, Lcom/texa/careapp/carelib/CareObserverImpl$6;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 2

    .line 480
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    .line 482
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.texa.carelib.communication.Communication#PROPERTY_STATUS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 483
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl$6;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 484
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl$6;->this$0:Lcom/texa/careapp/carelib/CareObserverImpl;

    invoke-static {p1}, Lcom/texa/careapp/carelib/CareObserverImpl;->access$000(Lcom/texa/careapp/carelib/CareObserverImpl;)Lcom/texa/carelib/communication/Communication;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/carelib/communication/Communication;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    goto :goto_0

    .line 486
    :cond_0
    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-eq p1, v1, :cond_1

    .line 487
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl$6;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
