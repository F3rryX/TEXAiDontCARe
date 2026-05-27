.class public Lcom/texa/careapp/networking/AuthorizationHeader;
.super Ljava/lang/Object;
.source "AuthorizationHeader.java"


# instance fields
.field private final mAccessToken:Lcom/texa/careapp/utils/authentication/AccessToken;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/utils/authentication/AccessToken;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/networking/AuthorizationHeader;->mAccessToken:Lcom/texa/careapp/utils/authentication/AccessToken;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/texa/careapp/networking/AuthorizationHeader;->mAccessToken:Lcom/texa/careapp/utils/authentication/AccessToken;

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/texa/careapp/networking/AuthorizationHeader;->mAccessToken:Lcom/texa/careapp/utils/authentication/AccessToken;

    iget-object v1, v1, Lcom/texa/careapp/utils/authentication/AccessToken;->tokenType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/networking/AuthorizationHeader;->mAccessToken:Lcom/texa/careapp/utils/authentication/AccessToken;

    iget-object v1, v1, Lcom/texa/careapp/utils/authentication/AccessToken;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
