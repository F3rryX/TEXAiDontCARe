.class Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;
.super Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripStatusRunnableBase;
.source "MockCurrentTrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TripInProgressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;


# direct methods
.method constructor <init>(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripStatusRunnableBase;-><init>(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "StartTripOdometer"

    .line 162
    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-static {v1}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$000(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    move-result-object v1

    const-string v2, "TripInProgressRunnable#run"

    invoke-virtual {v1, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-static {v1}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$100(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/care/trips/TripBeginInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->from(Lcom/texa/carelib/care/trips/TripBeginInfo;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v1

    .line 166
    invoke-static {}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$200()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    .line 167
    invoke-virtual {v4}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "StartTripAverageVoltageEngineOff"

    const v6, 0x41433333    # 12.2f

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setAverageVoltageEngineOff(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    .line 168
    invoke-virtual {v4}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "StartTripMinVoltageEngineOff"

    const v6, 0x413ccccd    # 11.8f

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setMinVoltageEngineOff(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    .line 169
    invoke-virtual {v4}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const v5, 0x4401399a    # 516.9f

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setOdometer(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v3

    .line 170
    invoke-static {}, Lcom/texa/carelib/core/utils/internal/Utils;->getUTCNow()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    .line 172
    iget-object v3, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-virtual {v1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->build()Lcom/texa/carelib/care/trips/TripBeginInfo;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$102(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;Lcom/texa/carelib/care/trips/TripBeginInfo;)Lcom/texa/carelib/care/trips/TripBeginInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 175
    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-static {v1}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$000(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    .line 178
    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-static {v1}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$300(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 180
    :try_start_1
    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-static {v1}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$400(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->from(Lcom/texa/carelib/care/trips/TripEndInfo;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v1

    .line 182
    invoke-static {}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$200()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    .line 183
    iget-object v3, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-virtual {v3}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "StopTripAverageVoltageEngineOn"

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setMaxVoltageEngineOn(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    .line 185
    iget-object v3, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-virtual {v3}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "SimulatorDriverID"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 187
    invoke-static {v3}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    invoke-static {}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$500()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setDriverID(Ljava/util/UUID;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    goto :goto_0

    .line 190
    :cond_0
    invoke-static {v3}, Lcom/texa/carelib/core/utils/UUIDHelper;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setDriverID(Ljava/util/UUID;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    .line 192
    :goto_0
    iget-object v3, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-virtual {v3}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setOdometer(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    .line 193
    invoke-static {}, Lcom/texa/carelib/core/utils/internal/Utils;->getUTCNow()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    const/4 v0, 0x0

    .line 194
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setIsMILLampDetected(Ljava/lang/Boolean;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    .line 195
    sget-object v3, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;->Diagnostic:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    invoke-virtual {v1, v3}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setOdometerEstimationMethod(Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    .line 196
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setNumOfImpactDetected(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    .line 198
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-virtual {v1}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->build()Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$402(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;Lcom/texa/carelib/care/trips/TripEndInfo;)Lcom/texa/carelib/care/trips/TripEndInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-static {v0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$300(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    .line 204
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-static {v0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$600(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 206
    :try_start_2
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-static {v0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$700(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->from(Lcom/texa/carelib/care/trips/TripStatisticsInfo;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v0

    .line 207
    invoke-static {}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$200()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    .line 208
    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->build()Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$702(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;Lcom/texa/carelib/care/trips/TripStatisticsInfo;)Lcom/texa/carelib/care/trips/TripStatisticsInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-static {v0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$600(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    .line 214
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    sget-object v1, Lcom/texa/carelib/care/trips/TripStatus;->InProgress:Lcom/texa/carelib/care/trips/TripStatus;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->setTripStatus(Lcom/texa/carelib/care/trips/TripStatus;)V

    .line 217
    :try_start_3
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->loadTripInfo()V
    :try_end_3
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_3 .. :try_end_3} :catch_0

    .line 221
    :catch_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->getScheduler()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripEndedRunnable;

    iget-object v2, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->getScheduler()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripEndedRunnable;-><init>(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;Ljava/util/concurrent/ScheduledExecutorService;)V

    iget-object v2, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-virtual {v2}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->EXTRA_IN_PROGRESS_DURATION:Ljava/lang/String;

    const/16 v4, 0x4e20

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    :catchall_0
    move-exception v0

    .line 211
    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-static {v1}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$600(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw v0

    :catchall_1
    move-exception v0

    .line 201
    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-static {v1}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$300(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw v0

    :catchall_2
    move-exception v0

    .line 175
    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-static {v1}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->access$000(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw v0
.end method
