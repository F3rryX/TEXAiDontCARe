.class public final synthetic Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

    iput-object p2, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

    iget-object v1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->lambda$updateServiceApp$1$com-texa-carelib-care-firmwareupgrade-internal-SerialFirmwareUpgradeProcedureSmart(Ljava/io/File;)V

    return-void
.end method
