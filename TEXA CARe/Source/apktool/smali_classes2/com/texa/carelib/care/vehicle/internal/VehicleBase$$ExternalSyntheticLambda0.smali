.class public final synthetic Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/vehicle/internal/VehicleBase;

.field public final synthetic f$1:Lcom/texa/carelib/core/CareError;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/vehicle/internal/VehicleBase;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/care/vehicle/internal/VehicleBase;

    iput-object p2, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda0;->f$1:Lcom/texa/carelib/core/CareError;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/care/vehicle/internal/VehicleBase;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda0;->f$1:Lcom/texa/carelib/core/CareError;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->lambda$terminateLoadDTCs$2$com-texa-carelib-care-vehicle-internal-VehicleBase(Lcom/texa/carelib/core/CareError;)V

    return-void
.end method
