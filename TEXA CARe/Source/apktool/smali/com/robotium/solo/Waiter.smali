.class Lcom/robotium/solo/Waiter;
.super Ljava/lang/Object;
.source "Waiter.java"


# instance fields
.field private final activityUtils:Lcom/robotium/solo/ActivityUtils;

.field private final instrumentation:Landroid/app/Instrumentation;

.field private final scroller:Lcom/robotium/solo/Scroller;

.field private final searcher:Lcom/robotium/solo/Searcher;

.field private final sleeper:Lcom/robotium/solo/Sleeper;

.field private final viewFetcher:Lcom/robotium/solo/ViewFetcher;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Lcom/robotium/solo/ActivityUtils;Lcom/robotium/solo/ViewFetcher;Lcom/robotium/solo/Searcher;Lcom/robotium/solo/Scroller;Lcom/robotium/solo/Sleeper;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/robotium/solo/Waiter;->instrumentation:Landroid/app/Instrumentation;

    .line 52
    iput-object p2, p0, Lcom/robotium/solo/Waiter;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    .line 53
    iput-object p3, p0, Lcom/robotium/solo/Waiter;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    .line 54
    iput-object p4, p0, Lcom/robotium/solo/Waiter;->searcher:Lcom/robotium/solo/Searcher;

    .line 55
    iput-object p5, p0, Lcom/robotium/solo/Waiter;->scroller:Lcom/robotium/solo/Scroller;

    .line 56
    iput-object p6, p0, Lcom/robotium/solo/Waiter;->sleeper:Lcom/robotium/solo/Sleeper;

    return-void
.end method

.method private destroy(Ljava/lang/Process;Ljava/io/BufferedReader;)V
    .locals 0

    .line 821
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    .line 823
    :try_start_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 825
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getActivityMonitor()Landroid/app/Instrumentation$ActivityMonitor;
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/robotium/solo/Waiter;->instrumentation:Landroid/app/Instrumentation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Landroid/app/Instrumentation;->addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;

    move-result-object v0

    return-object v0
.end method

.method private getFragment(Ljava/lang/String;I)Landroid/app/Fragment;
    .locals 0

    if-nez p1, :cond_0

    .line 841
    :try_start_0
    iget-object p1, p0, Lcom/robotium/solo/Waiter;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    invoke-virtual {p1}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object p1

    return-object p1

    .line 843
    :cond_0
    iget-object p2, p0, Lcom/robotium/solo/Waiter;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    invoke-virtual {p2}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getLog(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 6

    const/4 v0, 0x0

    .line 758
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "logcat -d"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    .line 759
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    const/4 v0, 0x0

    .line 762
    :try_start_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 763
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 766
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 770
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    const-string v2, "logcat returns error: "

    .line 772
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 774
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 776
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 780
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 783
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_5

    .line 784
    :cond_2
    invoke-direct {p0, v1, v3}, Lcom/robotium/solo/Waiter;->destroy(Ljava/lang/Process;Ljava/io/BufferedReader;)V

    .line 786
    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v3, v2

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catch_6
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    goto :goto_2

    :catch_7
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    goto :goto_3

    :catch_8
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    goto :goto_4

    :catch_9
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 794
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_a
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 792
    :goto_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    :catch_b
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 790
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 796
    :goto_5
    invoke-direct {p0, v1, v3}, Lcom/robotium/solo/Waiter;->destroy(Ljava/lang/Process;Ljava/io/BufferedReader;)V

    return-object p1
.end method

.method private getSupportFragment(Ljava/lang/String;I)Landroidx/fragment/app/Fragment;
    .locals 3

    const/4 v0, 0x0

    .line 707
    :try_start_0
    iget-object v1, p0, Lcom/robotium/solo/Waiter;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    .line 713
    :try_start_1
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    .line 715
    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    :cond_1
    return-object v0
.end method

.method private isActivityMatching(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isActivityMatching(Ljava/lang/Class;Landroid/app/Activity;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/app/Activity;",
            ")Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 172
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .locals 1

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/robotium/solo/Waiter;->instrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public clearLog()V
    .locals 2

    .line 807
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "logcat -c"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 809
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public waitForActivity(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    .line 128
    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/robotium/solo/Waiter;->waitForActivity(Ljava/lang/Class;I)Z

    move-result p1

    return p1
.end method

.method public waitForActivity(Ljava/lang/Class;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I)Z"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/robotium/solo/Waiter;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity(ZZ)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/robotium/solo/Waiter;->isActivityMatching(Ljava/lang/Class;Landroid/app/Activity;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/robotium/solo/Waiter;->getActivityMonitor()Landroid/app/Instrumentation$ActivityMonitor;

    move-result-object v0

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    int-to-long v5, p2

    add-long/2addr v5, v3

    :goto_0
    cmp-long p2, v3, v5

    if-gez p2, :cond_2

    sub-long v3, v5, v3

    .line 151
    invoke-virtual {v0, v3, v4}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivityWithTimeout(J)Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 153
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 157
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    goto :goto_0

    .line 159
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/robotium/solo/Waiter;->removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    return v1
.end method

.method public waitForActivity(Ljava/lang/String;)Z
    .locals 1

    .line 68
    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/robotium/solo/Waiter;->waitForActivity(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public waitForActivity(Ljava/lang/String;I)Z
    .locals 7

    .line 81
    iget-object v0, p0, Lcom/robotium/solo/Waiter;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity(ZZ)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/robotium/solo/Waiter;->isActivityMatching(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/robotium/solo/Waiter;->getActivityMonitor()Landroid/app/Instrumentation$ActivityMonitor;

    move-result-object v0

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    int-to-long v5, p2

    add-long/2addr v5, v3

    :goto_0
    cmp-long p2, v3, v5

    if-gez p2, :cond_2

    sub-long v3, v5, v3

    .line 91
    invoke-virtual {v0, v3, v4}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivityWithTimeout(J)Landroid/app/Activity;

    move-result-object p2

    .line 93
    invoke-direct {p0, p2, p1}, Lcom/robotium/solo/Waiter;->isActivityMatching(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 97
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    goto :goto_0

    .line 99
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/robotium/solo/Waiter;->removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    return v1
.end method

.method public waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 646
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 647
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    cmp-long v5, v2, v0

    if-gtz v5, :cond_0

    invoke-virtual {p0, p2, p1, v4, v4}, Lcom/robotium/solo/Waiter;->waitForView(Ljava/lang/Class;IZZ)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Waiter;->searcher:Lcom/robotium/solo/Searcher;

    invoke-virtual {v0}, Lcom/robotium/solo/Searcher;->getNumberOfUniqueViews()I

    move-result v0

    .line 649
    iget-object v1, p0, Lcom/robotium/solo/Waiter;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    invoke-virtual {v1, p2, v4}, Lcom/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/robotium/solo/RobotiumUtils;->removeInvisibleViews(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 651
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 652
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int v0, p1, v0

    if-ltz v0, :cond_1

    move p1, v0

    :cond_1
    const/4 v0, 0x0

    .line 659
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    nop

    add-int/2addr p1, v4

    if-le p1, v4, :cond_2

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " are not found!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_1

    .line 666
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not found!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public waitForCondition(Lcom/robotium/solo/Condition;I)Z
    .locals 6

    .line 516
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 519
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 p2, 0x1

    const/4 v4, 0x0

    cmp-long v5, v2, v0

    if-lez v5, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    return v4

    .line 524
    :cond_2
    iget-object v2, p0, Lcom/robotium/solo/Waiter;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v2}, Lcom/robotium/solo/Sleeper;->sleep()V

    .line 526
    invoke-interface {p1}, Lcom/robotium/solo/Condition;->isSatisfied()Z

    move-result v2

    if-eqz v2, :cond_0

    return p2
.end method

.method public waitForFragment(Ljava/lang/String;II)Z
    .locals 4

    .line 683
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p3

    add-long/2addr v0, v2

    .line 684
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long p3, v2, v0

    if-gtz p3, :cond_2

    .line 686
    invoke-direct {p0, p1, p2}, Lcom/robotium/solo/Waiter;->getSupportFragment(Ljava/lang/String;I)Landroidx/fragment/app/Fragment;

    move-result-object p3

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    return v2

    .line 689
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/robotium/solo/Waiter;->getFragment(Ljava/lang/String;I)Landroid/app/Fragment;

    move-result-object p3

    if-eqz p3, :cond_0

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public waitForLogMessage(Ljava/lang/String;I)Z
    .locals 5

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 733
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, p2

    add-long/2addr v1, v3

    .line 734
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-gtz p2, :cond_1

    .line 736
    invoke-direct {p0, v0}, Lcom/robotium/solo/Waiter;->getLog(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    const/4 p1, 0x1

    return p1

    .line 739
    :cond_0
    iget-object p2, p0, Lcom/robotium/solo/Waiter;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {p2}, Lcom/robotium/solo/Sleeper;->sleep()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public waitForText(Ljava/lang/Class;Ljava/lang/String;IJZ)Landroid/widget/TextView;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/TextView;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "IJZ)TT;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    .line 583
    invoke-virtual/range {v0 .. v8}, Lcom/robotium/solo/Waiter;->waitForText(Ljava/lang/Class;Ljava/lang/String;IJZZZ)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public waitForText(Ljava/lang/Class;Ljava/lang/String;IJZZZ)Landroid/widget/TextView;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/TextView;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "IJZZZ)TT;"
        }
    .end annotation

    move-object v0, p0

    .line 616
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long v1, v1, p4

    move-wide/from16 v3, p4

    .line 619
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-lez v7, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_2

    const/4 v1, 0x0

    return-object v1

    .line 624
    :cond_2
    iget-object v5, v0, Lcom/robotium/solo/Waiter;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v5}, Lcom/robotium/solo/Sleeper;->sleep()V

    if-nez p8, :cond_3

    const-wide/16 v3, 0x0

    .line 629
    :cond_3
    iget-object v5, v0, Lcom/robotium/solo/Waiter;->searcher:Lcom/robotium/solo/Searcher;

    move-object v6, p1

    move-object v7, p2

    move/from16 v8, p3

    move-wide v9, v3

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-virtual/range {v5 .. v12}, Lcom/robotium/solo/Searcher;->searchFor(Ljava/lang/Class;Ljava/lang/String;IJZZ)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_0

    return-object v5
.end method

.method public waitForText(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 7

    .line 540
    invoke-static {}, Lcom/robotium/solo/Timeout;->getLargeTimeout()I

    move-result v0

    int-to-long v4, v0

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/robotium/solo/Waiter;->waitForText(Ljava/lang/String;IJZ)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public waitForText(Ljava/lang/String;IJ)Landroid/widget/TextView;
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 554
    invoke-virtual/range {v0 .. v5}, Lcom/robotium/solo/Waiter;->waitForText(Ljava/lang/String;IJZ)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public waitForText(Ljava/lang/String;IJZ)Landroid/widget/TextView;
    .locals 9

    .line 568
    const-class v1, Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v8}, Lcom/robotium/solo/Waiter;->waitForText(Ljava/lang/Class;Ljava/lang/String;IJZZZ)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public waitForText(Ljava/lang/String;IJZZZ)Landroid/widget/TextView;
    .locals 9

    .line 599
    const-class v1, Landroid/widget/TextView;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/robotium/solo/Waiter;->waitForText(Ljava/lang/Class;Ljava/lang/String;IJZZZ)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public waitForView(III)Landroid/view/View;
    .locals 1

    if-nez p3, :cond_0

    .line 385
    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result p3

    :cond_0
    const/4 v0, 0x0

    .line 387
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/robotium/solo/Waiter;->waitForView(IIIZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public waitForView(IIIZ)Landroid/view/View;
    .locals 6

    .line 399
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 400
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, p3

    add-long/2addr v1, v3

    .line 402
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long p3, v3, v1

    if-gtz p3, :cond_3

    .line 403
    iget-object p3, p0, Lcom/robotium/solo/Waiter;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {p3}, Lcom/robotium/solo/Sleeper;->sleep()V

    .line 405
    iget-object p3, p0, Lcom/robotium/solo/Waiter;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Lcom/robotium/solo/ViewFetcher;->getAllViews(Z)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 406
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 408
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 409
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    if-le v4, p2, :cond_1

    return-object v3

    :cond_2
    if-eqz p4, :cond_0

    .line 417
    iget-object p3, p0, Lcom/robotium/solo/Waiter;->scroller:Lcom/robotium/solo/Scroller;

    invoke-virtual {p3}, Lcom/robotium/solo/Scroller;->scrollDown()Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public waitForView(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    .line 321
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/robotium/solo/Waiter;->waitForView(Landroid/view/View;IZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public waitForView(Landroid/view/View;IZZ)Landroid/view/View;
    .locals 5

    .line 335
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p2, 0x0

    .line 341
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_6

    .line 343
    iget-object v2, p0, Lcom/robotium/solo/Waiter;->searcher:Lcom/robotium/solo/Searcher;

    invoke-virtual {v2, p1}, Lcom/robotium/solo/Searcher;->searchFor(Landroid/view/View;)Z

    move-result v2

    if-eqz p4, :cond_3

    if-eqz v2, :cond_3

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_3

    .line 346
    iget-object v2, p0, Lcom/robotium/solo/Waiter;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v2}, Lcom/robotium/solo/Sleeper;->sleepMini()V

    add-int/lit8 p2, p2, 0x1

    .line 349
    iget-object v2, p0, Lcom/robotium/solo/Waiter;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    invoke-virtual {v2, p1}, Lcom/robotium/solo/ViewFetcher;->getIdenticalView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 350
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object p1, v2

    :cond_2
    const/4 v2, 0x5

    if-le p2, v2, :cond_1

    return-object p1

    :cond_3
    if-eqz v2, :cond_4

    return-object p1

    :cond_4
    if-eqz p3, :cond_5

    .line 365
    iget-object v2, p0, Lcom/robotium/solo/Waiter;->scroller:Lcom/robotium/solo/Scroller;

    invoke-virtual {v2}, Lcom/robotium/solo/Scroller;->scrollDown()Z

    .line 368
    :cond_5
    iget-object v2, p0, Lcom/robotium/solo/Waiter;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v2}, Lcom/robotium/solo/Sleeper;->sleep()V

    goto :goto_0

    :cond_6
    return-object p1
.end method

.method public waitForView(Ljava/lang/Object;II)Landroid/view/View;
    .locals 1

    if-nez p3, :cond_0

    .line 433
    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result p3

    :cond_0
    const/4 v0, 0x0

    .line 435
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/robotium/solo/Waiter;->waitForView(Ljava/lang/Object;IIZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public waitForView(Ljava/lang/Object;IIZ)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 452
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 453
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-long v4, p3

    add-long/2addr v2, v4

    .line 455
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long p3, v4, v2

    if-gtz p3, :cond_4

    .line 456
    iget-object p3, p0, Lcom/robotium/solo/Waiter;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {p3}, Lcom/robotium/solo/Sleeper;->sleep()V

    .line 458
    iget-object p3, p0, Lcom/robotium/solo/Waiter;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Lcom/robotium/solo/ViewFetcher;->getAllViews(Z)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 459
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 460
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    if-le v5, p2, :cond_2

    return-object v4

    :cond_3
    if-eqz p4, :cond_1

    .line 468
    iget-object p3, p0, Lcom/robotium/solo/Waiter;->scroller:Lcom/robotium/solo/Scroller;

    invoke-virtual {p3}, Lcom/robotium/solo/Scroller;->scrollDown()Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public waitForView(Landroid/view/View;)Z
    .locals 2

    .line 303
    invoke-static {}, Lcom/robotium/solo/Timeout;->getLargeTimeout()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/robotium/solo/Waiter;->waitForView(Landroid/view/View;IZZ)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public waitForView(Ljava/lang/Class;IIZ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;IIZ)Z"
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 246
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, p3

    add-long/2addr v1, v3

    .line 249
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long p3, v3, v1

    if-gez p3, :cond_2

    .line 250
    iget-object p3, p0, Lcom/robotium/solo/Waiter;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {p3}, Lcom/robotium/solo/Sleeper;->sleep()V

    .line 252
    iget-object p3, p0, Lcom/robotium/solo/Waiter;->searcher:Lcom/robotium/solo/Searcher;

    invoke-virtual {p3, v0, p1, p2}, Lcom/robotium/solo/Searcher;->searchFor(Ljava/util/Set;Ljava/lang/Class;I)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-eqz p4, :cond_0

    .line 258
    iget-object p3, p0, Lcom/robotium/solo/Waiter;->scroller:Lcom/robotium/solo/Scroller;

    invoke-virtual {p3}, Lcom/robotium/solo/Scroller;->scrollDown()Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public waitForView(Ljava/lang/Class;IZZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;IZZ)Z"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_0
    if-eqz p3, :cond_1

    .line 219
    iget-object v1, p0, Lcom/robotium/solo/Waiter;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v1}, Lcom/robotium/solo/Sleeper;->sleep()V

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/robotium/solo/Waiter;->searcher:Lcom/robotium/solo/Searcher;

    invoke-virtual {v1, v0, p1, p2}, Lcom/robotium/solo/Searcher;->searchFor(Ljava/util/Set;Ljava/lang/Class;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 v1, 0x0

    if-eqz p4, :cond_3

    .line 226
    iget-object v2, p0, Lcom/robotium/solo/Waiter;->scroller:Lcom/robotium/solo/Scroller;

    invoke-virtual {v2}, Lcom/robotium/solo/Scroller;->scrollDown()Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    if-nez p4, :cond_0

    return v1
.end method

.method public varargs waitForViews(Z[Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(Z[",
            "Ljava/lang/Class<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 274
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 276
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    cmp-long v5, v2, v0

    if-gez v5, :cond_3

    .line 278
    array-length v2, p2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v5, p2, v3

    .line 279
    invoke-virtual {p0, v5, v4, v4, v4}, Lcom/robotium/solo/Waiter;->waitForView(Ljava/lang/Class;IZZ)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 284
    iget-object v2, p0, Lcom/robotium/solo/Waiter;->scroller:Lcom/robotium/solo/Scroller;

    invoke-virtual {v2, v4}, Lcom/robotium/solo/Scroller;->scroll(I)Z

    goto :goto_2

    .line 287
    :cond_2
    iget-object v2, p0, Lcom/robotium/solo/Waiter;->scroller:Lcom/robotium/solo/Scroller;

    invoke-virtual {v2}, Lcom/robotium/solo/Scroller;->scrollDown()Z

    .line 289
    :goto_2
    iget-object v2, p0, Lcom/robotium/solo/Waiter;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v2}, Lcom/robotium/solo/Sleeper;->sleep()V

    goto :goto_0

    :cond_3
    return v4
.end method

.method public waitForWebElement(Lcom/robotium/solo/By;IIZ)Lcom/robotium/solo/WebElement;
    .locals 4

    .line 484
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p3

    add-long/2addr v0, v2

    .line 488
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long p3, v2, v0

    if-lez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_2

    .line 491
    iget-object p2, p0, Lcom/robotium/solo/Waiter;->searcher:Lcom/robotium/solo/Searcher;

    invoke-virtual {p1}, Lcom/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/robotium/solo/Searcher;->logMatchesFound(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 494
    :cond_2
    iget-object p3, p0, Lcom/robotium/solo/Waiter;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {p3}, Lcom/robotium/solo/Sleeper;->sleep()V

    .line 496
    iget-object p3, p0, Lcom/robotium/solo/Waiter;->searcher:Lcom/robotium/solo/Searcher;

    invoke-virtual {p3, p1, p2}, Lcom/robotium/solo/Searcher;->searchForWebElement(Lcom/robotium/solo/By;I)Lcom/robotium/solo/WebElement;

    move-result-object p3

    if-eqz p3, :cond_3

    return-object p3

    :cond_3
    if-eqz p4, :cond_0

    .line 502
    iget-object p3, p0, Lcom/robotium/solo/Waiter;->scroller:Lcom/robotium/solo/Scroller;

    invoke-virtual {p3}, Lcom/robotium/solo/Scroller;->scrollDown()Z

    goto :goto_0
.end method
