.class Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripEndedRunnable;
.super Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripStatusRunnableBase;
.source "MockCurrentTrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TripEndedRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;


# direct methods
.method constructor <init>(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripEndedRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    .line 227
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripStatusRunnableBase;-><init>(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 232
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripEndedRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-static {v0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$600(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    move-result-object v0

    const-string v1, "TripEndedRunnable#run"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripEndedRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-static {v0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$700(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->from(Lcom/texa/carelib/care/trips/TripStatisticsInfo;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v0

    const/4 v2, 0x4

    .line 236
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setHardAccelerationCount(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v2

    const/4 v3, 0x2

    .line 237
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setHardBrakeCount(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v2

    const/16 v3, 0x1f4

    .line 238
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setTripIdleTime(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    .line 240
    iget-object v2, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripEndedRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->build()Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$702(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;Lcom/texa/carelib/care/trips/TripStatisticsInfo;)Lcom/texa/carelib/care/trips/TripStatisticsInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 243
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripEndedRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-static {v0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$600(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    .line 246
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripEndedRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-static {v0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$300(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 248
    :try_start_1
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripEndedRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-static {v0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$400(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->from(Lcom/texa/carelib/care/trips/TripEndInfo;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v0

    .line 259
    iget-object v2, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripEndedRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-virtual {v2}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "StopTripOdometer"

    const v4, 0x44155333    # 597.3f

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setOdometer(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    .line 260
    invoke-static {}, Lcom/texa/carelib/core/utils/internal/Utils;->getUTCNow()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    .line 264
    sget-object v2, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->LowRPM:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    invoke-virtual {v0, v2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setTripEndCause(Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    .line 265
    iget-object v2, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripEndedRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->build()Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$402(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;Lcom/texa/carelib/care/trips/TripEndInfo;)Lcom/texa/carelib/care/trips/TripEndInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripEndedRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-static {v0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$300(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    .line 271
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripEndedRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    sget-object v1, Lcom/texa/carelib/care/trips/TripStatus;->Ended:Lcom/texa/carelib/care/trips/TripStatus;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->setTripStatus(Lcom/texa/carelib/care/trips/TripStatus;)V

    .line 273
    :try_start_2
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripEndedRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->loadTripInfo()V
    :try_end_2
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v0

    .line 268
    iget-object v2, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripEndedRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-static {v2}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$300(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw v0

    :catchall_1
    move-exception v0

    .line 243
    iget-object v2, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripEndedRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-static {v2}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$600(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw v0
.end method
