.class Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy$1;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionCheckerLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;


# direct methods
.method constructor <init>(Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy$1;->this$0:Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy$1;->this$0:Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;

    invoke-static {p1}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;->access$000(Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;)Landroid/net/ConnectivityManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;->access$100(Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;Landroid/net/ConnectivityManager;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;->access$200(Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;Z)V

    :cond_0
    return-void
.end method
