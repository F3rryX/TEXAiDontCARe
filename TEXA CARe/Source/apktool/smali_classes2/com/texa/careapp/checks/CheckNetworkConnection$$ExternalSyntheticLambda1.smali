.class public final synthetic Lcom/texa/careapp/checks/CheckNetworkConnection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Cancellable;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/checks/CheckNetworkConnection;

.field public final synthetic f$1:Landroid/content/BroadcastReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/checks/CheckNetworkConnection;Landroid/content/BroadcastReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/checks/CheckNetworkConnection$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/checks/CheckNetworkConnection;

    iput-object p2, p0, Lcom/texa/careapp/checks/CheckNetworkConnection$$ExternalSyntheticLambda1;->f$1:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/checks/CheckNetworkConnection$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/checks/CheckNetworkConnection;

    iget-object v1, p0, Lcom/texa/careapp/checks/CheckNetworkConnection$$ExternalSyntheticLambda1;->f$1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/checks/CheckNetworkConnection;->lambda$networkObservable$2$com-texa-careapp-checks-CheckNetworkConnection(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
