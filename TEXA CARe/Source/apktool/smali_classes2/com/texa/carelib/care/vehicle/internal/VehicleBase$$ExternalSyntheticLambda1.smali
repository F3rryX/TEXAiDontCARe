.class public final synthetic Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/vehicle/internal/VehicleBase;

.field public final synthetic f$1:[Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/vehicle/internal/VehicleBase;[Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/care/vehicle/internal/VehicleBase;

    iput-object p2, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/care/vehicle/internal/VehicleBase;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->lambda$fireParametersUpdatedEvent$1$com-texa-carelib-care-vehicle-internal-VehicleBase([Ljava/lang/Long;)V

    return-void
.end method
