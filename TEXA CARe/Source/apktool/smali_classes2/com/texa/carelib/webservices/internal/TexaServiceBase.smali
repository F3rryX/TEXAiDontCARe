.class public abstract Lcom/texa/carelib/webservices/internal/TexaServiceBase;
.super Ljava/lang/Object;
.source "TexaServiceBase.java"

# interfaces
.implements Lcom/texa/carelib/webservices/TexaService;


# static fields
.field public static final TAG:Ljava/lang/String; = "TexaServiceBase"


# instance fields
.field private mAccessToken:Lcom/texa/carelib/webservices/AccessToken;

.field private mCareProxy:Lcom/texa/carelib/care/profile/CareProxy;

.field private mServiceDelegate:Lcom/texa/carelib/webservices/TexaServiceDelegate;

.field private mSessionID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/TexaServiceBase;->mSessionID:Ljava/lang/String;

    return-void
.end method

.method public static getAuthenticationHost(Lcom/texa/carelib/webservices/TexaServiceDelegate;)Lcom/texa/carelib/webservices/HostInfo;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/TexaServiceDelegate;->getAuthenticationHost()Lcom/texa/carelib/webservices/HostInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/TexaServiceDelegate;->getServiceHost()Lcom/texa/carelib/webservices/HostInfo;

    move-result-object p0

    return-object p0

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/TexaServiceDelegate;->getAuthenticationHost()Lcom/texa/carelib/webservices/HostInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/carelib/webservices/HostInfo;->isValid(Lcom/texa/carelib/webservices/HostInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/TexaServiceDelegate;->getAuthenticationHost()Lcom/texa/carelib/webservices/HostInfo;

    move-result-object p0

    return-object p0

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/TexaServiceDelegate;->getServiceHost()Lcom/texa/carelib/webservices/HostInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getServiceHost(Lcom/texa/carelib/webservices/TexaServiceDelegate;)Lcom/texa/carelib/webservices/HostInfo;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/TexaServiceDelegate;->getServiceHost()Lcom/texa/carelib/webservices/HostInfo;

    move-result-object p0

    return-object p0
.end method

.method protected static isAccessTokenExpired(Lcom/texa/carelib/webservices/AccessToken;Ljava/util/Date;)Z
    .locals 6

    .line 148
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/AccessToken;->getGenerationTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/texa/carelib/webservices/AccessToken;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getAccessToken()Lcom/texa/carelib/webservices/AccessToken;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/TexaServiceBase;->mAccessToken:Lcom/texa/carelib/webservices/AccessToken;

    return-object v0
.end method

.method public getCareProxy()Lcom/texa/carelib/care/profile/CareProxy;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/TexaServiceBase;->mCareProxy:Lcom/texa/carelib/care/profile/CareProxy;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/TexaServiceBase;->mServiceDelegate:Lcom/texa/carelib/webservices/TexaServiceDelegate;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/texa/carelib/webservices/TexaServiceDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service delegate not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getServiceDelegate()Lcom/texa/carelib/webservices/TexaServiceDelegate;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/TexaServiceBase;->mServiceDelegate:Lcom/texa/carelib/webservices/TexaServiceDelegate;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/TexaServiceBase;->mSessionID:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/TexaServiceBase;->mAccessToken:Lcom/texa/carelib/webservices/AccessToken;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/carelib/webservices/internal/TexaServiceBase;->isAccessTokenExpired(Lcom/texa/carelib/webservices/AccessToken;Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSessionOpened()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/TexaServiceBase;->mSessionID:Ljava/lang/String;

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public resetSession()V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/TexaServiceBase;->setSessionID(Ljava/lang/String;)V

    return-void
.end method

.method public setAccessToken(Lcom/texa/carelib/webservices/AccessToken;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/TexaServiceBase;->mAccessToken:Lcom/texa/carelib/webservices/AccessToken;

    return-void
.end method

.method public setCareProxy(Lcom/texa/carelib/care/profile/CareProxy;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/TexaServiceBase;->mCareProxy:Lcom/texa/carelib/care/profile/CareProxy;

    return-void
.end method

.method public setServiceDelegate(Lcom/texa/carelib/webservices/TexaServiceDelegate;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/TexaServiceBase;->mServiceDelegate:Lcom/texa/carelib/webservices/TexaServiceDelegate;

    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 3

    .line 55
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/TexaServiceBase;->mSessionID:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/texa/carelib/webservices/internal/TexaServiceBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Service: New SessionID: %s"

    invoke-static {v0, p1, v1}, Lcom/texa/carelib/core/logging/CareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
