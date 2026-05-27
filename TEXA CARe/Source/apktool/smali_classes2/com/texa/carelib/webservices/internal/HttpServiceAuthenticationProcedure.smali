.class Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;
.super Lcom/texa/carelib/core/ObservableObjectBase;
.source "HttpServiceAuthenticationProcedure.java"

# interfaces
.implements Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureResponse;,
        Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRequest;,
        Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;
    }
.end annotation


# static fields
.field private static final PATH:Ljava/lang/String; = "/oauth2/token"

.field public static final TAG:Ljava/lang/String; = "HttpServiceAuthenticationProcedure"


# instance fields
.field private final mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

.field private mStatus:Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/webservices/internal/HttpTexaService;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/texa/carelib/core/ObservableObjectBase;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    .line 87
    sget-object p1, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;->Undefined:Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->mStatus:Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->getError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->fireAuthenticationCompleted(Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method static synthetic access$300(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/webservices/TexaServiceDelegate;)Z
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->isValid(Lcom/texa/carelib/webservices/TexaServiceDelegate;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->getConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method

.method private fireAuthenticationCompleted(Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/core/CareError;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;",
            ">;",
            "Lcom/texa/carelib/core/CareError;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 152
    sget-object v1, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Service Authentication completed"

    invoke-static {v1, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    :cond_0
    sget-object v1, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    const-string v0, "Service Authentication completed with error. Error:%s."

    invoke-static {v1, v0, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-nez p2, :cond_1

    .line 158
    sget-object v0, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;->Completed:Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->setStatus(Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;)V

    goto :goto_1

    .line 160
    :cond_1
    sget-object v0, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;->Error:Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->setStatus(Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;)V

    .line 163
    :goto_1
    new-instance v0, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;

    invoke-direct {v0, p0, p2}, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureResponse;
    .locals 2

    .line 172
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 173
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 176
    const-class v1, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureResponse;

    return-object p0
.end method

.method private getConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->getService()Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->getService()Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 103
    :goto_0
    invoke-static {}, Lcom/texa/carelib/core/CareLibConfig;->getServiceConnectionTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 104
    invoke-static {}, Lcom/texa/carelib/core/CareLibConfig;->getServiceReadTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 106
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->prepareUrl(Landroid/content/Context;Ljava/net/URLConnection;)V

    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    .line 108
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "POST"

    .line 109
    invoke-static {p1, v0}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->setRequestMethod(Ljava/net/URLConnection;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 113
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    return-object p1
.end method

.method private getError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;
    .locals 3

    .line 91
    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v1, 0x2

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/texa/carelib/webservices/R$string;->error_service_authentication_fails:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/texa/carelib/core/CareError$Builder;->setInnerError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    return-object p1
.end method

.method private isValid(Lcom/texa/carelib/webservices/TexaServiceDelegate;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/TexaServiceDelegate;->getClientID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/TexaServiceDelegate;->getClientSecret()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public authenticate(Lcom/texa/carelib/webservices/TexaServiceDelegate;Lcom/texa/carelib/core/Callback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/webservices/TexaServiceDelegate;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "delegate cannot be null"

    .line 132
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;->Pending:Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->getStatus()Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 137
    sget-object p1, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Object;

    const-string v1, "Operations is already running."

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p2

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;-><init>(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/webservices/TexaServiceDelegate;Lcom/texa/carelib/core/Callback;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_authenticate"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->mThread:Ljava/lang/Thread;

    const/4 p1, 0x1

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 144
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->mThread:Ljava/lang/Thread;

    new-instance v1, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/core/Callback;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 145
    iget-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->mThread:Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return p1
.end method

.method public getService()Lcom/texa/carelib/webservices/internal/HttpTexaService;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    return-object v0
.end method

.method public getStatus()Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->mStatus:Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    return-object v0
.end method

.method public final join(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p1, p2}, Ljava/lang/Thread;->join(J)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$authenticate$0$com-texa-carelib-webservices-internal-HttpServiceAuthenticationProcedure(Lcom/texa/carelib/core/Callback;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 144
    new-instance p2, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v0, 0x2

    const/16 v1, 0xa

    invoke-direct {p2, v0, v1}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p2, p3}, Lcom/texa/carelib/core/CareError$Builder;->setException(Ljava/lang/Throwable;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->fireAuthenticationCompleted(Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method protected setStatus(Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->mStatus:Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    if-eq v0, p1, :cond_0

    .line 68
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->mStatus:Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    .line 69
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->mStatus:Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    const-string v2, "com.texa.carelib.webservices.ServiceAuthenticationProcedure#PROPERTY_STATUS"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_0
    return-void
.end method
