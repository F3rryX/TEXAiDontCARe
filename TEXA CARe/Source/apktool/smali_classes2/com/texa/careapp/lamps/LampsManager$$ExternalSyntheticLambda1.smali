.class public final synthetic Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/lamps/LampsManager;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/texa/careapp/model/VehicleModel;

.field public final synthetic f$3:Lcom/texa/carelib/care/vehicle/Vehicle;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/lamps/LampsManager;JLcom/texa/careapp/model/VehicleModel;Lcom/texa/carelib/care/vehicle/Vehicle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/lamps/LampsManager;

    iput-wide p2, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda1;->f$1:J

    iput-object p4, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda1;->f$2:Lcom/texa/careapp/model/VehicleModel;

    iput-object p5, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda1;->f$3:Lcom/texa/carelib/care/vehicle/Vehicle;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/lamps/LampsManager;

    iget-wide v1, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda1;->f$1:J

    iget-object v3, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda1;->f$2:Lcom/texa/careapp/model/VehicleModel;

    iget-object v4, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda1;->f$3:Lcom/texa/carelib/care/vehicle/Vehicle;

    move-object v5, p1

    check-cast v5, Lcom/texa/careapp/model/VehicleParam;

    move-object v6, p2

    check-cast v6, Lcom/texa/careapp/model/VehicleParam;

    invoke-virtual/range {v0 .. v6}, Lcom/texa/careapp/lamps/LampsManager;->lambda$filterLampUpdate$0$com-texa-careapp-lamps-LampsManager(JLcom/texa/careapp/model/VehicleModel;Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/careapp/model/VehicleParam;Lcom/texa/careapp/model/VehicleParam;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
