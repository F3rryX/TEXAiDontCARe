.class Lcom/robotium/solo/Clicker;
.super Ljava/lang/Object;
.source "Clicker.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final MINI_WAIT:I

.field private final WAIT_TIME:I

.field private final activityUtils:Lcom/robotium/solo/ActivityUtils;

.field private final dialogUtils:Lcom/robotium/solo/DialogUtils;

.field private final inst:Landroid/app/Instrumentation;

.field private final sender:Lcom/robotium/solo/Sender;

.field private final sleeper:Lcom/robotium/solo/Sleeper;

.field private final viewFetcher:Lcom/robotium/solo/ViewFetcher;

.field private final waiter:Lcom/robotium/solo/Waiter;

.field private final webUtils:Lcom/robotium/solo/WebUtils;


# direct methods
.method public constructor <init>(Lcom/robotium/solo/ActivityUtils;Lcom/robotium/solo/ViewFetcher;Lcom/robotium/solo/Sender;Landroid/app/Instrumentation;Lcom/robotium/solo/Sleeper;Lcom/robotium/solo/Waiter;Lcom/robotium/solo/WebUtils;Lcom/robotium/solo/DialogUtils;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Robotium"

    .line 34
    iput-object v0, p0, Lcom/robotium/solo/Clicker;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0x12c

    .line 43
    iput v0, p0, Lcom/robotium/solo/Clicker;->MINI_WAIT:I

    const/16 v0, 0x5dc

    .line 44
    iput v0, p0, Lcom/robotium/solo/Clicker;->WAIT_TIME:I

    .line 62
    iput-object p1, p0, Lcom/robotium/solo/Clicker;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    .line 63
    iput-object p2, p0, Lcom/robotium/solo/Clicker;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    .line 64
    iput-object p3, p0, Lcom/robotium/solo/Clicker;->sender:Lcom/robotium/solo/Sender;

    .line 65
    iput-object p4, p0, Lcom/robotium/solo/Clicker;->inst:Landroid/app/Instrumentation;

    .line 66
    iput-object p5, p0, Lcom/robotium/solo/Clicker;->sleeper:Lcom/robotium/solo/Sleeper;

    .line 67
    iput-object p6, p0, Lcom/robotium/solo/Clicker;->waiter:Lcom/robotium/solo/Waiter;

    .line 68
    iput-object p7, p0, Lcom/robotium/solo/Clicker;->webUtils:Lcom/robotium/solo/WebUtils;

    .line 69
    iput-object p8, p0, Lcom/robotium/solo/Clicker;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    return-void
.end method

.method private failIfIndexHigherThenChildCount(Landroid/view/ViewGroup;IJ)V
    .locals 3

    .line 639
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-le p2, v0, :cond_2

    .line 640
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v2, v0, p3

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    .line 642
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not click on index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " as there are only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " indexes available"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/robotium/solo/Clicker;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/robotium/solo/Sleeper;->sleep()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getClickCoordinates(Landroid/view/View;)[F
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [F

    .line 224
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 225
    :goto_0
    aget v4, v1, v2

    const/4 v5, 0x1

    if-nez v4, :cond_0

    aget v4, v1, v5

    if-nez v4, :cond_0

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    .line 226
    iget-object v4, p0, Lcom/robotium/solo/Clicker;->sleeper:Lcom/robotium/solo/Sleeper;

    const/16 v5, 0x12c

    invoke-virtual {v4, v5}, Lcom/robotium/solo/Sleeper;->sleep(I)V

    .line 227
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 233
    aget v4, v1, v2

    int-to-float v4, v4

    int-to-float v3, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    add-float/2addr v4, v3

    .line 234
    aget v1, v1, v5

    int-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr p1, v6

    add-float/2addr v1, p1

    aput v4, v0, v2

    aput v1, v0, v5

    return-object v0
.end method

.method private getView(ILjava/util/List;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 630
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 631
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getViewOnAbsListLine(Landroid/widget/AbsListView;II)Landroid/view/View;
    .locals 5

    .line 660
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 661
    invoke-virtual {p1, p3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_3

    .line 664
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    const-string v2, "View is null and can therefore not be clicked!"

    .line 666
    invoke-static {v2}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 669
    :cond_1
    iget-object v2, p0, Lcom/robotium/solo/Clicker;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v2}, Lcom/robotium/solo/Sleeper;->sleep()V

    .line 670
    iget-object v2, p0, Lcom/robotium/solo/Clicker;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    invoke-virtual {v2, p1}, Lcom/robotium/solo/ViewFetcher;->getIdenticalView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AbsListView;

    if-nez p1, :cond_2

    .line 673
    iget-object p1, p0, Lcom/robotium/solo/Clicker;->waiter:Lcom/robotium/solo/Waiter;

    const-class v2, Landroid/widget/AbsListView;

    invoke-virtual {p1, p2, v2}, Lcom/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AbsListView;

    .line 676
    :cond_2
    invoke-virtual {p1, p3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private getViewOnRecyclerItemIndex(Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 7

    .line 690
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 691
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :cond_0
    :goto_0
    if-nez v2, :cond_4

    .line 694
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    cmp-long v6, v3, v0

    if-lez v6, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    const-string v3, "View is null and can therefore not be clicked!"

    .line 696
    invoke-static {v3}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 699
    :cond_2
    iget-object v3, p0, Lcom/robotium/solo/Clicker;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v3}, Lcom/robotium/solo/Sleeper;->sleep()V

    .line 700
    iget-object v3, p0, Lcom/robotium/solo/Clicker;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    invoke-virtual {v3, p1}, Lcom/robotium/solo/ViewFetcher;->getIdenticalView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_3

    .line 703
    iget-object p1, p0, Lcom/robotium/solo/Clicker;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    invoke-virtual {p1, v5, p2}, Lcom/robotium/solo/ViewFetcher;->getRecyclerView(ZI)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    :cond_3
    if-eqz p1, :cond_0

    .line 707
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method private openMenu()V
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/robotium/solo/Clicker;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/robotium/solo/Sleeper;->sleepMini()V

    .line 277
    iget-object v0, p0, Lcom/robotium/solo/Clicker;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    const-wide/16 v1, 0x12c

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/robotium/solo/DialogUtils;->waitForDialogToOpen(JZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/robotium/solo/Clicker;->sender:Lcom/robotium/solo/Sender;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Lcom/robotium/solo/Sender;->sendKeyCode(I)V

    .line 280
    iget-object v0, p0, Lcom/robotium/solo/Clicker;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    const-wide/16 v1, 0x5dc

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/robotium/solo/DialogUtils;->waitForDialogToOpen(JZ)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Can not open the menu!"

    .line 282
    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public clickInList(I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 508
    invoke-virtual/range {v0 .. v5}, Lcom/robotium/solo/Clicker;->clickInList(IIIZI)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public clickInList(IIIZI)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZI)",
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .line 533
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 539
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 540
    iget-object v4, p0, Lcom/robotium/solo/Clicker;->waiter:Lcom/robotium/solo/Waiter;

    const-class v5, Landroid/widget/AbsListView;

    invoke-virtual {v4, p2, v5}, Lcom/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView;

    if-nez v4, :cond_1

    const-string v5, "AbsListView is null!"

    .line 543
    invoke-static {v5}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 545
    :cond_1
    invoke-direct {p0, v4, p1, v0, v1}, Lcom/robotium/solo/Clicker;->failIfIndexHigherThenChildCount(Landroid/view/ViewGroup;IJ)V

    .line 547
    invoke-direct {p0, v4, p2, p1}, Lcom/robotium/solo/Clicker;->getViewOnAbsListLine(Landroid/widget/AbsListView;II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 550
    iget-object p2, p0, Lcom/robotium/solo/Clicker;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    invoke-virtual {p2, p1, v2}, Lcom/robotium/solo/ViewFetcher;->getViews(Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object p2

    .line 551
    invoke-static {p2}, Lcom/robotium/solo/RobotiumUtils;->removeInvisibleViews(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez p3, :cond_2

    .line 554
    invoke-virtual {p0, p1, p4, p5}, Lcom/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;ZI)V

    goto :goto_0

    .line 557
    :cond_2
    invoke-direct {p0, p3, v3}, Lcom/robotium/solo/Clicker;->getView(ILjava/util/List;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;)V

    .line 560
    :cond_3
    :goto_0
    const-class p1, Landroid/widget/TextView;

    invoke-static {p1, v3}, Lcom/robotium/solo/RobotiumUtils;->filterViews(Ljava/lang/Class;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public clickInList(II)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    .line 519
    invoke-virtual/range {v0 .. v5}, Lcom/robotium/solo/Clicker;->clickInList(IIIZI)Ljava/util/ArrayList;

    return-void
.end method

.method public clickInRecyclerView(I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 572
    invoke-virtual/range {v0 .. v5}, Lcom/robotium/solo/Clicker;->clickInRecyclerView(IIIZI)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public clickInRecyclerView(IIIZI)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZI)",
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .line 599
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 604
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 605
    iget-object v3, p0, Lcom/robotium/solo/Clicker;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v4

    invoke-virtual {v3, p2, v4}, Lcom/robotium/solo/ViewFetcher;->getRecyclerView(II)Landroid/view/ViewGroup;

    move-result-object v3

    if-nez v3, :cond_1

    const-string p1, "RecyclerView is not found!"

    .line 608
    invoke-static {p1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 611
    :cond_1
    invoke-direct {p0, v3, p1, v0, v1}, Lcom/robotium/solo/Clicker;->failIfIndexHigherThenChildCount(Landroid/view/ViewGroup;IJ)V

    .line 612
    invoke-direct {p0, v3, p2, p1}, Lcom/robotium/solo/Clicker;->getViewOnRecyclerItemIndex(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 616
    iget-object p2, p0, Lcom/robotium/solo/Clicker;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/robotium/solo/ViewFetcher;->getViews(Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object p2

    .line 617
    invoke-static {p2}, Lcom/robotium/solo/RobotiumUtils;->removeInvisibleViews(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez p3, :cond_2

    .line 620
    invoke-virtual {p0, p1, p4, p5}, Lcom/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;ZI)V

    goto :goto_1

    .line 623
    :cond_2
    invoke-direct {p0, p3, v2}, Lcom/robotium/solo/Clicker;->getView(ILjava/util/List;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;)V

    .line 626
    :cond_3
    :goto_1
    const-class p1, Landroid/widget/TextView;

    invoke-static {p1, v2}, Lcom/robotium/solo/RobotiumUtils;->filterViews(Ljava/lang/Class;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public clickInRecyclerView(II)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    .line 583
    invoke-virtual/range {v0 .. v5}, Lcom/robotium/solo/Clicker;->clickInRecyclerView(IIIZI)Ljava/util/ArrayList;

    return-void
.end method

.method public clickLongOnScreen(FFILandroid/view/View;)V
    .locals 15

    move-object v1, p0

    move/from16 v2, p3

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-wide v3, v11

    move/from16 v8, p1

    move/from16 v9, p2

    .line 127
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move/from16 v13, p1

    move/from16 v14, p2

    move-object v0, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_0
    :goto_0
    if-nez v7, :cond_1

    const/16 v9, 0x14

    if-ge v8, v9, :cond_1

    const/16 v9, 0x12c

    .line 131
    :try_start_0
    iget-object v10, v1, Lcom/robotium/solo/Clicker;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v10, v3}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    :try_start_1
    iget-object v7, v1, Lcom/robotium/solo/Clicker;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v7, v9}, Lcom/robotium/solo/Sleeper;->sleep(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v7, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 136
    :goto_1
    iget-object v10, v1, Lcom/robotium/solo/Clicker;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    invoke-virtual {v10, v4, v6, v5}, Lcom/robotium/solo/DialogUtils;->hideSoftKeyboard(Landroid/widget/EditText;ZZ)V

    .line 137
    iget-object v10, v1, Lcom/robotium/solo/Clicker;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v10, v9}, Lcom/robotium/solo/Sleeper;->sleep(I)V

    add-int/lit8 v8, v8, 0x1

    .line 139
    iget-object v9, v1, Lcom/robotium/solo/Clicker;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    move-object/from16 v10, p4

    invoke-virtual {v9, v10}, Lcom/robotium/solo/ViewFetcher;->getIdenticalView(Landroid/view/View;)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 141
    invoke-direct {p0, v9}, Lcom/robotium/solo/Clicker;->getClickCoordinates(Landroid/view/View;)[F

    move-result-object v9

    .line 142
    aget v13, v9, v6

    .line 143
    aget v9, v9, v5

    move v14, v9

    goto :goto_0

    :cond_1
    if-nez v7, :cond_3

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Long click at ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ") can not be completed! ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v0, "null"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 151
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x2

    const/high16 v0, 0x3f800000    # 1.0f

    add-float v8, v13, v0

    add-float v9, v14, v0

    const/4 v10, 0x0

    move-wide v3, v11

    .line 152
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 153
    iget-object v3, v1, Lcom/robotium/solo/Clicker;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v3, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    if-lez v2, :cond_4

    .line 155
    iget-object v0, v1, Lcom/robotium/solo/Clicker;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v0, v2}, Lcom/robotium/solo/Sleeper;->sleep(I)V

    goto :goto_3

    .line 157
    :cond_4
    iget-object v0, v1, Lcom/robotium/solo/Clicker;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/robotium/solo/Sleeper;->sleep(I)V

    .line 159
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v9, 0x0

    move-wide v2, v11

    move v7, v13

    move v8, v14

    .line 160
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 161
    iget-object v2, v1, Lcom/robotium/solo/Clicker;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v2, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 162
    iget-object v0, v1, Lcom/robotium/solo/Clicker;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/robotium/solo/Sleeper;->sleep()V

    return-void
.end method

.method public clickLongOnTextAndPress(Ljava/lang/String;I)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 255
    invoke-virtual/range {v0 .. v5}, Lcom/robotium/solo/Clicker;->clickOnText(Ljava/lang/String;ZIZI)V

    .line 256
    iget-object p1, p0, Lcom/robotium/solo/Clicker;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1, v2}, Lcom/robotium/solo/DialogUtils;->waitForDialogToOpen(JZ)Z

    const/16 p1, 0x14

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/robotium/solo/Clicker;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Can not press the context menu!"

    .line 260
    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_0

    .line 264
    iget-object v1, p0, Lcom/robotium/solo/Clicker;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v1}, Lcom/robotium/solo/Sleeper;->sleepMini()V

    .line 265
    iget-object v1, p0, Lcom/robotium/solo/Clicker;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v1, p1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 267
    :cond_0
    iget-object p1, p0, Lcom/robotium/solo/Clicker;->inst:Landroid/app/Instrumentation;

    const/16 p2, 0x42

    invoke-virtual {p1, p2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    return-void
.end method

.method public clickOn(Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/robotium/solo/Clicker;->waiter:Lcom/robotium/solo/Waiter;

    invoke-virtual {v0, p2, p1}, Lcom/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;)V

    return-void
.end method

.method public clickOn(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/TextView;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/robotium/solo/Clicker;->waiter:Lcom/robotium/solo/Waiter;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    int-to-long v4, v1

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/robotium/solo/Waiter;->waitForText(Ljava/lang/Class;Ljava/lang/String;IJZZZ)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {p0, v0}, Lcom/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;)V

    goto :goto_1

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Clicker;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/robotium/solo/RobotiumUtils;->removeInvisibleViews(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' not found. Have found: \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Robotium"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 483
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with text: \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not found!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public clickOnActionBarHomeButton()V
    .locals 11

    .line 360
    iget-object v0, p0, Lcom/robotium/solo/Clicker;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    invoke-virtual {v0}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.android.internal.view.menu.ActionMenuItem"

    .line 364
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x6

    new-array v4, v3, [Ljava/lang/Class;

    .line 366
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    .line 367
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 368
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    .line 369
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v5, v4, v8

    .line 370
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x4

    aput-object v5, v4, v9

    .line 371
    const-class v5, Ljava/lang/CharSequence;

    const/4 v10, 0x5

    aput-object v5, v4, v10

    .line 372
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    .line 375
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x102002c

    .line 376
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 377
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    .line 378
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    const-string v4, ""

    aput-object v4, v3, v10

    .line 380
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "Robotium"

    const-string v3, "Can not find methods to invoke Home button!"

    .line 382
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    .line 387
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    return-void
.end method

.method public clickOnActionBarItem(I)V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/robotium/solo/Clicker;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/robotium/solo/Sleeper;->sleep()V

    .line 349
    iget-object v0, p0, Lcom/robotium/solo/Clicker;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    invoke-virtual {v0}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v1, p0, Lcom/robotium/solo/Clicker;->inst:Landroid/app/Instrumentation;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/app/Instrumentation;->invokeMenuActionSync(Landroid/app/Activity;II)Z

    :cond_0
    return-void
.end method

.method public clickOnMenuItem(Ljava/lang/String;)V
    .locals 6

    .line 295
    invoke-direct {p0}, Lcom/robotium/solo/Clicker;->openMenu()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 296
    invoke-virtual/range {v0 .. v5}, Lcom/robotium/solo/Clicker;->clickOnText(Ljava/lang/String;ZIZI)V

    return-void
.end method

.method public clickOnMenuItem(Ljava/lang/String;Z)V
    .locals 11

    .line 308
    iget-object v0, p0, Lcom/robotium/solo/Clicker;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/robotium/solo/Sleeper;->sleepMini()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 315
    iget-object v1, p0, Lcom/robotium/solo/Clicker;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/robotium/solo/DialogUtils;->waitForDialogToOpen(JZ)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/robotium/solo/Clicker;->sender:Lcom/robotium/solo/Sender;

    const/16 v3, 0x52

    invoke-virtual {v1, v3}, Lcom/robotium/solo/Sender;->sendKeyCode(I)V

    .line 318
    iget-object v1, p0, Lcom/robotium/solo/Clicker;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    const-wide/16 v5, 0x5dc

    invoke-virtual {v1, v5, v6, v2}, Lcom/robotium/solo/DialogUtils;->waitForDialogToOpen(JZ)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Can not open the menu!"

    .line 320
    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 323
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/robotium/solo/Clicker;->waiter:Lcom/robotium/solo/Waiter;

    const/4 v7, 0x1

    const-wide/16 v8, 0x5dc

    const/4 v10, 0x1

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/robotium/solo/Waiter;->waitForText(Ljava/lang/String;IJZ)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x0

    if-eqz p2, :cond_4

    .line 325
    iget-object p2, p0, Lcom/robotium/solo/Clicker;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const-class v5, Landroid/widget/TextView;

    invoke-virtual {p2, v5, v2}, Lcom/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v5, 0x5

    if-le p2, v5, :cond_4

    if-nez v1, :cond_4

    .line 326
    iget-object p2, p0, Lcom/robotium/solo/Clicker;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const-class v1, Landroid/widget/TextView;

    invoke-virtual {p2, v1, v2}, Lcom/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 327
    aget v5, v0, v4

    .line 328
    aget v6, v0, v2

    .line 329
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 331
    aget v7, v0, v4

    if-gt v7, v5, :cond_3

    aget v5, v0, v2

    if-le v5, v6, :cond_2

    :cond_3
    move-object v3, v1

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    .line 336
    invoke-virtual {p0, v3}, Lcom/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;)V

    :cond_5
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 338
    invoke-virtual/range {v4 .. v9}, Lcom/robotium/solo/Clicker;->clickOnText(Ljava/lang/String;ZIZI)V

    return-void
.end method

.method public clickOnScreen(FFLandroid/view/View;)V
    .locals 21

    move-object/from16 v1, p0

    const/4 v3, 0x0

    move/from16 v12, p1

    move/from16 v13, p2

    const/4 v0, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :cond_0
    :goto_0
    if-nez v14, :cond_1

    const/16 v4, 0x14

    if-ge v15, v4, :cond_1

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-wide/from16 v4, v16

    move-wide/from16 v6, v18

    move v9, v12

    move v10, v13

    .line 87
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    const/4 v8, 0x1

    const/16 v20, 0x0

    move-object v2, v11

    move/from16 v11, v20

    .line 89
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    const/4 v5, 0x1

    .line 92
    :try_start_0
    iget-object v6, v1, Lcom/robotium/solo/Clicker;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v6, v2}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 93
    iget-object v2, v1, Lcom/robotium/solo/Clicker;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v2, v4}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v6, p3

    const/4 v4, 0x0

    const/4 v14, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 97
    iget-object v2, v1, Lcom/robotium/solo/Clicker;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lcom/robotium/solo/DialogUtils;->hideSoftKeyboard(Landroid/widget/EditText;ZZ)V

    .line 98
    iget-object v2, v1, Lcom/robotium/solo/Clicker;->sleeper:Lcom/robotium/solo/Sleeper;

    const/16 v6, 0x12c

    invoke-virtual {v2, v6}, Lcom/robotium/solo/Sleeper;->sleep(I)V

    add-int/lit8 v15, v15, 0x1

    .line 100
    iget-object v2, v1, Lcom/robotium/solo/Clicker;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    move-object/from16 v6, p3

    invoke-virtual {v2, v6}, Lcom/robotium/solo/ViewFetcher;->getIdenticalView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 102
    invoke-direct {v1, v2}, Lcom/robotium/solo/Clicker;->getClickCoordinates(Landroid/view/View;)[F

    move-result-object v2

    .line 103
    aget v7, v2, v3

    .line 104
    aget v2, v2, v5

    move v13, v2

    move v12, v7

    goto :goto_0

    :cond_1
    if-nez v14, :cond_3

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Click at ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ") can not be completed! ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public clickOnScreen(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, p1, v0, v0}, Lcom/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;ZI)V

    return-void
.end method

.method public clickOnScreen(Landroid/view/View;ZI)V
    .locals 6

    if-nez p1, :cond_0

    const-string v0, "View is null and can therefore not be clicked!"

    .line 186
    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 188
    :cond_0
    invoke-direct {p0, p1}, Lcom/robotium/solo/Clicker;->getClickCoordinates(Landroid/view/View;)[F

    move-result-object v0

    const/4 v1, 0x0

    .line 189
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 190
    aget v0, v0, v3

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_1

    cmpl-float v4, v0, v4

    if-nez v4, :cond_2

    .line 193
    :cond_1
    iget-object v4, p0, Lcom/robotium/solo/Clicker;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v4}, Lcom/robotium/solo/Sleeper;->sleepMini()V

    .line 195
    :try_start_0
    iget-object v4, p0, Lcom/robotium/solo/Clicker;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    invoke-virtual {v4, p1}, Lcom/robotium/solo/ViewFetcher;->getIdenticalView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz p1, :cond_2

    .line 199
    invoke-direct {p0, p1}, Lcom/robotium/solo/Clicker;->getClickCoordinates(Landroid/view/View;)[F

    move-result-object v0

    .line 200
    aget v2, v0, v1

    .line 201
    aget v0, v0, v3

    .line 205
    :cond_2
    iget-object v1, p0, Lcom/robotium/solo/Clicker;->sleeper:Lcom/robotium/solo/Sleeper;

    const/16 v3, 0x12c

    invoke-virtual {v1, v3}, Lcom/robotium/solo/Sleeper;->sleep(I)V

    if-eqz p2, :cond_3

    .line 207
    invoke-virtual {p0, v2, v0, p3, p1}, Lcom/robotium/solo/Clicker;->clickLongOnScreen(FFILandroid/view/View;)V

    goto :goto_1

    .line 209
    :cond_3
    invoke-virtual {p0, v2, v0, p1}, Lcom/robotium/solo/Clicker;->clickOnScreen(FFLandroid/view/View;)V

    :goto_1
    return-void
.end method

.method public clickOnText(Ljava/lang/String;ZIZI)V
    .locals 8

    .line 439
    iget-object v0, p0, Lcom/robotium/solo/Clicker;->waiter:Lcom/robotium/solo/Waiter;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    int-to-long v3, v1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    move v2, p3

    move v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/robotium/solo/Waiter;->waitForText(Ljava/lang/String;IJZZZ)Landroid/widget/TextView;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 442
    invoke-virtual {p0, p4, p2, p5}, Lcom/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;ZI)V

    goto/16 :goto_1

    :cond_0
    const/4 p2, 0x1

    if-le p3, p2, :cond_1

    .line 448
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " matches of text string: \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' are not found!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_1

    .line 452
    :cond_1
    iget-object p3, p0, Lcom/robotium/solo/Clicker;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const-class p4, Landroid/widget/TextView;

    invoke-virtual {p3, p4, p2}, Lcom/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p2}, Lcom/robotium/solo/RobotiumUtils;->removeInvisibleViews(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p2

    .line 453
    iget-object p3, p0, Lcom/robotium/solo/Clicker;->webUtils:Lcom/robotium/solo/WebUtils;

    invoke-virtual {p3}, Lcom/robotium/solo/WebUtils;->getTextViewsFromWebView()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 455
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 456
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "\'"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' not found. Have found: \'"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Robotium"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 459
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Text string: \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not found!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public clickOnWebElement(Lcom/robotium/solo/By;IZZ)V
    .locals 5

    const-string v0, "\' is not found!"

    const-string v1, "WebElement with "

    const/4 v2, 0x1

    const-string v3, ": \'"

    if-eqz p4, :cond_1

    .line 405
    iget-object p3, p0, Lcom/robotium/solo/Clicker;->waiter:Lcom/robotium/solo/Waiter;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result p4

    const/4 v4, 0x0

    invoke-virtual {p3, p1, p2, p4, v4}, Lcom/robotium/solo/Waiter;->waitForWebElement(Lcom/robotium/solo/By;IIZ)Lcom/robotium/solo/WebElement;

    move-result-object p2

    if-nez p2, :cond_0

    .line 407
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/robotium/solo/Clicker;->webUtils:Lcom/robotium/solo/WebUtils;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/robotium/solo/WebUtils;->splitNameByUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 409
    :cond_0
    iget-object p2, p0, Lcom/robotium/solo/Clicker;->webUtils:Lcom/robotium/solo/WebUtils;

    invoke-virtual {p2, p1, v2}, Lcom/robotium/solo/WebUtils;->executeJavaScript(Lcom/robotium/solo/By;Z)Z

    return-void

    .line 413
    :cond_1
    iget-object p4, p0, Lcom/robotium/solo/Clicker;->waiter:Lcom/robotium/solo/Waiter;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v4

    invoke-virtual {p4, p1, p2, v4, p3}, Lcom/robotium/solo/Waiter;->waitForWebElement(Lcom/robotium/solo/By;IIZ)Lcom/robotium/solo/WebElement;

    move-result-object p3

    if-nez p3, :cond_3

    if-le p2, v2, :cond_2

    .line 417
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " WebElements with "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/robotium/solo/Clicker;->webUtils:Lcom/robotium/solo/WebUtils;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/robotium/solo/WebUtils;->splitNameByUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' are not found!"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 420
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/robotium/solo/Clicker;->webUtils:Lcom/robotium/solo/WebUtils;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/robotium/solo/WebUtils;->splitNameByUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 424
    :cond_3
    :goto_0
    invoke-virtual {p3}, Lcom/robotium/solo/WebElement;->getLocationX()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p3}, Lcom/robotium/solo/WebElement;->getLocationY()I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/robotium/solo/Clicker;->clickOnScreen(FFLandroid/view/View;)V

    return-void
.end method
