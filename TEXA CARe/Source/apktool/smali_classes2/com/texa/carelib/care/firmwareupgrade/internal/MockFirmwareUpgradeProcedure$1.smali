.class Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure$1;
.super Ljava/util/TimerTask;
.source "MockFirmwareUpgradeProcedure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->update(Lcom/texa/carelib/core/AppType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;


# direct methods
.method constructor <init>(Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure$1;->this$0:Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 193
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure$1;->this$0:Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;

    invoke-static {v0}, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->access$000(Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->access$002(Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;I)I

    .line 195
    sget-object v0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure$1;->this$0:Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;

    invoke-static {v3}, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->access$000(Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "Progress changed: %d"

    invoke-static {v0, v3, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    sget-object v0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure$2;->$SwitchMap$com$texa$carelib$core$AppType:[I

    iget-object v1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure$1;->this$0:Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;

    invoke-static {v1}, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->access$100(Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;)Lcom/texa/carelib/core/AppType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/AppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure$1;->this$0:Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;

    invoke-static {v0}, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->access$000(Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->fireServiceFirmwareUpgradeProgressChanged(I)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure$1;->this$0:Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;

    invoke-static {v0}, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->access$000(Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->fireMainFirmwareUpgradeProgressChanged(I)V

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure$1;->this$0:Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;

    invoke-static {v0}, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->access$000(Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;)I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    .line 211
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure$1;->this$0:Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->access$200(Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;Lcom/texa/carelib/core/CareError;)V

    :cond_2
    return-void
.end method
