.class public Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;
.super Ljava/lang/Object;
.source "HttpHeaderUserAgentBuilder.java"


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mCAReLibName:Ljava/lang/String;

.field private mCAReLibVersion:Ljava/lang/String;

.field private mOSVersion:Ljava/lang/String;

.field private mVersionCode:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Ljava/lang/String;
    .locals 6

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;->mAppName:Ljava/lang/String;

    invoke-static {v1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const-string v2, " "

    const-string v3, "/"

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;->mAppVersion:Ljava/lang/String;

    invoke-static {v1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-wide v4, p0, Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;->mVersionCode:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;->mCAReLibName:Ljava/lang/String;

    invoke-static {v1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;->mCAReLibVersion:Ljava/lang/String;

    invoke-static {v1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;->mCAReLibName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;->mCAReLibVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;->mOSVersion:Ljava/lang/String;

    invoke-static {v1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Android"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;->mOSVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAppInfo(Ljava/lang/String;Ljava/lang/String;J)Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;
    .locals 2

    const-string v0, " "

    const-string v1, ""

    .line 29
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;->mAppName:Ljava/lang/String;

    .line 30
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;->mAppVersion:Ljava/lang/String;

    .line 31
    iput-wide p3, p0, Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;->mVersionCode:J

    return-object p0
.end method

.method public setCAReLibInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;
    .locals 2

    const-string v0, " "

    const-string v1, ""

    .line 43
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;->mCAReLibName:Ljava/lang/String;

    .line 44
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;->mCAReLibVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setOSVersion(Ljava/lang/String;)Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;
    .locals 2

    const-string v0, " "

    const-string v1, ""

    .line 54
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;->mOSVersion:Ljava/lang/String;

    return-object p0
.end method
