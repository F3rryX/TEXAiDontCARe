.class Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;
.super Ljava/lang/Object;
.source "HttpServiceVehicleConfigurationProcedure.java"

# interfaces
.implements Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;,
        Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$StoreConfigurationReportsTask;,
        Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureHttpStatusConfigurationDownloadHttpServiceVehicleConfigurationProcedureStatus;,
        Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureStatusReportStoring;,
        Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureStatusBase;,
        Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureStatus;
    }
.end annotation


# static fields
.field private static final KEY_CONFIG_RESULTS:Ljava/lang/String; = "config_results"

.field private static final KEY_INTERPRETER_VERSION:Ljava/lang/String; = "interpreter_version"

.field private static final KEY_VIN:Ljava/lang/String; = "vin"

.field private static final PATH_FILE_REQUEST:Ljava/lang/String; = "/api/contents/configurations"

.field private static final PATH_STORE_REPORTS:Ljava/lang/String; = "/api/dongles/configurations"

.field public static final TAG:Ljava/lang/String; = "HttpServiceVehicleConfigurationProcedure"


# instance fields
.field private mHttpServiceVehicleConfigurationProcedureStatus:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureStatus;

.field private final mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/webservices/internal/HttpTexaService;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    return-void
.end method

.method static synthetic access$400(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    return-object p0
.end method

.method static synthetic access$702(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureStatus;)Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureStatus;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;->mHttpServiceVehicleConfigurationProcedureStatus:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureStatus;

    return-object p1
.end method


# virtual methods
.method public downloadConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Lcom/texa/carelib/core/Callback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/math/BigInteger;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 65
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 80
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadConfiguration("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    new-instance v1, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureHttpStatusConfigurationDownloadHttpServiceVehicleConfigurationProcedureStatus;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureHttpStatusConfigurationDownloadHttpServiceVehicleConfigurationProcedureStatus;-><init>(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$1;)V

    iput-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;->mHttpServiceVehicleConfigurationProcedureStatus:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureStatus;

    .line 89
    new-instance v1, Ljava/lang/Thread;

    new-instance v8, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;-><init>(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Lcom/texa/carelib/core/Callback;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_ConfigurationDownloadTask"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v8, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 91
    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 92
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    .line 77
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Callback could not be null."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Interpreter version could not be null."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_2
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Dongle serial number could not be null."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public storeConfigurationReports(Ljava/lang/String;Ljava/util/List;Lcom/texa/carelib/core/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/texa/carelib/webservices/ConfigurationReport;",
            ">;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/ConfigurationReportStoredEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 97
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "storeConfigurationReports(List<ConfigFileInfo> configuration_reports)"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    .line 115
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;->mHttpServiceVehicleConfigurationProcedureStatus:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureStatus;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureStatus;->isReportStoringAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$StoreConfigurationReportsTask;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$StoreConfigurationReportsTask;-><init>(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;Ljava/lang/String;Ljava/util/List;Lcom/texa/carelib/core/Callback;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_storeConfigurationReports"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 120
    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 121
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    .line 116
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Could not upload report at this moment."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Configuration reports could not be null."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_2
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Callback could not be null."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_3
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Dongle serial number could not be null."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
