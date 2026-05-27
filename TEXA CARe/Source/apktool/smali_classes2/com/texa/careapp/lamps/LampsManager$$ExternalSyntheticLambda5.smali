.class public final synthetic Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/lamps/LampsManager;

.field public final synthetic f$1:Lcom/texa/careapp/model/VehicleModel;

.field public final synthetic f$2:Lcom/texa/careapp/utils/Timestamped;

.field public final synthetic f$3:Lcom/texa/carelib/care/vehicle/Vehicle;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/lamps/LampsManager;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/utils/Timestamped;Lcom/texa/carelib/care/vehicle/Vehicle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda5;->f$0:Lcom/texa/careapp/lamps/LampsManager;

    iput-object p2, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda5;->f$1:Lcom/texa/careapp/model/VehicleModel;

    iput-object p3, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda5;->f$2:Lcom/texa/careapp/utils/Timestamped;

    iput-object p4, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda5;->f$3:Lcom/texa/carelib/care/vehicle/Vehicle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda5;->f$0:Lcom/texa/careapp/lamps/LampsManager;

    iget-object v1, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda5;->f$1:Lcom/texa/careapp/model/VehicleModel;

    iget-object v2, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda5;->f$2:Lcom/texa/careapp/utils/Timestamped;

    iget-object v3, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda5;->f$3:Lcom/texa/carelib/care/vehicle/Vehicle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/texa/careapp/lamps/LampsManager;->lambda$onLampsUpdated$2$com-texa-careapp-lamps-LampsManager(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/utils/Timestamped;Lcom/texa/carelib/care/vehicle/Vehicle;)V

    return-void
.end method
