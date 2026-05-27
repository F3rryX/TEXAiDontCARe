.class public final synthetic Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/model/ScheduleDataManager;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/model/ScheduleDataManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda5;->f$0:Lcom/texa/careapp/model/ScheduleDataManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda5;->f$0:Lcom/texa/careapp/model/ScheduleDataManager;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/ScheduleDataManager;->lambda$syncThresholdsToServerWithUpdateVehicle$5$com-texa-careapp-model-ScheduleDataManager(Ljava/lang/Throwable;)V

    return-void
.end method
