.class Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureResponse;
.super Ljava/lang/Object;
.source "HttpServiceAuthenticationProcedure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthenticationProcedureResponse"
.end annotation


# instance fields
.field private mAccessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "access_token"
    .end annotation
.end field

.field private mSessionLifeTime:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expires_in"
    .end annotation
.end field

.field private mTokenType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token_type"
    .end annotation
.end field

.field final synthetic this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;)V
    .locals 2

    .line 459
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureResponse;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 460
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureResponse;->mAccessToken:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 461
    iput-wide v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureResponse;->mSessionLifeTime:J

    .line 462
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureResponse;->mTokenType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureResponse;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionLifeTime()J
    .locals 2

    .line 442
    iget-wide v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureResponse;->mSessionLifeTime:J

    return-wide v0
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureResponse;->mTokenType:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureResponse;->mAccessToken:Ljava/lang/String;

    return-void
.end method

.method public setSessionLifeTime(I)V
    .locals 2

    int-to-long v0, p1

    .line 453
    iput-wide v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureResponse;->mSessionLifeTime:J

    return-void
.end method

.method public setTokenType(Ljava/lang/String;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureResponse;->mTokenType:Ljava/lang/String;

    return-void
.end method
