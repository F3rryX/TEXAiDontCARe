.class Lcom/texa/careapp/utils/DtcManager$1;
.super Ljava/lang/Object;
.source "DtcManager.java"

# interfaces
.implements Lcom/texa/carelib/care/vehicletroubles/VehicleTroublesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/utils/DtcManager;->executeDtcScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/utils/DtcManager;


# direct methods
.method constructor <init>(Lcom/texa/careapp/utils/DtcManager;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/texa/careapp/utils/DtcManager$1;->this$0:Lcom/texa/careapp/utils/DtcManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDTCReadCompleted(Lcom/texa/carelib/care/vehicletroubles/events/DTCReadCompletedEvent;)V
    .locals 1

    .line 217
    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicletroubles/events/DTCReadCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object p1, p0, Lcom/texa/careapp/utils/DtcManager$1;->this$0:Lcom/texa/careapp/utils/DtcManager;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/utils/DtcManager;->onDTCTReadError(Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/utils/DtcManager$1;->this$0:Lcom/texa/careapp/utils/DtcManager;

    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicletroubles/events/DTCReadCompletedEvent;->getSource()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/DtcManager;->onDTCTReadSuccess(Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;)V

    .line 224
    :goto_0
    iget-object p1, p0, Lcom/texa/careapp/utils/DtcManager$1;->this$0:Lcom/texa/careapp/utils/DtcManager;

    invoke-static {p1}, Lcom/texa/careapp/utils/DtcManager;->access$000(Lcom/texa/careapp/utils/DtcManager;)Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;->removeVehicleTroublesListener(Lcom/texa/carelib/care/vehicletroubles/VehicleTroublesListener;)V

    return-void
.end method
