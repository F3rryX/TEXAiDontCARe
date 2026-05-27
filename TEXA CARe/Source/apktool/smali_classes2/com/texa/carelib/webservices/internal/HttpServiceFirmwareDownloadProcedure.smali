.class Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;
.super Lcom/texa/carelib/webservices/internal/ServiceFirmwareDownloadProcedureBase;
.source "HttpServiceFirmwareDownloadProcedure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$Content;,
        Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$FirmwareDownloadResponse;
    }
.end annotation


# static fields
.field private static final KEY_CONTENT_NAME:Ljava/lang/String; = "content_name"

.field private static final KEY_CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field private static final MAIN_APP_VALUE:Ljava/lang/String; = "MAIN_APP"

.field private static final PATH_DOWNLOAD:Ljava/lang/String; = "/api/contents/firmware"

.field private static final SERVICE_APP_VALUE:Ljava/lang/String; = "SERVICE_APP"

.field public static final TAG:Ljava/lang/String; = "HttpServiceFirmwareDownloadProcedure"


# instance fields
.field private final mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/webservices/internal/HttpTexaService;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/texa/carelib/webservices/internal/ServiceFirmwareDownloadProcedureBase;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->getError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    return-object p0
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$FirmwareDownloadResponse;
    .locals 2

    .line 206
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 207
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 211
    const-class v1, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$FirmwareDownloadResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$FirmwareDownloadResponse;

    return-object p0
.end method

.method private getError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;
    .locals 3

    .line 174
    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v1, 0x2

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/texa/carelib/webservices/R$string;->error_service_firmware_download_fails:I

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

.method private getFileType(Lcom/texa/carelib/webservices/FirmwareType;)Ljava/lang/String;
    .locals 1

    .line 183
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$2;->$SwitchMap$com$texa$carelib$webservices$FirmwareType:[I

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/FirmwareType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "SERVICE_APP"

    goto :goto_0

    :cond_1
    const-string p1, "MAIN_APP"

    :goto_0
    return-object p1
.end method


# virtual methods
.method public downloadFirmware(Lcom/texa/carelib/webservices/FirmwareType;Lcom/texa/carelib/core/utils/FirmwareVersion;Ljava/lang/String;Lcom/texa/carelib/core/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/webservices/FirmwareType;",
            "Lcom/texa/carelib/core/utils/FirmwareVersion;",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 73
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string v2, "downloadFirmware[type=%s,version=%s,hWID=%s]"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-static {p3}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 79
    sget-object v0, Lcom/texa/carelib/webservices/FirmwareType;->Main:Lcom/texa/carelib/webservices/FirmwareType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/texa/carelib/webservices/FirmwareType;->Service:Lcom/texa/carelib/webservices/FirmwareType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Invalid firmware type."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_5

    .line 83
    invoke-virtual {p2}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p4, :cond_4

    .line 91
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->getStatus()Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    move-result-object v0

    sget-object v1, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;->Running:Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    if-eq v0, v1, :cond_3

    .line 95
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->getFileType(Lcom/texa/carelib/webservices/FirmwareType;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 101
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v1, "CARe-HWID"

    .line 102
    invoke-interface {v5, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {p2}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getFileName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "content_name"

    invoke-interface {v5, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "content_type"

    .line 104
    invoke-interface {v5, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object p2, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;->Running:Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    invoke-virtual {p0, p2}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->setStatus(Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;)V

    .line 107
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    const/4 v4, 0x1

    new-instance v6, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;

    invoke-direct {v6, p0, p1, p4}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;-><init>(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;Lcom/texa/carelib/webservices/FirmwareType;Lcom/texa/carelib/core/Callback;)V

    const-string v2, "/api/contents/firmware"

    const-string v3, "GET"

    invoke-virtual/range {v1 .. v6}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->accessAPIAtPath(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;)V

    return-void

    .line 98
    :cond_2
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Firmware type not managed..."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_3
    new-instance p1, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    const-string p2, "A firmware download is already running..."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_4
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Callback cannot be null."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_5
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Invalid firmware version."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_6
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "HardwareID not set"

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
