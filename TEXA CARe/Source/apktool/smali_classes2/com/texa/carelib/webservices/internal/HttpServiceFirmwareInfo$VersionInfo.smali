.class Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;
.super Ljava/lang/Object;
.source "HttpServiceFirmwareInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VersionInfo"
.end annotation


# static fields
.field public static final VERSION_TYPE_MAIN_APP:Ljava/lang/String; = "MAIN_APP"

.field public static final VERSION_TYPE_SERVICE_APP:Ljava/lang/String; = "SERVICE_APP"


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

.field private mCustomerName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "brand"
    .end annotation
.end field

.field private mVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field

.field final synthetic this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    .line 278
    invoke-virtual {p3}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getApplicationName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;->setApplicationName(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p3}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getCustomerName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;->setCustomerName(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p3}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/carelib/core/utils/VersionFormatter;->formatShort(Lcom/texa/carelib/core/utils/Version;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;->setVersion(Ljava/lang/String;)V

    .line 283
    :cond_0
    invoke-virtual {p0, p2}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;->setApplicationType(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    invoke-virtual {p0, p4}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;->setApplicationName(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0, p2}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;->setApplicationType(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0, p3}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;->setVersion(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0, p5}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;->setCustomerName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getApplicationName()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;->mApplicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationType()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;->mApplicationType:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerName()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;->mCustomerName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;->mApplicationName:Ljava/lang/String;

    return-void
.end method

.method public setApplicationType(Ljava/lang/String;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;->mApplicationType:Ljava/lang/String;

    return-void
.end method

.method public setCustomerName(Ljava/lang/String;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;->mCustomerName:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$VersionInfo;->mVersion:Ljava/lang/String;

    return-void
.end method
