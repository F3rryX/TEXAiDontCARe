.class Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;
.super Lcom/texa/carelib/webservices/internal/ServiceVehicleInfoBase;
.source "HttpServiceVehicleInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo$APIVehicleInfoResponse;
    }
.end annotation


# static fields
.field private static final KEY_HWID_LIST:Ljava/lang/String; = "hwid_list"

.field private static final PATH_API_VEHICLE_INFO:Ljava/lang/String; = "/api/dongles/summary"

.field public static final TAG:Ljava/lang/String; = "HttpServiceVehicleInfo"


# instance fields
.field private final mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/webservices/internal/HttpTexaService;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/texa/carelib/webservices/internal/ServiceVehicleInfoBase;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;->getError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object p0

    return-object p0
.end method

.method private getError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;
    .locals 3

    .line 55
    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v1, 0x2

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/texa/carelib/webservices/R$string;->error_service_vehicle_get_info_fails:I

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


# virtual methods
.method public loadVehicleInfo([Ljava/lang/String;[Ljava/util/Locale;Lcom/texa/carelib/core/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/Locale;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/VehicleInfoLoadedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;->Pending:Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;

    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;->getStatus()Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 65
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;->Pending:Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;->setStatus(Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;)V

    .line 72
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;->clear()V

    .line 74
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "hwid_list"

    .line 75
    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {p1, p2}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getAcceptLanguage([Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Accept-Language"

    invoke-interface {v5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    const/4 v4, 0x0

    new-instance v6, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo$1;

    invoke-direct {v6, p0, p3}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo$1;-><init>(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;Lcom/texa/carelib/core/Callback;)V

    const-string v2, "/api/dongles/summary"

    const-string v3, "POST"

    invoke-virtual/range {v1 .. v6}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->accessAPIAtPath(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;)V

    return-void

    .line 67
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Could not getItems vehicles info. Hardware IDs list cannot be null or empty."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    const-string p2, "Load of vehicle info is already running."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
