.class public final synthetic Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;

    check-cast p1, Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->lambda$loadDTCs$0$com-texa-carelib-care-vehicle-internal-SerialVehicle(Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;)V

    return-void
.end method
