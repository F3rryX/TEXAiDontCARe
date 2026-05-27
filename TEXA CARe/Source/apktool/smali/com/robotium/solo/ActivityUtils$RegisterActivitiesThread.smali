.class final Lcom/robotium/solo/ActivityUtils$RegisterActivitiesThread;
.super Ljava/lang/Thread;
.source "ActivityUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/robotium/solo/ActivityUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RegisterActivitiesThread"
.end annotation


# static fields
.field public static final REGISTER_ACTIVITY_THREAD_SLEEP_MS:J = 0x10L


# instance fields
.field private final activityUtilsWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/robotium/solo/ActivityUtils;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/robotium/solo/ActivityUtils;)V
    .locals 1

    const-string v0, "activityMonitorThread"

    .line 474
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 475
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/robotium/solo/ActivityUtils$RegisterActivitiesThread;->activityUtilsWR:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    .line 476
    invoke-virtual {p0, p1}, Lcom/robotium/solo/ActivityUtils$RegisterActivitiesThread;->setPriority(I)V

    return-void
.end method

.method private monitorActivities()V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils$RegisterActivitiesThread;->activityUtilsWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/robotium/solo/ActivityUtils;

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {v0}, Lcom/robotium/solo/ActivityUtils;->monitorActivities()V

    :cond_0
    return-void
.end method

.method private shouldMonitor()Z
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils$RegisterActivitiesThread;->activityUtilsWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/robotium/solo/ActivityUtils;

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0}, Lcom/robotium/solo/ActivityUtils;->shouldRegisterActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 481
    :goto_0
    invoke-direct {p0}, Lcom/robotium/solo/ActivityUtils$RegisterActivitiesThread;->shouldMonitor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-direct {p0}, Lcom/robotium/solo/ActivityUtils$RegisterActivitiesThread;->monitorActivities()V

    const-wide/16 v0, 0x10

    .line 483
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_0
    return-void
.end method
