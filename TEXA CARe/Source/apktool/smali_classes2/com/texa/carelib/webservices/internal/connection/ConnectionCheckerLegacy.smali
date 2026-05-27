.class Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;
.super Lcom/texa/carelib/core/ObservableObjectBase;
.source "ConnectionCheckerLegacy.java"

# interfaces
.implements Lcom/texa/carelib/webservices/internal/connection/ConnectionChecker;


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnectionCheckerLegacy"


# instance fields
.field private final mConnectivityChangeBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mIsConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/texa/carelib/core/ObservableObjectBase;-><init>()V

    .line 97
    new-instance v0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy$1;

    invoke-direct {v0, p0}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy$1;-><init>(Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;)V

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;->mConnectivityChangeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 30
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 32
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;->registerConnectivityChangeReceiver(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0, v0}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;->isConnected(Landroid/net/ConnectivityManager;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;->mIsConnected:Z

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;Landroid/net/ConnectivityManager;)Z
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;->isConnected(Landroid/net/ConnectivityManager;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;Z)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;->setConnected(Z)V

    return-void
.end method

.method private isConnected(Landroid/net/ConnectivityManager;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 55
    sget-object p1, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "connectivityManager should not be null!!!"

    invoke-static {p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerConnectivityChangeReceiver(Landroid/content/Context;)V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;->mConnectivityChangeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setConnected(Z)V
    .locals 3

    .line 87
    iget-boolean v0, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;->mIsConnected:Z

    if-eq v0, p1, :cond_0

    .line 89
    iput-boolean p1, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;->mIsConnected:Z

    .line 90
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;->mIsConnected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "com.texa.carelib.webservices.internal.connection.ConnectionChecker#PROPERTY_CONNECTED"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_0
    return-void
.end method

.method private unregisterConnectivityBroadcastReceiver(Landroid/content/Context;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;->mConnectivityChangeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 43
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 45
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;->unregisterConnectivityBroadcastReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;->mIsConnected:Z

    return v0
.end method
