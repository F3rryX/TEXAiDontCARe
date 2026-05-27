.class Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ConnectionCheckerN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;


# direct methods
.method constructor <init>(Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN$1;->this$0:Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 73
    invoke-static {}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;->access$000()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Internet connection: available"

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN$1;->this$0:Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;->access$100(Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;Z)V

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 2

    .line 93
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    .line 100
    invoke-static {}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;->access$000()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "Internet connection: losing in %1$dms"

    invoke-static {p1, p2, v0}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    .line 86
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 87
    invoke-static {}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;->access$000()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Internet connection: lost."

    invoke-static {p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN$1;->this$0:Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;

    invoke-static {p1, v0}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;->access$100(Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;Z)V

    return-void
.end method

.method public onUnavailable()V
    .locals 4

    .line 79
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 80
    invoke-static {}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Internet connection: not available."

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN$1;->this$0:Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;

    invoke-static {v0, v1}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;->access$100(Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;Z)V

    return-void
.end method
