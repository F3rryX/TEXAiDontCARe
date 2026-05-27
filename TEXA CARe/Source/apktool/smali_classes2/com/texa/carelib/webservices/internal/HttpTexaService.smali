.class public Lcom/texa/carelib/webservices/internal/HttpTexaService;
.super Lcom/texa/carelib/webservices/internal/TexaServiceBase;
.source "HttpTexaService.java"


# static fields
.field private static final ACCEPT_JSON:Ljava/lang/String; = "application/json"

.field public static final ACCEPT_TX_CARE:Ljava/lang/String; = "application/vnd.tx-care;version=1"

.field public static final CARE_AUTHENTICATION_TIMEOUT:I = 0xea60

.field private static final CONTENT_TYPE:Ljava/lang/String; = "application/json"

.field private static final DEVICE_FAMILY_ANDROID:Ljava/lang/String; = "Android"

.field public static final FIELD_API_ERROR:Ljava/lang/String; = "X-API-Error"

.field public static final FIELD_API_ERROR_DETAIL:Ljava/lang/String; = "X-API-ErrorDetail"

.field public static final HEADER_DEVICE_FAMILY:Ljava/lang/String; = "Device-Family"

.field public static final KEY_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field public static final KEY_HWID:Ljava/lang/String; = "CARe-HWID"

.field public static final KEY_SESSION_ID:Ljava/lang/String; = "CARe-SID"

.field public static final SESSION_CREATION_TIMEOUT:I = 0xea60

.field public static final TAG:Ljava/lang/String; = "HttpTexaService"


# instance fields
.field private mConnectionCheckerCompat:Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerCompat;

.field private final mDTCResolutionProcedure:Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;

.field private final mFieldsAsHeader:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHttpServiceImpactDetection:Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection;

.field private mPendingRequest:Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

.field private mProxy:Ljava/net/Proxy;

.field private final mRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/webservices/internal/HttpAPIRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mServiceFirmwareDownloadProcedure:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;

.field private final mServiceFirmwareInfoProcedure:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

.field private final mServiceProtectionProcedure:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

.field private final mServiceVehicleConfigurationInfo:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;

.field private final mServiceVehicleInfo:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;

.field private final mTexaServiceHttpAuthenticationProcedure:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

.field private final mVehicleIdentificationProcedure:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/texa/carelib/webservices/internal/TexaServiceBase;-><init>()V

    .line 64
    new-instance p1, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;

    invoke-direct {p1, p0}, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;-><init>(Lcom/texa/carelib/webservices/internal/HttpTexaService;)V

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mDTCResolutionProcedure:Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;

    .line 65
    new-instance p1, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    invoke-direct {p1, p0}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;-><init>(Lcom/texa/carelib/webservices/internal/HttpTexaService;)V

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mTexaServiceHttpAuthenticationProcedure:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    .line 66
    new-instance p1, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    invoke-direct {p1, p0}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;-><init>(Lcom/texa/carelib/webservices/internal/HttpTexaService;)V

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mServiceProtectionProcedure:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    .line 67
    new-instance p1, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;

    invoke-direct {p1, p0}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;-><init>(Lcom/texa/carelib/webservices/internal/HttpTexaService;)V

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mServiceVehicleInfo:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;

    .line 68
    new-instance p1, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;

    invoke-direct {p1, p0}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;-><init>(Lcom/texa/carelib/webservices/internal/HttpTexaService;)V

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mServiceFirmwareDownloadProcedure:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;

    .line 69
    new-instance p1, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    invoke-direct {p1, p0}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;-><init>(Lcom/texa/carelib/webservices/internal/HttpTexaService;)V

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mServiceFirmwareInfoProcedure:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    .line 70
    new-instance p1, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;

    invoke-direct {p1, p0}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;-><init>(Lcom/texa/carelib/webservices/internal/HttpTexaService;)V

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mServiceVehicleConfigurationInfo:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;

    .line 71
    new-instance p1, Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection;

    invoke-direct {p1, p0}, Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection;-><init>(Lcom/texa/carelib/webservices/internal/HttpTexaService;)V

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mHttpServiceImpactDetection:Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection;

    .line 72
    new-instance p1, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;

    invoke-direct {p1, p0}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;-><init>(Lcom/texa/carelib/webservices/internal/HttpTexaService;)V

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mVehicleIdentificationProcedure:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mRequestList:Ljava/util/List;

    .line 75
    new-instance p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mRequestListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mFieldsAsHeader:Ljava/util/List;

    .line 78
    invoke-direct {p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->initHeaderFields()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/net/Proxy;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;-><init>(Landroid/content/Context;)V

    .line 90
    iput-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mProxy:Ljava/net/Proxy;

    return-void
.end method

.method private accessAPIWithRequest(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;Z)V
    .locals 9

    .line 457
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->removeRequest(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;)V

    .line 459
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mPendingRequest:Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mRequestList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    goto/16 :goto_0

    .line 464
    :cond_0
    sget-object p2, Lcom/texa/carelib/webservices/internal/HttpTexaService;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getHttpMethod()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getID()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mRequestList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "Executing request %s[method=%s,ID=%s]. Current request queue size is:%d."

    invoke-static {p2, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mPendingRequest:Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

    .line 468
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/texa/carelib/webservices/internal/HttpRequestTask;

    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getServiceDelegate()Lcom/texa/carelib/webservices/TexaServiceDelegate;

    move-result-object v7

    invoke-static {v7}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getServiceHost(Lcom/texa/carelib/webservices/TexaServiceDelegate;)Lcom/texa/carelib/webservices/HostInfo;

    move-result-object v7

    iget-object v8, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mPendingRequest:Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

    invoke-direct {v2, p0, v7, v8}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;-><init>(Lcom/texa/carelib/webservices/internal/HttpTexaService;Lcom/texa/carelib/webservices/HostInfo;Lcom/texa/carelib/webservices/internal/HttpAPIRequest;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_accessAPIWithRequest_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mPendingRequest:Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

    invoke-virtual {v8}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v2, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 470
    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 471
    new-instance v2, Lcom/texa/carelib/webservices/internal/HttpTexaService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/webservices/internal/HttpTexaService;)V

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 476
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-array v0, v0, [Ljava/lang/Object;

    .line 478
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getHttpMethod()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getID()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v5

    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mRequestList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v6

    const-string p1, "Request started %s[method=%s,ID=%s]. Current request queue size is:%d."

    invoke-static {p2, p1, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 460
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->enqueueRequest(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;)V

    return-void
.end method

.method private dequeueRequest()Lcom/texa/carelib/webservices/internal/HttpAPIRequest;
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mRequestListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 314
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->TAG:Ljava/lang/String;

    const-string v2, "Processing next request..."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mRequestList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

    goto :goto_0

    .line 319
    :cond_0
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->TAG:Ljava/lang/String;

    const-string v2, "No request pending..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 323
    :goto_0
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mRequestListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mRequestListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private enqueueRequest(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;)V
    .locals 6

    .line 290
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mRequestListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v0, 0x0

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mRequestList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v1, Lcom/texa/carelib/webservices/internal/HttpTexaService;->TAG:Ljava/lang/String;

    const-string v2, "Adding request %s[method=%s,ID=%s] to the queue. Current request queue size is:%d."

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getHttpMethod()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getID()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x3

    iget-object v4, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mRequestList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-static {v1, v2, v3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 296
    :try_start_1
    sget-object v1, Lcom/texa/carelib/webservices/internal/HttpTexaService;->TAG:Ljava/lang/String;

    const-string v2, "Could not process the request."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    :goto_0
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mRequestListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mRequestListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method private static getAndroidOSVersion()Ljava/lang/String;
    .locals 1

    .line 588
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private static getApplicationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 595
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 596
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getApplicationVersionCode(Landroid/content/Context;)J
    .locals 3

    .line 618
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 619
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 621
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 622
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 624
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Unable to get app version code."

    invoke-static {v0, p0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method private static getApplicationVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 604
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    .line 606
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 607
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 609
    sget-object v1, Lcom/texa/carelib/webservices/internal/HttpTexaService;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Unable to get app version name."

    invoke-static {v1, p0, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private getFieldsAsHeader()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mFieldsAsHeader:Ljava/util/List;

    return-object v0
.end method

.method private static getHeaderAccept()Ljava/lang/String;
    .locals 2

    .line 554
    new-instance v0, Lcom/texa/carelib/webservices/internal/HttpHeaderAcceptBuilder;

    invoke-direct {v0}, Lcom/texa/carelib/webservices/internal/HttpHeaderAcceptBuilder;-><init>()V

    const-string v1, "application/json"

    .line 555
    invoke-virtual {v0, v1}, Lcom/texa/carelib/webservices/internal/HttpHeaderAcceptBuilder;->putFragment(Ljava/lang/String;)V

    const-string v1, "application/vnd.tx-care;version=1"

    .line 556
    invoke-virtual {v0, v1}, Lcom/texa/carelib/webservices/internal/HttpHeaderAcceptBuilder;->putFragment(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/HttpHeaderAcceptBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHeaderContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/json"

    return-object v0
.end method

.method private static getHeaderDeviceFamily()Ljava/lang/String;
    .locals 1

    const-string v0, "Android"

    return-object v0
.end method

.method private static getHeaderUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 638
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 639
    new-instance v0, Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;

    invoke-direct {v0}, Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;-><init>()V

    .line 640
    invoke-static {}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getAndroidOSVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;->setOSVersion(Ljava/lang/String;)Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;

    move-result-object v0

    const-string v1, "com.texa.carelib.webservices"

    const-string v2, "4.2.1"

    .line 641
    invoke-virtual {v0, v1, v2}, Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;->setCAReLibInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;

    move-result-object v0

    .line 642
    invoke-static {p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getApplicationVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getApplicationVersionCode(Landroid/content/Context;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;->setAppInfo(Ljava/lang/String;Ljava/lang/String;J)Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;

    move-result-object p0

    .line 645
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/utils/HttpHeaderUserAgentBuilder;->build()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initHeaderFields()V
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mFieldsAsHeader:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 566
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mFieldsAsHeader:Ljava/util/List;

    const-string v1, "Accept-Language"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mFieldsAsHeader:Ljava/util/List;

    const-string v1, "CARe-HWID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mFieldsAsHeader:Ljava/util/List;

    const-string v1, "CARe-SID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static prepareUrl(Landroid/content/Context;Ljava/net/URLConnection;)V
    .locals 5

    .line 532
    invoke-static {}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getHeaderContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Type"

    .line 533
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    sget-object v1, Lcom/texa/carelib/webservices/internal/HttpTexaService;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "Content-Type:%s"

    invoke-static {v1, v0, v3}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    invoke-static {p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getHeaderUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "User-Agent"

    .line 537
    invoke-virtual {p1, v0, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v4

    const-string p0, "User-Agent:%s"

    .line 538
    invoke-static {v1, p0, v0}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    invoke-static {}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getHeaderDeviceFamily()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Device-Family"

    invoke-virtual {p1, v0, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-static {}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getHeaderAccept()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Accept"

    .line 543
    invoke-virtual {p1, v0, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v4

    const-string p0, "Accept:%s"

    .line 544
    invoke-static {v1, p0, p1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private removeRequest(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;)V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mRequestListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mRequestList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mRequestListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mRequestListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method


# virtual methods
.method public accessAPIAtPath(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;",
            ")V"
        }
    .end annotation

    .line 412
    new-instance v6, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p1

    move-object v3, p4

    move v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/texa/carelib/webservices/internal/HttpAPIRequestListener;)V

    const/4 p1, 0x1

    invoke-direct {p0, v6, p1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->accessAPIWithRequest(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;Z)V

    return-void
.end method

.method public beginProtectionSessionWithHWToken([BLjava/lang/String;Lcom/texa/carelib/core/Callback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;",
            ">;)Z"
        }
    .end annotation

    .line 417
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getServiceProtectionProcedure()Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->beginProtectionSessionWithHWToken([BLjava/lang/String;Lcom/texa/carelib/core/Callback;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mServiceVehicleConfigurationInfo:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;->clear()V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mServiceFirmwareInfoProcedure:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    if-eqz v0, :cond_1

    .line 486
    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->clear()V

    :cond_1
    return-void
.end method

.method public getAcceptLanguage([Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 524
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 525
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p1, ","

    .line 528
    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getConnection(Lcom/texa/carelib/webservices/HostInfo;Lcom/texa/carelib/webservices/internal/HttpAPIRequest;)Ljava/net/URLConnection;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getURL(Lcom/texa/carelib/webservices/HostInfo;Lcom/texa/carelib/webservices/internal/HttpAPIRequest;)Ljava/net/URL;

    move-result-object p1

    .line 119
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 125
    :goto_0
    invoke-static {}, Lcom/texa/carelib/core/CareLibConfig;->getServiceConnectionTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 126
    invoke-static {}, Lcom/texa/carelib/core/CareLibConfig;->getServiceReadTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 128
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getHttpMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->setRequestMethod(Ljava/net/URLConnection;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->isSessionProtected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Request is session protected? %b"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Setting headers:"

    .line 130
    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->prepareUrl(Landroid/content/Context;Ljava/net/URLConnection;)V

    .line 134
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->isSessionProtected()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    const-string v5, "CARe-SID"

    if-nez v2, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v5, v2, v4

    .line 139
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getSessionID()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    const-string v5, "%s=%s"

    invoke-static {v0, v5, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getAccessToken()Lcom/texa/carelib/webservices/AccessToken;

    move-result-object v2

    .line 144
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->isAuthenticated()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/texa/carelib/webservices/AccessToken;->getTokenType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/texa/carelib/webservices/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v4

    const-string v6, "Authorization: %s"

    .line 148
    invoke-static {v0, v6, v5}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Authorization"

    .line 149
    invoke-virtual {p1, v0, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_3
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getFields()Ljava/util/Map;

    move-result-object v0

    .line 154
    invoke-direct {p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getFieldsAsHeader()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 155
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 156
    sget-object v6, Lcom/texa/carelib/webservices/internal/HttpTexaService;->TAG:Ljava/lang/String;

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v5, v7, v4

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v1

    const-string v8, "%s:%s"

    invoke-static {v6, v8, v7}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 161
    :cond_5
    invoke-virtual {p1, v4}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 162
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 164
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getHttpMethod()Ljava/lang/String;

    move-result-object p2

    const-string v0, "POST"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 165
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    :cond_6
    return-object p1
.end method

.method public getDTCResolutionProcedure()Lcom/texa/carelib/webservices/ServiceDTCResolutionProcedure;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mDTCResolutionProcedure:Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;

    return-object v0
.end method

.method public getFirmwareDownloadProcedure()Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedure;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mServiceFirmwareDownloadProcedure:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;

    return-object v0
.end method

.method public getFirmwareInfoProcedure()Lcom/texa/carelib/webservices/ServiceFirmwareInfo;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mServiceFirmwareInfoProcedure:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    return-object v0
.end method

.method public getImpactDetection()Lcom/texa/carelib/webservices/ServiceImpactDetection;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mHttpServiceImpactDetection:Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mProxy:Ljava/net/Proxy;

    return-object v0
.end method

.method protected getQueryStringParameters(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/webservices/internal/HttpAPIRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getFields()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 350
    invoke-direct {p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getFieldsAsHeader()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 352
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getRequestBody(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;)Ljava/lang/String;
    .locals 1

    .line 391
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 392
    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getQueryStringParameters(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 394
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 395
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 396
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->enableComplexMapKeySerialization()Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 397
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 398
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    .line 399
    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getServiceAuthenticationProcedure()Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mTexaServiceHttpAuthenticationProcedure:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    return-object v0
.end method

.method protected getServiceProtectionProcedure()Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mServiceProtectionProcedure:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    return-object v0
.end method

.method protected getURL(Lcom/texa/carelib/webservices/HostInfo;Lcom/texa/carelib/webservices/internal/HttpAPIRequest;)Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 368
    new-instance v0, Lcom/texa/carelib/core/utils/internal/URLBuilder;

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/HostInfo;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/HostInfo;->getHostName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/texa/carelib/core/utils/internal/URLBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getHttpMethod()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GET"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 375
    invoke-virtual {p0, p2}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getQueryStringParameters(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/core/utils/internal/URLBuilder;->addAllQueryItem(Ljava/util/Map;)V

    .line 378
    :cond_0
    invoke-virtual {v0}, Lcom/texa/carelib/core/utils/internal/URLBuilder;->getURL()Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public getVehicleConfigurationInfo()Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfo;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mServiceVehicleConfigurationInfo:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;

    return-object v0
.end method

.method public getVehicleConfigurationProcedure()Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mVehicleIdentificationProcedure:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;

    return-object v0
.end method

.method public getVehicleInfo()Lcom/texa/carelib/webservices/ServiceVehicleInfo;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mServiceVehicleInfo:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mConnectionCheckerCompat:Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerCompat;

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerCompat;

    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mConnectionCheckerCompat:Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerCompat;

    .line 428
    new-instance v1, Lcom/texa/carelib/webservices/internal/HttpTexaService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/webservices/internal/HttpTexaService;)V

    invoke-virtual {v0, v1}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerCompat;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mConnectionCheckerCompat:Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerCompat;

    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerCompat;->isConnected()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$accessAPIWithRequest$1$com-texa-carelib-webservices-internal-HttpTexaService(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .line 472
    sget-object p1, Lcom/texa/carelib/webservices/internal/HttpTexaService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Uncaught exception."

    invoke-static {p1, p2, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mPendingRequest:Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

    new-instance v1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/webservices/R$string;->error_service_request_task_uncaught_exception:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mPendingRequest:Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

    invoke-virtual {v5}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getID()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/texa/carelib/core/CareError$Builder;->setException(Ljava/lang/Throwable;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->fireError(Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method public synthetic lambda$isConnected$0$com-texa-carelib-webservices-internal-HttpTexaService(Ljava/beans/PropertyChangeEvent;)V
    .locals 1

    .line 429
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.texa.carelib.webservices.internal.connection.ConnectionChecker#PROPERTY_CONNECTED"

    .line 430
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 431
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mConnectionCheckerCompat:Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerCompat;

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/connection/ConnectionCheckerCompat;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->proceedWithNextRequest()V

    :cond_0
    return-void
.end method

.method public onRequestCompleted(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;ZLjava/lang/String;Lcom/texa/carelib/core/CareError;)V
    .locals 6

    .line 490
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->removeRequest(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 494
    :try_start_0
    sget-object p1, Lcom/texa/carelib/webservices/internal/HttpTexaService;->TAG:Ljava/lang/String;

    const-string p2, "onRequestCompleted() but notify skipped."

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    const/4 v2, 0x2

    if-nez p4, :cond_2

    .line 497
    sget-object p4, Lcom/texa/carelib/webservices/internal/HttpTexaService;->TAG:Ljava/lang/String;

    const-string v3, "Request %s(ID=%s) completed."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getID()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, p2

    invoke-static {p4, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    .line 503
    invoke-virtual {p1, p3}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->fireCompleted(Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "result cannot be null if the web api has ended successfully."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 505
    :cond_2
    sget-object p3, Lcom/texa/carelib/webservices/internal/HttpTexaService;->TAG:Ljava/lang/String;

    const-string v3, "Request %s(ID=%s) completed with error. Error:%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getID()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, p2

    aput-object p4, v4, v2

    invoke-static {p3, v3, v4}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    invoke-virtual {p1, p4}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->fireError(Lcom/texa/carelib/core/CareError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    :goto_0
    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mPendingRequest:Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

    .line 511
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->proceedWithNextRequest()V

    return-void

    .line 510
    :goto_1
    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mPendingRequest:Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

    .line 511
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->proceedWithNextRequest()V

    throw p1
.end method

.method protected proceedWithNextRequest()V
    .locals 2

    .line 334
    invoke-direct {p0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->dequeueRequest()Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 336
    invoke-direct {p0, v0, v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->accessAPIWithRequest(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;Z)V

    :cond_0
    return-void
.end method

.method public repeatRequest(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;)V
    .locals 5

    .line 516
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getID()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Repeating request %s(ID=%s)"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 517
    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mPendingRequest:Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

    .line 518
    invoke-direct {p0, p1, v3}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->accessAPIWithRequest(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;Z)V

    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;->mProxy:Ljava/net/Proxy;

    return-void
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method
