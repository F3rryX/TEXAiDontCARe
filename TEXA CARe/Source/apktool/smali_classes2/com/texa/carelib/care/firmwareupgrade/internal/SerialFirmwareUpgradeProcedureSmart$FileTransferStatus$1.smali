.class Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus$1;
.super Lcom/texa/carelib/profile/internal/filecarrier/SimpleFileCarrierListener;
.source "SerialFirmwareUpgradeProcedureSmart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->onEnter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;


# direct methods
.method constructor <init>(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus$1;->this$1:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;

    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/filecarrier/SimpleFileCarrierListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSent(Lcom/texa/carelib/profile/internal/filecarrier/events/FileSentEvent;)V
    .locals 6

    .line 432
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileSentEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 433
    iget-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus$1;->this$1:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;

    invoke-static {p1}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->access$200(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;)Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

    move-result-object p1

    new-instance v0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeFinalizeStatus;

    iget-object v1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus$1;->this$1:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;

    iget-object v1, v1, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->this$0:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

    iget-object v2, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus$1;->this$1:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;

    invoke-static {v2}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->access$200(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;)Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus$1;->this$1:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;

    invoke-static {v3}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->access$300(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;)Lcom/texa/carelib/core/AppType;

    move-result-object v3

    iget-object v4, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus$1;->this$1:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;

    invoke-static {v4}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->access$400(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeFinalizeStatus;-><init>(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;Lcom/texa/carelib/core/AppType;Ljava/io/File;)V

    invoke-virtual {p1, v0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->setStatus(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeStatus;)V

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus$1;->this$1:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;

    iget-object v0, v0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->this$0:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

    iget-object v1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus$1;->this$1:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;

    invoke-static {v1}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->access$300(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;)Lcom/texa/carelib/core/AppType;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus$1;->this$1:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;

    invoke-static {v2}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->access$400(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v4, 0x1

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v4, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus$1;->this$1:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;

    iget-object v4, v4, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->this$0:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

    invoke-static {v4}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->access$100(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/texa/carelib/profile/R$string;->error_firmware_upgrade:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileSentEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/texa/carelib/core/CareError$Builder;->setInnerError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->access$500(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;Lcom/texa/carelib/core/AppType;Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method

.method public onFileSentProgressChanged(Lcom/texa/carelib/profile/internal/filecarrier/events/FileSentProgressChangedEvent;)V
    .locals 2

    .line 442
    invoke-super {p0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/SimpleFileCarrierListener;->onFileSentProgressChanged(Lcom/texa/carelib/profile/internal/filecarrier/events/FileSentProgressChangedEvent;)V

    .line 444
    sget-object v0, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    iget-object v1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus$1;->this$1:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;

    invoke-static {v1}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->access$300(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;)Lcom/texa/carelib/core/AppType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus$1;->this$1:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;

    iget-object v0, v0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->this$0:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileSentProgressChangedEvent;->getProgress()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->fireMainFirmwareUpgradeProgressChanged(F)V

    goto :goto_0

    .line 448
    :cond_0
    sget-object v0, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    iget-object v1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus$1;->this$1:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;

    invoke-static {v1}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->access$300(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;)Lcom/texa/carelib/core/AppType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 450
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus$1;->this$1:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;

    iget-object v0, v0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;->this$0:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileSentProgressChangedEvent;->getProgress()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->fireServiceFirmwareUpgradeProgressChanged(F)V

    :cond_1
    :goto_0
    return-void
.end method
