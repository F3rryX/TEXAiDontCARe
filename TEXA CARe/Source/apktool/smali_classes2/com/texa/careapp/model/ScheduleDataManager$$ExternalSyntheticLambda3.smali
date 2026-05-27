.class public final synthetic Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/model/ScheduleDataManager;

.field public final synthetic f$1:Lcom/texa/careapp/model/VehicleModel;

.field public final synthetic f$2:Lcom/texa/careapp/model/ThresholdModelList;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/model/ScheduleDataManager;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/ThresholdModelList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/model/ScheduleDataManager;

    iput-object p2, p0, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda3;->f$1:Lcom/texa/careapp/model/VehicleModel;

    iput-object p3, p0, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda3;->f$2:Lcom/texa/careapp/model/ThresholdModelList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/model/ScheduleDataManager;

    iget-object v1, p0, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda3;->f$1:Lcom/texa/careapp/model/VehicleModel;

    iget-object v2, p0, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda3;->f$2:Lcom/texa/careapp/model/ThresholdModelList;

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/model/ScheduleDataManager;->lambda$syncThresholdsToServerWithUpdateVehicle$6$com-texa-careapp-model-ScheduleDataManager(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/ThresholdModelList;)V

    return-void
.end method
