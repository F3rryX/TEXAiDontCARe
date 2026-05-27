.class public final synthetic Lcom/texa/carelib/care/vehicle/internal/MockVehicle$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    iput-object p2, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->lambda$loadValues$0$com-texa-carelib-care-vehicle-internal-MockVehicle(Ljava/util/Set;)V

    return-void
.end method
