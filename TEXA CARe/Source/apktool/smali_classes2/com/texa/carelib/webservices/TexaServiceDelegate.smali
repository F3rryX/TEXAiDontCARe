.class public abstract Lcom/texa/carelib/webservices/TexaServiceDelegate;
.super Ljava/lang/Object;
.source "TexaServiceDelegate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getApplicationContext()Landroid/content/Context;
.end method

.method public abstract getAuthenticationHost()Lcom/texa/carelib/webservices/HostInfo;
.end method

.method public abstract getClientID()Ljava/lang/String;
.end method

.method public abstract getClientSecret()Ljava/lang/String;
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getServiceHost()Lcom/texa/carelib/webservices/HostInfo;
.end method

.method public useDirectAuthentication()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
