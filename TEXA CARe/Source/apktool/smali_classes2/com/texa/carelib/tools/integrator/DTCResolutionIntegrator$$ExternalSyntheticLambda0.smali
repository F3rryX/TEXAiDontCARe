.class public final synthetic Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;


# direct methods
.method public synthetic constructor <init>(JLcom/texa/carelib/care/vehicletroubles/VehicleTroubles;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator$$ExternalSyntheticLambda0;->f$0:J

    iput-object p3, p0, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator$$ExternalSyntheticLambda0;->f$1:Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 3

    iget-wide v0, p0, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator$$ExternalSyntheticLambda0;->f$0:J

    iget-object v2, p0, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator$$ExternalSyntheticLambda0;->f$1:Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;

    check-cast p1, Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;

    invoke-static {v0, v1, v2, p1}, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;->lambda$translateDTCsForECU$0(JLcom/texa/carelib/care/vehicletroubles/VehicleTroubles;Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;)V

    return-void
.end method
