.class abstract Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeStatus;
.super Ljava/lang/Object;
.source "SerialFirmwareUpgradeProcedureSmart.java"

# interfaces
.implements Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "FirmwareUpgradeStatus"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;


# direct methods
.method private constructor <init>(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeStatus;->this$0:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$1;)V
    .locals 0

    .line 390
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeStatus;-><init>(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;)V

    return-void
.end method


# virtual methods
.method public onEnter()V
    .locals 0

    return-void
.end method

.method public onExit()V
    .locals 0

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    return-void
.end method
