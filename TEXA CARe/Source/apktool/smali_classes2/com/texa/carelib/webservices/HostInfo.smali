.class public Lcom/texa/carelib/webservices/HostInfo;
.super Ljava/lang/Object;
.source "HostInfo.java"


# static fields
.field private static final DEFAULT_SCHEME:Ljava/lang/String; = "https"


# instance fields
.field private mHostName:Ljava/lang/String;

.field private mScheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/texa/carelib/webservices/HostInfo;->mHostName:Ljava/lang/String;

    const-string v0, "https"

    .line 23
    iput-object v0, p0, Lcom/texa/carelib/webservices/HostInfo;->mScheme:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/texa/carelib/webservices/HostInfo;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/texa/carelib/webservices/HostInfo;->mHostName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/texa/carelib/webservices/HostInfo;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/texa/carelib/webservices/HostInfo;->mHostName:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/texa/carelib/webservices/HostInfo;->mScheme:Ljava/lang/String;

    return-void
.end method

.method public static isValid(Lcom/texa/carelib/webservices/HostInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/HostInfo;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/texa/carelib/webservices/HostInfo;->getHostName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 105
    :cond_1
    check-cast p1, Lcom/texa/carelib/webservices/HostInfo;

    .line 107
    iget-object v2, p0, Lcom/texa/carelib/webservices/HostInfo;->mHostName:Ljava/lang/String;

    iget-object v3, p1, Lcom/texa/carelib/webservices/HostInfo;->mHostName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/webservices/HostInfo;->mScheme:Ljava/lang/String;

    iget-object p1, p1, Lcom/texa/carelib/webservices/HostInfo;->mScheme:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/texa/carelib/webservices/HostInfo;->mHostName:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/texa/carelib/webservices/HostInfo;->mScheme:Ljava/lang/String;

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https"

    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/webservices/HostInfo;->mScheme:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lcom/texa/carelib/webservices/HostInfo;->mHostName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/webservices/HostInfo;->mScheme:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/Utils;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setHostName(Ljava/lang/String;)Lcom/texa/carelib/webservices/HostInfo;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/texa/carelib/webservices/HostInfo;->mHostName:Ljava/lang/String;

    return-object p0
.end method

.method public setScheme(Ljava/lang/String;)Lcom/texa/carelib/webservices/HostInfo;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/texa/carelib/webservices/HostInfo;->mScheme:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/HostInfo;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/HostInfo;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
