.class Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;
.super Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;
.source "HttpServiceFirmwareInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse;,
        Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;
    }
.end annotation


# static fields
.field private static final KEY_APPLICATIONS:Ljava/lang/String; = "applications"

.field private static final KEY_APPLICATION_NAME:Ljava/lang/String; = "name"

.field private static final KEY_APPLICATION_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_APPLICATION_VERSION:Ljava/lang/String; = "version"

.field private static final KEY_BOARD_NAME:Ljava/lang/String; = "board_name"

.field private static final KEY_BRAND_NAME:Ljava/lang/String; = "brand"

.field private static final KEY_PRODUCT_NAME:Ljava/lang/String; = "product_name"

.field private static final PATH_FW_VERSIONS:Ljava/lang/String; = "/api/updates/firmware"

.field public static final TAG:Ljava/lang/String; = "HttpServiceFirmwareInfo"

.field private static mApplicationTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/core/AppType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFromMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field private mFromServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field private final mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 518
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->mApplicationTypes:Ljava/util/Map;

    .line 519
    sget-object v1, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    const-string v2, "MAIN_APP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->mApplicationTypes:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    const-string v2, "SERVICE_APP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/webservices/internal/HttpTexaService;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->getError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;)Lcom/texa/carelib/webservices/internal/HttpTexaService;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;)Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->mFromMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object p0
.end method

.method static synthetic access$300(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;)Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->mFromServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object p0
.end method

.method static synthetic access$400(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->getApplicationName(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->getBoardName(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->getCustomerName(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->getProductName(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900()Ljava/util/Map;
    .locals 1

    .line 40
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->mApplicationTypes:Ljava/util/Map;

    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse;
    .locals 2

    .line 212
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 213
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 217
    const-class v1, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse;

    return-object p0
.end method

.method private static getApplicationName(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getApplicationName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getApplicationName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getBoardName(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getBoardName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getBoardName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getBoardName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getCustomerName(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getCustomerName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getCustomerName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 108
    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getCustomerName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;
    .locals 3

    .line 65
    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v1, 0x2

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/texa/carelib/webservices/R$string;->error_service_firmware_get_info_fails:I

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

.method private static getProductName(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getProductName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getProductName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getProductName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public loadFirmwareInfo(Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/core/utils/FirmwareVersion;",
            "Lcom/texa/carelib/core/utils/FirmwareVersion;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->getStatus()Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;

    move-result-object v0

    sget-object v1, Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;->Pending:Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;

    if-eq v0, v1, :cond_0

    .line 138
    sget-object v0, Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;->Pending:Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->setServiceStatus(Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;)V

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->setMainAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 141
    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->setServiceAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 143
    iput-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->mFromMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 144
    iput-object p3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->mFromServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 146
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "CARe-HWID"

    .line 147
    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {p2, p3}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->getBoardName(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "board_name"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {p2, p3}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->getProductName(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "product_name"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    new-instance v0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;

    const-string v1, "MAIN_APP"

    invoke-direct {v0, p0, v1, p2}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;-><init>(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance p2, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;

    const-string v0, "SERVICE_APP"

    invoke-direct {p2, p0, v0, p3}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;-><init>(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "applications"

    .line 156
    invoke-interface {v5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object p1, Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;->Pending:Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->setServiceStatus(Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;)V

    .line 160
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    const/4 v4, 0x0

    new-instance v6, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;

    invoke-direct {v6, p0, p4}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;-><init>(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;Lcom/texa/carelib/core/Callback;)V

    const-string v2, "/api/updates/firmware"

    const-string v3, "POST"

    invoke-virtual/range {v1 .. v6}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->accessAPIAtPath(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;)V

    return-void

    .line 135
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    const-string p2, "Load firmware info is already in progress."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
