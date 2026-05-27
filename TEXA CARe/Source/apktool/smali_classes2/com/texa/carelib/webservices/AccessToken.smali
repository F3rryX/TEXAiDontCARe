.class public Lcom/texa/carelib/webservices/AccessToken;
.super Ljava/lang/Object;
.source "AccessToken.java"


# instance fields
.field private mDuration:J

.field private mGenerationTime:Ljava/util/Date;

.field private mToken:Ljava/lang/String;

.field private mTokenType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 30
    invoke-direct {p0, v0, v0}, Lcom/texa/carelib/webservices/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/texa/carelib/webservices/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/webservices/AccessToken;->mGenerationTime:Ljava/util/Date;

    .line 39
    iput-object p1, p0, Lcom/texa/carelib/webservices/AccessToken;->mTokenType:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/texa/carelib/webservices/AccessToken;->mToken:Ljava/lang/String;

    .line 41
    iput-wide p3, p0, Lcom/texa/carelib/webservices/AccessToken;->mDuration:J

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/texa/carelib/webservices/AccessToken;->mDuration:J

    return-wide v0
.end method

.method public getGenerationTime()Ljava/util/Date;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/texa/carelib/webservices/AccessToken;->mGenerationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/texa/carelib/webservices/AccessToken;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/texa/carelib/webservices/AccessToken;->mTokenType:Ljava/lang/String;

    return-object v0
.end method
