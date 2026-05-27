.class Lcom/texa/careapp/carelib/CommunicationObservable$1$1;
.super Ljava/lang/Object;
.source "CommunicationObservable.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/carelib/CommunicationObservable$1;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/texa/careapp/carelib/CommunicationObservable$1;

.field final synthetic val$emitter:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lcom/texa/careapp/carelib/CommunicationObservable$1;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/texa/careapp/carelib/CommunicationObservable$1$1;->this$1:Lcom/texa/careapp/carelib/CommunicationObservable$1;

    iput-object p2, p0, Lcom/texa/careapp/carelib/CommunicationObservable$1$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 2

    .line 109
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    .line 111
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.texa.carelib.communication.Communication#PROPERTY_STATUS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 112
    iget-object p1, p0, Lcom/texa/careapp/carelib/CommunicationObservable$1$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/texa/careapp/carelib/CommunicationObservable$1$1;->this$1:Lcom/texa/careapp/carelib/CommunicationObservable$1;

    iget-object p1, p1, Lcom/texa/careapp/carelib/CommunicationObservable$1;->this$0:Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1}, Lcom/texa/careapp/carelib/CommunicationObservable;->access$000(Lcom/texa/careapp/carelib/CommunicationObservable;)Lcom/texa/carelib/communication/Communication;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/carelib/communication/Communication;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void

    .line 117
    :cond_0
    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne p1, v1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/texa/careapp/carelib/CommunicationObservable$1$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 119
    iget-object p1, p0, Lcom/texa/careapp/carelib/CommunicationObservable$1$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    .line 122
    :cond_1
    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTION_FAILED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne p1, v0, :cond_2

    .line 123
    iget-object p1, p0, Lcom/texa/careapp/carelib/CommunicationObservable$1$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    new-instance v0, Lcom/texa/careapp/exceptions/CareConnectionFailedException;

    iget-object v1, p0, Lcom/texa/careapp/carelib/CommunicationObservable$1$1;->this$1:Lcom/texa/careapp/carelib/CommunicationObservable$1;

    iget-object v1, v1, Lcom/texa/careapp/carelib/CommunicationObservable$1;->this$0:Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {v1}, Lcom/texa/careapp/carelib/CommunicationObservable;->access$200(Lcom/texa/careapp/carelib/CommunicationObservable;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/texa/careapp/exceptions/CareConnectionFailedException;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    .line 124
    iget-object p1, p0, Lcom/texa/careapp/carelib/CommunicationObservable$1$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    :cond_2
    return-void
.end method
