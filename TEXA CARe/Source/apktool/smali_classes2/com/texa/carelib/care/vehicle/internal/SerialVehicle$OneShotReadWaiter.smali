.class Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;
.super Ljava/lang/Object;
.source "SerialVehicle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OneShotReadWaiter"
.end annotation


# instance fields
.field private final mECUsToRead:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mParametersToRead:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field final synthetic this$0:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;


# direct methods
.method public static synthetic $r8$lambda$rq7Vvx9WnWuWi3gm8mW_Kpnhga0(Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;)V
    .locals 0

    invoke-direct {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->onTimeout()V

    return-void
.end method

.method constructor <init>(Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->this$0:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->mParametersToRead:Ljava/util/Set;

    .line 810
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->mECUsToRead:Ljava/util/Set;

    .line 812
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private onTimeout()V
    .locals 4

    .line 890
    invoke-direct {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->resetAll()V

    .line 891
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->this$0:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;

    new-instance v1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v2, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->this$0:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;

    invoke-virtual {v2}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getProfile()Lcom/texa/carelib/profile/internal/SerialProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_one_shot_read_timeout:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    invoke-static {v0, v0, v1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->access$100(Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method private resetAll()V
    .locals 1

    .line 876
    invoke-direct {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->resetTimeout()V

    .line 878
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->mParametersToRead:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 879
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->mECUsToRead:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private resetTimeout()V
    .locals 2

    .line 883
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 884
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 885
    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method


# virtual methods
.method connected()V
    .locals 0

    .line 816
    invoke-direct {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->resetAll()V

    return-void
.end method

.method notConnected()V
    .locals 0

    .line 820
    invoke-direct {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->resetAll()V

    return-void
.end method

.method declared-synchronized onDTCsRead(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/care/vehicletroubles/DTCDetail;",
            ">;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->mECUsToRead:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 825
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 826
    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->mECUsToRead:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 829
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->mECUsToRead:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 830
    invoke-direct {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->resetTimeout()V

    .line 831
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->this$0:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getActiveSubscriptionCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->setActiveSubscriptionCount(Ljava/lang/Integer;)V

    .line 833
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->this$0:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;

    invoke-static {p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->access$000(Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;)Lcom/texa/carelib/core/Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 834
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->this$0:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;

    const/4 v0, 0x0

    invoke-static {p1, p1, v0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->access$100(Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;Lcom/texa/carelib/core/CareError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onParametersRead(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 841
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->mParametersToRead:Ljava/util/Set;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 842
    :try_start_1
    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->mParametersToRead:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 843
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    .line 844
    iget-object v2, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->mParametersToRead:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->getID()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 847
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->mParametersToRead:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 848
    invoke-direct {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->resetTimeout()V

    .line 849
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->this$0:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getActiveSubscriptionCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->setActiveSubscriptionCount(Ljava/lang/Integer;)V

    .line 851
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->this$0:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;

    invoke-static {p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->access$000(Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;)Lcom/texa/carelib/core/Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 852
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->this$0:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;

    const/4 v1, 0x0

    invoke-static {p1, p1, v1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->access$100(Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;Lcom/texa/carelib/core/CareError;)V

    .line 856
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 857
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 856
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized waitFor(ILjava/util/Set;JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 863
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->mECUsToRead:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 867
    :cond_1
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->mParametersToRead:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 872
    :goto_0
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;)V

    invoke-interface {p1, p2, p3, p4, p5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 873
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
