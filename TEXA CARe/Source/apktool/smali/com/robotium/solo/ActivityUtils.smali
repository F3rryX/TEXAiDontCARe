.class Lcom/robotium/solo/ActivityUtils;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/robotium/solo/ActivityUtils$RegisterActivitiesThread;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final MINISLEEP:I

.field private activitiesStoredInActivityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private activity:Landroid/app/Activity;

.field private activityMonitor:Landroid/app/Instrumentation$ActivityMonitor;

.field private activityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private activitySyncTimer:Ljava/util/Timer;

.field activityThread:Ljava/lang/Thread;

.field private final config:Lcom/robotium/solo/Solo$Config;

.field private final inst:Landroid/app/Instrumentation;

.field private volatile registerActivities:Z

.field private final sleeper:Lcom/robotium/solo/Sleeper;

.field private weakActivityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/robotium/solo/Solo$Config;Landroid/app/Instrumentation;Landroid/app/Activity;Lcom/robotium/solo/Sleeper;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Robotium"

    .line 33
    iput-object v0, p0, Lcom/robotium/solo/ActivityUtils;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0x64

    .line 34
    iput v0, p0, Lcom/robotium/solo/ActivityUtils;->MINISLEEP:I

    .line 52
    iput-object p1, p0, Lcom/robotium/solo/ActivityUtils;->config:Lcom/robotium/solo/Solo$Config;

    .line 53
    iput-object p2, p0, Lcom/robotium/solo/ActivityUtils;->inst:Landroid/app/Instrumentation;

    .line 54
    iput-object p3, p0, Lcom/robotium/solo/ActivityUtils;->activity:Landroid/app/Activity;

    .line 55
    iput-object p4, p0, Lcom/robotium/solo/ActivityUtils;->sleeper:Lcom/robotium/solo/Sleeper;

    .line 56
    invoke-direct {p0}, Lcom/robotium/solo/ActivityUtils;->createStackAndPushStartActivity()V

    .line 57
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/robotium/solo/ActivityUtils;->activitySyncTimer:Ljava/util/Timer;

    .line 58
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/robotium/solo/ActivityUtils;->activitiesStoredInActivityStack:Ljava/util/Stack;

    .line 59
    invoke-direct {p0}, Lcom/robotium/solo/ActivityUtils;->setupActivityMonitor()V

    .line 60
    invoke-direct {p0}, Lcom/robotium/solo/ActivityUtils;->setupActivityStackListener()V

    return-void
.end method

.method private addActivityToStack(Landroid/app/Activity;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->activitiesStoredInActivityStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/robotium/solo/ActivityUtils;->weakActivityReference:Ljava/lang/ref/WeakReference;

    .line 247
    iget-object p1, p0, Lcom/robotium/solo/ActivityUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private clearActivityStack()V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 449
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->activitiesStoredInActivityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method private createStackAndPushStartActivity()V
    .locals 2

    .line 70
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/robotium/solo/ActivityUtils;->activityStack:Ljava/util/Stack;

    .line 71
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->trackActivities:Z

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/robotium/solo/ActivityUtils;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 73
    iput-object v1, p0, Lcom/robotium/solo/ActivityUtils;->activity:Landroid/app/Activity;

    .line 74
    iget-object v1, p0, Lcom/robotium/solo/ActivityUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private finishActivity(Landroid/app/Activity;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 461
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 463
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private removeActivityFromStack(Landroid/app/Activity;)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 179
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 183
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setupActivityMonitor()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->trackActivities:Z

    if-eqz v0, :cond_0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->inst:Landroid/app/Instrumentation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Landroid/app/Instrumentation;->addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/robotium/solo/ActivityUtils;->activityMonitor:Landroid/app/Instrumentation$ActivityMonitor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private setupActivityStackListener()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->activityMonitor:Landroid/app/Instrumentation$ActivityMonitor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 146
    invoke-virtual {p0, v0}, Lcom/robotium/solo/ActivityUtils;->setRegisterActivities(Z)V

    .line 148
    new-instance v0, Lcom/robotium/solo/ActivityUtils$RegisterActivitiesThread;

    invoke-direct {v0, p0}, Lcom/robotium/solo/ActivityUtils$RegisterActivitiesThread;-><init>(Lcom/robotium/solo/ActivityUtils;)V

    iput-object v0, p0, Lcom/robotium/solo/ActivityUtils;->activityThread:Ljava/lang/Thread;

    .line 149
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private stopActivityMonitor()V
    .locals 2

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->activityMonitor:Landroid/app/Instrumentation$ActivityMonitor;

    if-eqz v0, :cond_0

    .line 388
    iget-object v1, p0, Lcom/robotium/solo/ActivityUtils;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v1, v0}, Landroid/app/Instrumentation;->removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    const/4 v0, 0x0

    .line 389
    iput-object v0, p0, Lcom/robotium/solo/ActivityUtils;->activityMonitor:Landroid/app/Instrumentation$ActivityMonitor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private useGoBack(I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 433
    :try_start_0
    iget-object v1, p0, Lcom/robotium/solo/ActivityUtils;->inst:Landroid/app/Instrumentation;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 434
    iget-object v1, p0, Lcom/robotium/solo/ActivityUtils;->sleeper:Lcom/robotium/solo/Sleeper;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Lcom/robotium/solo/Sleeper;->sleep(I)V

    .line 435
    iget-object v1, p0, Lcom/robotium/solo/ActivityUtils;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final waitForActivityIfNotAvailable()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->activityMonitor:Landroid/app/Instrumentation$ActivityMonitor;

    if-eqz v0, :cond_2

    .line 259
    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityMonitor;->getLastActivity()Landroid/app/Activity;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/robotium/solo/Sleeper;->sleepMini()V

    .line 262
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->activityMonitor:Landroid/app/Instrumentation$ActivityMonitor;

    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityMonitor;->getLastActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    .line 264
    :cond_1
    invoke-direct {p0, v0}, Lcom/robotium/solo/ActivityUtils;->addActivityToStack(Landroid/app/Activity;)V

    goto :goto_1

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->trackActivities:Z

    if-eqz v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/robotium/solo/Sleeper;->sleepMini()V

    .line 268
    invoke-direct {p0}, Lcom/robotium/solo/ActivityUtils;->setupActivityMonitor()V

    .line 269
    invoke-direct {p0}, Lcom/robotium/solo/ActivityUtils;->waitForActivityIfNotAvailable()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->activitySyncTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 377
    invoke-direct {p0}, Lcom/robotium/solo/ActivityUtils;->stopActivityMonitor()V

    .line 378
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public finishOpenedActivities()V
    .locals 5

    .line 401
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->activitySyncTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 402
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->trackActivities:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 403
    invoke-direct {p0, v0}, Lcom/robotium/solo/ActivityUtils;->useGoBack(I)V

    return-void

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/robotium/solo/ActivityUtils;->getAllOpenedActivities()Ljava/util/ArrayList;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/16 v3, 0x64

    if-ltz v1, :cond_1

    .line 409
    iget-object v4, p0, Lcom/robotium/solo/ActivityUtils;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v4, v3}, Lcom/robotium/solo/Sleeper;->sleep(I)V

    .line 410
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-direct {p0, v3}, Lcom/robotium/solo/ActivityUtils;->finishActivity(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v0, v3}, Lcom/robotium/solo/Sleeper;->sleep(I)V

    const/4 v0, 0x0

    .line 415
    invoke-virtual {p0, v2, v0}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity(ZZ)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/robotium/solo/ActivityUtils;->finishActivity(Landroid/app/Activity;)V

    .line 416
    invoke-direct {p0}, Lcom/robotium/solo/ActivityUtils;->stopActivityMonitor()V

    .line 417
    invoke-virtual {p0, v0}, Lcom/robotium/solo/ActivityUtils;->setRegisterActivities(Z)V

    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Lcom/robotium/solo/ActivityUtils;->activity:Landroid/app/Activity;

    .line 419
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/robotium/solo/Sleeper;->sleepMini()V

    .line 420
    invoke-direct {p0, v2}, Lcom/robotium/solo/ActivityUtils;->useGoBack(I)V

    .line 421
    invoke-direct {p0}, Lcom/robotium/solo/ActivityUtils;->clearActivityStack()V

    return-void
.end method

.method public getActivityMonitor()Landroid/app/Instrumentation$ActivityMonitor;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->activityMonitor:Landroid/app/Instrumentation$ActivityMonitor;

    return-object v0
.end method

.method public getAllOpenedActivities()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    iget-object v1, p0, Lcom/robotium/solo/ActivityUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 90
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    const/4 v0, 0x1

    .line 234
    invoke-virtual {p0, v0, v0}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity(ZZ)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentActivity(Z)Landroid/app/Activity;
    .locals 1

    const/4 v0, 0x1

    .line 224
    invoke-virtual {p0, p1, v0}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity(ZZ)Landroid/app/Activity;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentActivity(ZZ)Landroid/app/Activity;
    .locals 0

    if-eqz p1, :cond_0

    .line 297
    iget-object p1, p0, Lcom/robotium/solo/ActivityUtils;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {p1}, Lcom/robotium/solo/Sleeper;->sleep()V

    .line 299
    :cond_0
    iget-object p1, p0, Lcom/robotium/solo/ActivityUtils;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean p1, p1, Lcom/robotium/solo/Solo$Config;->trackActivities:Z

    if-nez p1, :cond_1

    .line 300
    iget-object p1, p0, Lcom/robotium/solo/ActivityUtils;->activity:Landroid/app/Activity;

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    .line 304
    invoke-direct {p0}, Lcom/robotium/solo/ActivityUtils;->waitForActivityIfNotAvailable()V

    .line 306
    :cond_2
    iget-object p1, p0, Lcom/robotium/solo/ActivityUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 307
    iget-object p1, p0, Lcom/robotium/solo/ActivityUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/robotium/solo/ActivityUtils;->activity:Landroid/app/Activity;

    .line 309
    :cond_3
    iget-object p1, p0, Lcom/robotium/solo/ActivityUtils;->activity:Landroid/app/Activity;

    return-object p1
.end method

.method public getCurrentActivityName()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->activitiesStoredInActivityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->activitiesStoredInActivityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 363
    invoke-virtual {p0, v0}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 367
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public goBackToActivity(Ljava/lang/String;)V
    .locals 4

    .line 330
    invoke-virtual {p0}, Lcom/robotium/solo/ActivityUtils;->getAllOpenedActivities()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 332
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 333
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 339
    :goto_2
    invoke-virtual {p0}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->inst:Landroid/app/Instrumentation;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    .line 347
    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity priorly opened: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Robotium"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 350
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No Activity named: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' has been priorly opened"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public isActivityStackEmpty()Z
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method monitorActivities()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/robotium/solo/ActivityUtils;->activityMonitor:Landroid/app/Instrumentation$ActivityMonitor;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x7d0

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivityWithTimeout(J)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v1, p0, Lcom/robotium/solo/ActivityUtils;->activitiesStoredInActivityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-direct {p0, v0}, Lcom/robotium/solo/ActivityUtils;->removeActivityFromStack(Landroid/app/Activity;)V

    .line 161
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    invoke-direct {p0, v0}, Lcom/robotium/solo/ActivityUtils;->addActivityToStack(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public setActivityOrientation(I)V
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public setRegisterActivities(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/robotium/solo/ActivityUtils;->registerActivities:Z

    return-void
.end method

.method public shouldRegisterActivities()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/robotium/solo/ActivityUtils;->registerActivities:Z

    return v0
.end method
