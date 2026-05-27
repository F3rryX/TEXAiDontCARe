.class public final synthetic Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;JLjava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;

    iput-wide p2, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$$ExternalSyntheticLambda1;->f$1:J

    iput-object p4, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$$ExternalSyntheticLambda1;->f$2:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;

    iget-wide v1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$$ExternalSyntheticLambda1;->f$1:J

    iget-object v3, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$$ExternalSyntheticLambda1;->f$2:Ljava/util/Set;

    check-cast p1, Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->lambda$beginUpdateDTCs$1$com-texa-carelib-care-vehicle-internal-SerialVehicle(JLjava/util/Set;Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;)V

    return-void
.end method
