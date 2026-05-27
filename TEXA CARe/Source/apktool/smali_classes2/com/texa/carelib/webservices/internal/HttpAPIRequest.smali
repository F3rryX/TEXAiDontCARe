.class public Lcom/texa/carelib/webservices/internal/HttpAPIRequest;
.super Ljava/lang/Object;
.source "HttpAPIRequest.java"


# instance fields
.field private final mFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mHttpMethod:Ljava/lang/String;

.field private final mID:Ljava/lang/String;

.field private final mIsSessionProtected:Z

.field private mLastHttpResponseStatus:I

.field private final mListener:Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;

.field private final mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/texa/carelib/webservices/internal/HttpAPIRequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->mHttpMethod:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->mPath:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->mFields:Ljava/util/Map;

    .line 40
    iput-boolean p4, p0, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->mIsSessionProtected:Z

    .line 41
    iput-object p5, p0, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->mListener:Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;

    .line 43
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->mID:Ljava/lang/String;

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->mLastHttpResponseStatus:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 121
    instance-of v0, p1, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 124
    :cond_0
    check-cast p1, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

    .line 126
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->mID:Ljava/lang/String;

    iget-object p1, p1, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->mID:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public fireCompleted(Ljava/lang/String;)V
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getListener()Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;->onCompleted(Ljava/lang/String;)V

    return-void
.end method

.method public fireError(Lcom/texa/carelib/core/CareError;)V
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getListener()Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;->onError(Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method public getFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->mFields:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->mHttpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getLastHttpResponseStatus()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->mLastHttpResponseStatus:I

    return v0
.end method

.method public getListener()Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->mListener:Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public isSessionProtected()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->mIsSessionProtected:Z

    return v0
.end method

.method public setLastHttpResponseStatus(I)Lcom/texa/carelib/webservices/internal/HttpAPIRequest;
    .locals 0

    .line 101
    iput p1, p0, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->mLastHttpResponseStatus:I

    return-object p0
.end method
