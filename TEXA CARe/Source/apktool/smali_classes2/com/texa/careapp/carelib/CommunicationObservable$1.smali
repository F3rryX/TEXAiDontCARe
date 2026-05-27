.class Lcom/texa/careapp/carelib/CommunicationObservable$1;
.super Ljava/lang/Object;
.source "CommunicationObservable.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/carelib/CommunicationObservable;->connect(Lcom/texa/carelib/communication/DeviceInfo;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lcom/texa/carelib/communication/Communication;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/carelib/CommunicationObservable;

.field final synthetic val$deviceInfo:Lcom/texa/carelib/communication/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/texa/careapp/carelib/CommunicationObservable$1;->this$0:Lcom/texa/careapp/carelib/CommunicationObservable;

    iput-object p2, p0, Lcom/texa/careapp/carelib/CommunicationObservable$1;->val$deviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/texa/careapp/carelib/CommunicationObservable$1;->this$0:Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {v0}, Lcom/texa/careapp/carelib/CommunicationObservable;->access$000(Lcom/texa/careapp/carelib/CommunicationObservable;)Lcom/texa/carelib/communication/Communication;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isCareConnected(Lcom/texa/carelib/communication/Communication;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lcom/texa/careapp/carelib/CommunicationObservable;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "already connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/texa/careapp/carelib/CommunicationObservable$1;->this$0:Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {v0}, Lcom/texa/careapp/carelib/CommunicationObservable;->access$000(Lcom/texa/careapp/carelib/CommunicationObservable;)Lcom/texa/carelib/communication/Communication;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 102
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    .line 106
    :cond_0
    new-instance v0, Lcom/texa/careapp/carelib/CommunicationObservable$1$1;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/carelib/CommunicationObservable$1$1;-><init>(Lcom/texa/careapp/carelib/CommunicationObservable$1;Lio/reactivex/ObservableEmitter;)V

    .line 130
    iget-object p1, p0, Lcom/texa/careapp/carelib/CommunicationObservable$1;->this$0:Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1}, Lcom/texa/careapp/carelib/CommunicationObservable;->access$000(Lcom/texa/careapp/carelib/CommunicationObservable;)Lcom/texa/carelib/communication/Communication;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/texa/carelib/communication/Communication;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    .line 132
    :try_start_0
    iget-object p1, p0, Lcom/texa/careapp/carelib/CommunicationObservable$1;->this$0:Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1}, Lcom/texa/careapp/carelib/CommunicationObservable;->access$000(Lcom/texa/careapp/carelib/CommunicationObservable;)Lcom/texa/carelib/communication/Communication;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/careapp/carelib/CommunicationObservable$1;->val$deviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    invoke-interface {p1, v0}, Lcom/texa/carelib/communication/Communication;->connect(Lcom/texa/carelib/communication/DeviceInfo;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 134
    invoke-virtual {p1}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    :goto_0
    return-void
.end method
