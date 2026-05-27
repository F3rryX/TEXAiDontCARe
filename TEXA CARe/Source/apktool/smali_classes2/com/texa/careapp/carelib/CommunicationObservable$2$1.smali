.class Lcom/texa/careapp/carelib/CommunicationObservable$2$1;
.super Ljava/lang/Object;
.source "CommunicationObservable.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/carelib/CommunicationObservable$2;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/texa/careapp/carelib/CommunicationObservable$2;

.field final synthetic val$emitter:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lcom/texa/careapp/carelib/CommunicationObservable$2;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/texa/careapp/carelib/CommunicationObservable$2$1;->this$1:Lcom/texa/careapp/carelib/CommunicationObservable$2;

    iput-object p2, p0, Lcom/texa/careapp/carelib/CommunicationObservable$2$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 2

    .line 159
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    .line 161
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.texa.carelib.communication.Communication#PROPERTY_STATUS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 162
    iget-object p1, p0, Lcom/texa/careapp/carelib/CommunicationObservable$2$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/texa/careapp/carelib/CommunicationObservable$2$1;->this$1:Lcom/texa/careapp/carelib/CommunicationObservable$2;

    iget-object p1, p1, Lcom/texa/careapp/carelib/CommunicationObservable$2;->this$0:Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1}, Lcom/texa/careapp/carelib/CommunicationObservable;->access$000(Lcom/texa/careapp/carelib/CommunicationObservable;)Lcom/texa/carelib/communication/Communication;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/carelib/communication/Communication;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void

    .line 167
    :cond_0
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isCareReadyForScan(Lcom/texa/carelib/communication/Communication;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 168
    iget-object p1, p0, Lcom/texa/careapp/carelib/CommunicationObservable$2$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 169
    iget-object p1, p0, Lcom/texa/careapp/carelib/CommunicationObservable$2$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    .line 170
    iget-object p1, p0, Lcom/texa/careapp/carelib/CommunicationObservable$2$1;->this$1:Lcom/texa/careapp/carelib/CommunicationObservable$2;

    iget-object p1, p1, Lcom/texa/careapp/carelib/CommunicationObservable$2;->this$0:Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1}, Lcom/texa/careapp/carelib/CommunicationObservable;->access$000(Lcom/texa/careapp/carelib/CommunicationObservable;)Lcom/texa/carelib/communication/Communication;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/carelib/communication/Communication;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    :cond_1
    return-void
.end method
