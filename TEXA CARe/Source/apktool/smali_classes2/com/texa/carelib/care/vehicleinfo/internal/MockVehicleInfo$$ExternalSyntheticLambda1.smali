.class public final synthetic Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;

    invoke-virtual {v0}, Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;->lambda$onCommunicationStatusChanged$1$com-texa-carelib-care-vehicleinfo-internal-MockVehicleInfo()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
