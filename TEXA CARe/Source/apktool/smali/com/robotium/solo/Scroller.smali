.class Lcom/robotium/solo/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/robotium/solo/Scroller$Side;
    }
.end annotation


# static fields
.field public static final DOWN:I = 0x0

.field public static final UP:I = 0x1


# instance fields
.field private canScroll:Z

.field private final config:Lcom/robotium/solo/Solo$Config;

.field private final inst:Landroid/app/Instrumentation;

.field private final sleeper:Lcom/robotium/solo/Sleeper;

.field private final viewFetcher:Lcom/robotium/solo/ViewFetcher;


# direct methods
.method public constructor <init>(Lcom/robotium/solo/Solo$Config;Landroid/app/Instrumentation;Lcom/robotium/solo/ViewFetcher;Lcom/robotium/solo/Sleeper;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/robotium/solo/Scroller;->canScroll:Z

    .line 50
    iput-object p1, p0, Lcom/robotium/solo/Scroller;->config:Lcom/robotium/solo/Solo$Config;

    .line 51
    iput-object p2, p0, Lcom/robotium/solo/Scroller;->inst:Landroid/app/Instrumentation;

    .line 52
    iput-object p3, p0, Lcom/robotium/solo/Scroller;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    .line 53
    iput-object p4, p0, Lcom/robotium/solo/Scroller;->sleeper:Lcom/robotium/solo/Sleeper;

    return-void
.end method

.method static synthetic access$002(Lcom/robotium/solo/Scroller;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/robotium/solo/Scroller;->canScroll:Z

    return p1
.end method


# virtual methods
.method public drag(FFFFI)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p5

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-float v2, p4, p3

    int-to-float v3, v1

    div-float v12, v2, v3

    sub-float v2, p2, p1

    div-float v13, v2, v3

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-wide v2, v10

    move/from16 v7, p1

    move/from16 v8, p3

    .line 77
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 79
    :try_start_0
    iget-object v3, v0, Lcom/robotium/solo/Scroller;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x0

    move/from16 v2, p1

    move/from16 v3, p3

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v1, :cond_0

    add-float v15, v3, v12

    add-float v16, v2, v13

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x2

    const/4 v9, 0x0

    move-wide v2, v10

    move/from16 v7, v16

    move v8, v15

    .line 85
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 87
    :try_start_1
    iget-object v3, v0, Lcom/robotium/solo/Scroller;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v14, v14, 0x1

    move v3, v15

    move/from16 v2, v16

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-wide v1, v10

    move/from16 v6, p2

    move/from16 v7, p4

    .line 91
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 93
    :try_start_2
    iget-object v2, v0, Lcom/robotium/solo/Scroller;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method public scroll(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, p1, v0}, Lcom/robotium/solo/Scroller;->scroll(IZ)Z

    move-result p1

    return p1
.end method

.method public scroll(IZ)Z
    .locals 6

    .line 183
    iget-object v0, p0, Lcom/robotium/solo/Scroller;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/robotium/solo/ViewFetcher;->getAllViews(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/robotium/solo/RobotiumUtils;->removeInvisibleViews(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    .line 185
    const-class v3, Landroid/widget/ListView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/widget/ScrollView;

    aput-object v3, v2, v1

    const/4 v3, 0x2

    const-class v5, Landroid/widget/GridView;

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-class v5, Landroid/webkit/WebView;

    aput-object v5, v2, v3

    invoke-static {v2, v0}, Lcom/robotium/solo/RobotiumUtils;->filterViewsToSet([Ljava/lang/Class;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 188
    iget-object v2, p0, Lcom/robotium/solo/Scroller;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    invoke-virtual {v2, v1}, Lcom/robotium/solo/ViewFetcher;->getScrollableSupportPackageViews(Z)Ljava/util/List;

    move-result-object v1

    .line 190
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 191
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/robotium/solo/Scroller;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    invoke-virtual {v1, v0}, Lcom/robotium/solo/ViewFetcher;->getFreshestView(Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return v4

    .line 200
    :cond_1
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_2

    .line 201
    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/robotium/solo/Scroller;->scrollList(Landroid/widget/AbsListView;IZ)Z

    move-result p1

    return p1

    .line 204
    :cond_2
    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_3

    .line 205
    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/robotium/solo/Scroller;->scrollWebView(Landroid/webkit/WebView;IZ)Z

    move-result p1

    return p1

    :cond_3
    if-eqz p2, :cond_4

    .line 209
    invoke-virtual {p0, v0, p1}, Lcom/robotium/solo/Scroller;->scrollViewAllTheWay(Landroid/view/View;I)V

    return v4

    .line 212
    :cond_4
    invoke-virtual {p0, v0, p1}, Lcom/robotium/solo/Scroller;->scrollView(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public scrollDown()Z
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/robotium/solo/Scroller;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->shouldScroll:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 169
    :cond_0
    invoke-virtual {p0, v1}, Lcom/robotium/solo/Scroller;->scroll(I)Z

    move-result v0

    return v0
.end method

.method public scrollList(Landroid/widget/AbsListView;IZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/AbsListView;",
            ">(TT;IZ)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_5

    .line 261
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result p2

    .line 262
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    if-eqz p3, :cond_1

    sub-int/2addr p2, v1

    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/robotium/solo/Scroller;->scrollListToLine(Landroid/widget/AbsListView;I)V

    return v0

    :cond_1
    sub-int/2addr p2, v1

    if-lt v2, p2, :cond_3

    if-lez v2, :cond_2

    .line 271
    invoke-virtual {p0, p1, v2}, Lcom/robotium/solo/Scroller;->scrollListToLine(Landroid/widget/AbsListView;I)V

    :cond_2
    return v0

    .line 276
    :cond_3
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p2

    if-eq p2, v2, :cond_4

    .line 280
    invoke-virtual {p0, p1, v2}, Lcom/robotium/solo/Scroller;->scrollListToLine(Landroid/widget/AbsListView;I)V

    goto :goto_2

    :cond_4
    add-int/2addr p2, v1

    .line 283
    invoke-virtual {p0, p1, p2}, Lcom/robotium/solo/Scroller;->scrollListToLine(Landroid/widget/AbsListView;I)V

    goto :goto_2

    :cond_5
    if-ne p2, v1, :cond_a

    .line 286
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p2

    if-nez p3, :cond_9

    const/4 p3, 0x2

    if-ge p2, p3, :cond_6

    goto :goto_1

    .line 292
    :cond_6
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result p3

    sub-int v2, p3, p2

    sub-int/2addr p2, v2

    if-ne p2, p3, :cond_7

    add-int/lit8 p2, p2, -0x1

    :cond_7
    if-gez p2, :cond_8

    goto :goto_0

    :cond_8
    move v0, p2

    .line 304
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/robotium/solo/Scroller;->scrollListToLine(Landroid/widget/AbsListView;I)V

    goto :goto_2

    .line 289
    :cond_9
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/robotium/solo/Scroller;->scrollListToLine(Landroid/widget/AbsListView;I)V

    return v0

    .line 306
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/robotium/solo/Scroller;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {p1}, Lcom/robotium/solo/Sleeper;->sleep()V

    return v1
.end method

.method public scrollListToLine(Landroid/widget/AbsListView;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/AbsListView;",
            ">(TT;I)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "AbsListView is null!"

    .line 320
    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 323
    :cond_0
    instance-of v0, p1, Landroid/widget/GridView;

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/robotium/solo/Scroller;->inst:Landroid/app/Instrumentation;

    new-instance v1, Lcom/robotium/solo/Scroller$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/robotium/solo/Scroller$4;-><init>(Lcom/robotium/solo/Scroller;Landroid/widget/AbsListView;I)V

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public scrollToSide(Lcom/robotium/solo/Scroller$Side;FI)V
    .locals 8

    .line 348
    iget-object v0, p0, Lcom/robotium/solo/Scroller;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 351
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 353
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float p2, p2, v0

    int-to-float v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    .line 357
    sget-object v0, Lcom/robotium/solo/Scroller$Side;->LEFT:Lcom/robotium/solo/Scroller$Side;

    if-ne p1, v0, :cond_0

    const/high16 v3, 0x428c0000    # 70.0f

    move-object v2, p0

    move v4, p2

    move v5, v6

    move v7, p3

    .line 358
    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Scroller;->drag(FFFFI)V

    goto :goto_0

    .line 359
    :cond_0
    sget-object v0, Lcom/robotium/solo/Scroller$Side;->RIGHT:Lcom/robotium/solo/Scroller$Side;

    if-ne p1, v0, :cond_1

    const/4 v4, 0x0

    move-object v2, p0

    move v3, p2

    move v5, v6

    move v7, p3

    .line 360
    invoke-virtual/range {v2 .. v7}, Lcom/robotium/solo/Scroller;->drag(FFFFI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public scrollView(Landroid/view/View;I)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, -0x1

    add-int/2addr v1, v2

    const/4 v3, 0x1

    if-nez p2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    if-ne p2, v3, :cond_2

    neg-int v2, v1

    .line 122
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p2

    .line 124
    iget-object v1, p0, Lcom/robotium/solo/Scroller;->inst:Landroid/app/Instrumentation;

    new-instance v4, Lcom/robotium/solo/Scroller$1;

    invoke-direct {v4, p0, p1, v2}, Lcom/robotium/solo/Scroller$1;-><init>(Lcom/robotium/solo/Scroller;Landroid/view/View;I)V

    invoke-virtual {v1, v4}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    if-ne p2, p1, :cond_3

    return v0

    :cond_3
    return v3
.end method

.method public scrollViewAllTheWay(Landroid/view/View;I)V
    .locals 1

    .line 145
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/robotium/solo/Scroller;->scrollView(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scrollViewToSide(Landroid/view/View;Lcom/robotium/solo/Scroller$Side;FI)V
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 374
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 376
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    const/4 v2, 0x0

    .line 377
    aget v3, v0, v2

    int-to-float v3, v3

    int-to-float p1, p1

    mul-float p1, p1, p3

    add-float/2addr p1, v3

    const/4 p3, 0x1

    .line 378
    aget p3, v0, p3

    int-to-float p3, p3

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float v8, p3, v1

    .line 379
    sget-object p3, Lcom/robotium/solo/Scroller$Side;->LEFT:Lcom/robotium/solo/Scroller$Side;

    if-ne p2, p3, :cond_0

    .line 380
    aget p2, v0, v2

    int-to-float v5, p2

    move-object v4, p0

    move v6, p1

    move v7, v8

    move v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/robotium/solo/Scroller;->drag(FFFFI)V

    goto :goto_0

    .line 381
    :cond_0
    sget-object p3, Lcom/robotium/solo/Scroller$Side;->RIGHT:Lcom/robotium/solo/Scroller$Side;

    if-ne p2, p3, :cond_1

    .line 382
    aget p2, v0, v2

    int-to-float v6, p2

    move-object v4, p0

    move v5, p1

    move v7, v8

    move v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/robotium/solo/Scroller;->drag(FFFFI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public scrollWebView(Landroid/webkit/WebView;IZ)Z
    .locals 2

    if-nez p2, :cond_0

    .line 228
    iget-object v0, p0, Lcom/robotium/solo/Scroller;->inst:Landroid/app/Instrumentation;

    new-instance v1, Lcom/robotium/solo/Scroller$2;

    invoke-direct {v1, p0, p1, p3}, Lcom/robotium/solo/Scroller$2;-><init>(Lcom/robotium/solo/Scroller;Landroid/webkit/WebView;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 235
    iget-object p2, p0, Lcom/robotium/solo/Scroller;->inst:Landroid/app/Instrumentation;

    new-instance v0, Lcom/robotium/solo/Scroller$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/robotium/solo/Scroller$3;-><init>(Lcom/robotium/solo/Scroller;Landroid/webkit/WebView;Z)V

    invoke-virtual {p2, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 241
    :cond_1
    iget-boolean p1, p0, Lcom/robotium/solo/Scroller;->canScroll:Z

    return p1
.end method
