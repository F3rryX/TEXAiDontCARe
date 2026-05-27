.class public final synthetic Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/vehicle/internal/VehicleBase;

.field public final synthetic f$1:[Ljava/lang/Long;

.field public final synthetic f$2:[Lcom/texa/carelib/care/vehicle/SubscriptionState;

.field public final synthetic f$3:Lcom/texa/carelib/core/CareError;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/vehicle/internal/VehicleBase;[Ljava/lang/Long;[Lcom/texa/carelib/care/vehicle/SubscriptionState;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda2;->f$0:Lcom/texa/carelib/care/vehicle/internal/VehicleBase;

    iput-object p2, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda2;->f$1:[Ljava/lang/Long;

    iput-object p3, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda2;->f$2:[Lcom/texa/carelib/care/vehicle/SubscriptionState;

    iput-object p4, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda2;->f$3:Lcom/texa/carelib/core/CareError;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda2;->f$0:Lcom/texa/carelib/care/vehicle/internal/VehicleBase;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda2;->f$1:[Ljava/lang/Long;

    iget-object v2, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda2;->f$2:[Lcom/texa/carelib/care/vehicle/SubscriptionState;

    iget-object v3, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda2;->f$3:Lcom/texa/carelib/core/CareError;

    invoke-virtual {v0, v1, v2, v3}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->lambda$fireSubscriptionStateChangedEvent$0$com-texa-carelib-care-vehicle-internal-VehicleBase([Ljava/lang/Long;[Lcom/texa/carelib/care/vehicle/SubscriptionState;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method
