.class Lcom/texa/careapp/checks/CheckNetworkConnection$1;
.super Landroid/content/BroadcastReceiver;
.source "CheckNetworkConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/checks/CheckNetworkConnection;->lambda$networkObservable$3(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/checks/CheckNetworkConnection;

.field final synthetic val$subscriber:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lcom/texa/careapp/checks/CheckNetworkConnection;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/texa/careapp/checks/CheckNetworkConnection$1;->this$0:Lcom/texa/careapp/checks/CheckNetworkConnection;

    iput-object p2, p0, Lcom/texa/careapp/checks/CheckNetworkConnection$1;->val$subscriber:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/texa/careapp/checks/CheckNetworkConnection$1;->val$subscriber:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method
