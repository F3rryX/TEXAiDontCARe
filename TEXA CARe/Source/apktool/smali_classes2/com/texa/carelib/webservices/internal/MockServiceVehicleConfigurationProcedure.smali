.class Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationProcedure;
.super Ljava/lang/Object;
.source "MockServiceVehicleConfigurationProcedure.java"

# interfaces
.implements Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;


# static fields
.field private static final DOWNLOAD_CONFIGURATION_DELAY:I = 0xdac

.field private static final STORE_REPORT_DELAY:I = 0x7d0

.field public static final TAG:Ljava/lang/String; = "MockServiceVehicleConfigurationProcedure"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationProcedure;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public downloadConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Lcom/texa/carelib/core/Callback;)V
    .locals 0
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

    .line 54
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    .line 61
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationProcedure$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p4}, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationProcedure$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationProcedure;Lcom/texa/carelib/core/Callback;)V

    const-string p3, "thread_downloadConfiguration"

    invoke-direct {p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setPriority(I)V

    .line 101
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 58
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Callback could not be null."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Dongle serial number could not be null."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStoredFile()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/webservices/internal/Content;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 141
    new-instance v3, Lcom/texa/carelib/webservices/internal/Content;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "Conf_%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. "

    invoke-direct {v3, v4, v5}, Lcom/texa/carelib/webservices/internal/Content;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public synthetic lambda$downloadConfiguration$0$com-texa-carelib-webservices-internal-MockServiceVehicleConfigurationProcedure(Lcom/texa/carelib/core/Callback;)V
    .locals 10

    const-wide/16 v0, 0xdac

    const/4 v2, 0x0

    .line 63
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 65
    sget-object v1, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationProcedure;->TAG:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, ""

    invoke-static {v1, v0, v4, v3}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :goto_0
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationProcedure;->getStoredFile()Ljava/util/List;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    new-instance v3, Lcom/texa/carelib/core/utils/InternalFileCache;

    iget-object v4, p0, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationProcedure;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/texa/carelib/core/utils/InternalFileCache;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/carelib/webservices/internal/Content;

    .line 79
    :try_start_1
    invoke-virtual {v4}, Lcom/texa/carelib/webservices/internal/Content;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    const-string v7, "diagnosis_configuration"

    .line 80
    invoke-virtual {v4}, Lcom/texa/carelib/webservices/internal/Content;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v7, v4, v6}, Lcom/texa/carelib/core/utils/FileCache;->store(Ljava/lang/String;Ljava/lang/String;[B)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 82
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v7, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationProcedure;->TAG:Ljava/lang/String;

    const-string v8, "Cached file[AbsolutePath=%s,Size=%d]"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    array-length v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v5

    invoke-static {v7, v8, v9}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    .line 86
    sget-object v5, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationProcedure;->TAG:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "Could not cache configuration file on file system."

    invoke-static {v5, v4, v7, v6}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 90
    :cond_1
    invoke-static {v1}, Lcom/texa/carelib/core/utils/internal/Utils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    new-instance v0, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v3, 0x8

    invoke-direct {v2, v5, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationProcedure;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/texa/carelib/webservices/R$string;->error_service_file_store_error:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;-><init>(Ljava/lang/Object;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    goto :goto_2

    .line 94
    :cond_2
    new-instance v0, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;-><init>(Ljava/lang/Object;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public synthetic lambda$storeConfigurationReports$1$com-texa-carelib-webservices-internal-MockServiceVehicleConfigurationProcedure(Lcom/texa/carelib/core/Callback;)V
    .locals 4

    const-wide/16 v0, 0x7d0

    .line 118
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 120
    sget-object v1, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationProcedure;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Wait has failed."

    invoke-static {v1, v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :goto_0
    new-instance v0, Lcom/texa/carelib/webservices/ConfigurationReportStoredEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/texa/carelib/webservices/ConfigurationReportStoredEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method public storeConfigurationReports(Ljava/lang/String;Ljava/util/List;Lcom/texa/carelib/core/Callback;)V
    .locals 1
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

    .line 107
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    .line 116
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationProcedure$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3}, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationProcedure$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationProcedure;Lcom/texa/carelib/core/Callback;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationProcedure;->TAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_storeConfigurationReports"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setPriority(I)V

    .line 128
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 113
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Callback could not be null."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_1
    sget-object p1, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationProcedure;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "SerialNumber cannot be null!!!"

    invoke-static {p1, p3, p2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Dongle serial number could not be null."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
