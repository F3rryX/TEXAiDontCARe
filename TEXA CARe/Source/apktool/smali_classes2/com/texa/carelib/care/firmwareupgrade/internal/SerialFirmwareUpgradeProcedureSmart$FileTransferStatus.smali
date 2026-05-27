.class Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;
.super Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeStatus;
.source "SerialFirmwareUpgradeProcedureSmart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileTransferStatus"
.end annotation


# instance fields
.field private final mAppType:Lcom/texa/carelib/core/AppType;

.field private final mFWUpgradeProcedure:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

.field private final mFile:Ljava/io/File;

.field private final mFileType:I

.field private mSendActionType:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

.field final synthetic this$0:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;Lcom/texa/carelib/core/AppType;Ljava/io/File;ILcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;)V
    .locals 1

    .line 416
    iput-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->this$0:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeStatus;-><init>(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$1;)V

    .line 417
    iput-object p2, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->mFWUpgradeProcedure:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

    .line 418
    iput-object p4, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->mFile:Ljava/io/File;

    .line 419
    iput p5, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->mFileType:I

    .line 420
    iput-object p6, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->mSendActionType:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    .line 421
    iput-object p3, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->mAppType:Lcom/texa/carelib/core/AppType;

    return-void
.end method

.method static synthetic access$200(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;)Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->mFWUpgradeProcedure:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

    return-object p0
.end method

.method static synthetic access$300(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;)Lcom/texa/carelib/core/AppType;
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->mAppType:Lcom/texa/carelib/core/AppType;

    return-object p0
.end method

.method static synthetic access$400(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;)Ljava/io/File;
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->mFile:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public onEnter()V
    .locals 8

    .line 426
    invoke-super {p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeStatus;->onEnter()V

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->this$0:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

    invoke-static {v0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->access$600(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;)Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->getSerialFileCarrier()Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;

    move-result-object v1

    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->this$0:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

    invoke-static {v0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->access$100(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->mFile:Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget v4, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->mFileType:I

    iget-object v5, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->mSendActionType:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    const/4 v6, 0x0

    new-instance v7, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus$1;

    invoke-direct {v7, p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus$1;-><init>(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;)V

    invoke-virtual/range {v1 .. v7}, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->sendFile(Landroid/content/Context;Ljava/io/InputStream;ILcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;Ljava/lang/String;Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 455
    :goto_0
    sget-object v1, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Could not send data to the dongle."

    invoke-static {v1, v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->mFWUpgradeProcedure:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

    iget-object v1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->mAppType:Lcom/texa/carelib/core/AppType;

    iget-object v2, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->mFile:Ljava/io/File;

    new-instance v3, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v4, 0x1

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v4, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->this$0:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

    invoke-static {v4}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->access$100(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/texa/carelib/profile/R$string;->error_could_not_send_file:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->access$500(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;Lcom/texa/carelib/core/AppType;Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    :goto_1
    return-void
.end method
