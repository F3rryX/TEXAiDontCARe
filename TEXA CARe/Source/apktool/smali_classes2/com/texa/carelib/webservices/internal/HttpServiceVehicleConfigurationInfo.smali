.class Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;
.super Lcom/texa/carelib/webservices/internal/ServiceVehicleConfigurationInfoBase;
.source "HttpServiceVehicleConfigurationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$APIConfigurationInfoResponse;
    }
.end annotation


# static fields
.field private static final KEY_DIAGNOSTIC_ENGINE_VERSION:Ljava/lang/String; = "interpreter_version"

.field private static final KEY_VIN:Ljava/lang/String; = "vin"

.field private static final PATH_API_CONFIGURATIONS:Ljava/lang/String; = "/api/updates/configurations"

.field public static final TAG:Ljava/lang/String; = "HttpServiceVehicleConfigurationInfo"

.field private static final VALUE_FIRST_CONFIGURATION:Ljava/lang/String; = "FIRST_CONFIGURATION"

.field private static final VALUE_NEEDS_UPDATE:Ljava/lang/String; = "NEEDS_UPDATE"

.field private static final VALUE_UPDATED:Ljava/lang/String; = "UPDATED"


# instance fields
.field private final mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/webservices/internal/HttpTexaService;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/texa/carelib/webservices/internal/ServiceVehicleConfigurationInfoBase;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;->getError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object p0

    return-object p0
.end method

.method private getError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;
    .locals 3

    .line 58
    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v1, 0x2

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/texa/carelib/webservices/R$string;->error_service_diagnostic_configuration_get_info_fails:I

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
.method public loadVehicleConfigurationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Lcom/texa/carelib/core/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/math/BigInteger;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1, p3}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;->ensureCanLoadVehicleConfigurationInfo(Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 67
    sget-object v0, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfoStatus;->Pending:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfoStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;->setStatus(Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfoStatus;)V

    .line 69
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;->clear()V

    .line 71
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "CARe-HWID"

    .line 72
    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "vin"

    .line 73
    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "interpreter_version"

    .line 74
    invoke-interface {v5, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    new-instance v6, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$1;

    invoke-direct {v6, p0, p4}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$1;-><init>(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;Lcom/texa/carelib/core/Callback;)V

    const-string v2, "/api/updates/configurations"

    const-string v3, "POST"

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->accessAPIAtPath(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;)V

    return-void
.end method
