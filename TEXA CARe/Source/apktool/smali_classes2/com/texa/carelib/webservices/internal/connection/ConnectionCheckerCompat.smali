.class public Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerCompat;
.super Ljava/lang/Object;
.source "ConnectionCheckerCompat.java"

# interfaces
.implements Lcom/texa/carelib/webservices/internal/connection/ConnectionChecker;


# instance fields
.field private final mConnectionChecker:Lcom/texa/carelib/webservices/internal/connection/ConnectionChecker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 22
    new-instance v0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;

    invoke-direct {v0, p1}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerN;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerCompat;->mConnectionChecker:Lcom/texa/carelib/webservices/internal/connection/ConnectionChecker;

    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;

    invoke-direct {v0, p1}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerLegacy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerCompat;->mConnectionChecker:Lcom/texa/carelib/webservices/internal/connection/ConnectionChecker;

    :goto_0
    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerCompat;->mConnectionChecker:Lcom/texa/carelib/webservices/internal/connection/ConnectionChecker;

    invoke-interface {v0, p1}, Lcom/texa/carelib/webservices/internal/connection/ConnectionChecker;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    move-result-object p1

    return-object p1
.end method

.method public addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerCompat;->mConnectionChecker:Lcom/texa/carelib/webservices/internal/connection/ConnectionChecker;

    invoke-interface {v0, p1, p2}, Lcom/texa/carelib/webservices/internal/connection/ConnectionChecker;->addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    move-result-object p1

    return-object p1
.end method

.method public isConnected()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerCompat;->mConnectionChecker:Lcom/texa/carelib/webservices/internal/connection/ConnectionChecker;

    invoke-interface {v0}, Lcom/texa/carelib/webservices/internal/connection/ConnectionChecker;->isConnected()Z

    move-result v0

    return v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerCompat;->mConnectionChecker:Lcom/texa/carelib/webservices/internal/connection/ConnectionChecker;

    invoke-interface {v0, p1}, Lcom/texa/carelib/webservices/internal/connection/ConnectionChecker;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method public removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerCompat;->mConnectionChecker:Lcom/texa/carelib/webservices/internal/connection/ConnectionChecker;

    invoke-interface {v0, p1, p2}, Lcom/texa/carelib/webservices/internal/connection/ConnectionChecker;->removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    return-void
.end method
