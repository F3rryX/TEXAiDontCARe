.class Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeFinalizeStatus;
.super Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeStatus;
.source "SerialFirmwareUpgradeProcedureSmart.java"

# interfaces
.implements Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FirmwareUpgradeFinalizeStatus"
.end annotation


# instance fields
.field private final mAppType:Lcom/texa/carelib/core/AppType;

.field private final mFWUpgradeProcedure:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

.field private final mFile:Ljava/io/File;

.field final synthetic this$0:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;Lcom/texa/carelib/core/AppType;Ljava/io/File;)V
    .locals 1

    .line 467
    iput-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeFinalizeStatus;->this$0:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeStatus;-><init>(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$1;)V

    .line 468
    iput-object p2, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeFinalizeStatus;->mFWUpgradeProcedure:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

    .line 469
    iput-object p3, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeFinalizeStatus;->mAppType:Lcom/texa/carelib/core/AppType;

    .line 470
    iput-object p4, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeFinalizeStatus;->mFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public onEnter()V
    .locals 1

    .line 475
    invoke-super {p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeStatus;->onEnter()V

    .line 476
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeFinalizeStatus;->mFWUpgradeProcedure:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

    invoke-static {v0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->access$700(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 1

    .line 491
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p1

    const/16 p2, 0x41

    if-ne p2, p1, :cond_0

    .line 493
    iget-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeFinalizeStatus;->mFWUpgradeProcedure:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

    iget-object p2, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeFinalizeStatus;->mAppType:Lcom/texa/carelib/core/AppType;

    iget-object p3, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeFinalizeStatus;->mFile:Ljava/io/File;

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->access$500(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;Lcom/texa/carelib/core/AppType;Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    :cond_0
    return-void
.end method
