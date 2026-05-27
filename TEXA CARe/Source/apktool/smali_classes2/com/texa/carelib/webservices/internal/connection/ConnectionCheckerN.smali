.class Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;
.super Lcom/texa/carelib/core/ObservableObjectBase;
.source "ConnectionCheckerN.java"

# interfaces
.implements Lcom/texa/carelib/webservices/internal/connection/ConnectionChecker;


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnectionCheckerN"


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mIsConnected:Z

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/texa/carelib/core/ObservableObjectBase;-><init>()V

    .line 69
    new-instance v0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN$1;

    invoke-direct {v0, p0}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN$1;-><init>(Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;)V

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const-string v0, "connectivity"

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 34
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->isDefaultNetworkActive()Z

    move-result p1

    iput-boolean p1, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;->mIsConnected:Z

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;->setConnected(Z)V

    return-void
.end method

.method private setConnected(Z)V
    .locals 3

    .line 59
    iget-boolean v0, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;->mIsConnected:Z

    if-eq v0, p1, :cond_0

    .line 61
    iput-boolean p1, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;->mIsConnected:Z

    .line 62
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;->mIsConnected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "com.texa.carelib.webservices.internal.connection.ConnectionChecker#PROPERTY_CONNECTED"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 47
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 48
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;->mIsConnected:Z

    return v0
.end method
