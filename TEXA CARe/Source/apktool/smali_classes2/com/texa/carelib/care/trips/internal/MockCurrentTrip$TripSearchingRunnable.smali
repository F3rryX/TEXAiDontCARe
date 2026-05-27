.class Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripSearchingRunnable;
.super Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripStatusRunnableBase;
.source "MockCurrentTrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TripSearchingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;


# direct methods
.method constructor <init>(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripSearchingRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripStatusRunnableBase;-><init>(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 145
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripSearchingRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    sget-object v1, Lcom/texa/carelib/care/trips/TripStatus;->Searching:Lcom/texa/carelib/care/trips/TripStatus;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->setTripStatus(Lcom/texa/carelib/care/trips/TripStatus;)V

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripSearchingRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->loadTripInfo()V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :catch_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripSearchingRunnable;->getScheduler()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;

    iget-object v2, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripSearchingRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripSearchingRunnable;->getScheduler()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;-><init>(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;Ljava/util/concurrent/ScheduledExecutorService;)V

    iget-object v2, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripSearchingRunnable;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-virtual {v2}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->EXTRA_SEARCHING_DURATION:Ljava/lang/String;

    const/16 v4, 0x1388

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
