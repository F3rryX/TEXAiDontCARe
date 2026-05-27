.class public Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;
.super Ljava/lang/Object;
.source "HttpServiceFirmwareInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VersionInfo"
.end annotation


# static fields
.field public static final APPLICATION_TYPE_MAIN:Ljava/lang/String; = "MAIN_APP"

.field public static final APPLICATION_TYPE_SERVICE:Ljava/lang/String; = "SERVICE_APP"

.field private static final KEY_APPLICATION_NAME:Ljava/lang/String; = "name"

.field private static final KEY_APPLICATION_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_APPLICATION_VERSION:Ljava/lang/String; = "version"

.field private static final KEY_FILE_NAME:Ljava/lang/String; = "file_name"


# instance fields
.field private mApplicationName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private mApplicationType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private mFileName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "file_name"
    .end annotation
.end field

.field private mVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field

.field final synthetic this$1:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse;)V
    .locals 1

    .line 461
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;->this$1:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 462
    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;->mFileName:Ljava/lang/String;

    .line 463
    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;->mApplicationName:Ljava/lang/String;

    .line 464
    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;->mApplicationType:Ljava/lang/String;

    .line 465
    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;->mVersion:Ljava/lang/String;

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse;->access$802(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse;Ljava/util/List;)Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getApplicationName()Ljava/lang/String;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;->mApplicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationType()Ljava/lang/String;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;->mApplicationType:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;->mApplicationName:Ljava/lang/String;

    return-void
.end method

.method public setApplicationType(Ljava/lang/String;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;->mApplicationType:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;->mFileName:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public toFirmwareVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 7

    .line 476
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;->mVersion:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "\\."

    .line 479
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 481
    array-length v2, v0

    if-nez v2, :cond_1

    return-object v1

    .line 489
    :cond_1
    array-length v2, v0

    if-lez v2, :cond_2

    const/4 v2, 0x0

    .line 490
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 491
    :goto_0
    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 492
    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v1

    .line 493
    :goto_1
    array-length v4, v0

    const/4 v5, 0x2

    if-le v4, v5, :cond_4

    .line 494
    aget-object v4, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v1

    .line 495
    :goto_2
    array-length v5, v0

    const/4 v6, 0x3

    if-le v5, v6, :cond_5

    .line 496
    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 498
    :cond_5
    new-instance v0, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 499
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setFileName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 500
    invoke-virtual {v0, p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setApplicationName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 501
    invoke-virtual {v0, p2}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setCustomerName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 502
    invoke-virtual {v0, p3}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setBoardName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 503
    invoke-virtual {v0, p4}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setProductName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 505
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;->mApplicationType:Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->access$900()Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;->mApplicationType:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 506
    invoke-static {}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->access$900()Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;->mApplicationType:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/core/AppType;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setAppType(Lcom/texa/carelib/core/AppType;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    goto :goto_3

    .line 508
    :cond_6
    sget-object p1, Lcom/texa/carelib/core/AppType;->UNDEF:Lcom/texa/carelib/core/AppType;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setAppType(Lcom/texa/carelib/core/AppType;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    :goto_3
    return-object v0
.end method
