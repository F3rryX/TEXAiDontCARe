.class Lcom/robotium/solo/ViewFetcher;
.super Ljava/lang/Object;
.source "ViewFetcher.java"


# static fields
.field private static windowManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private instrumentation:Landroid/app/Instrumentation;

.field private sleeper:Lcom/robotium/solo/Sleeper;

.field private windowManagerString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 552
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const-string v0, "android.view.WindowManagerGlobal"

    goto :goto_0

    :cond_0
    const-string v0, "android.view.WindowManagerImpl"

    .line 557
    :goto_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/robotium/solo/ViewFetcher;->windowManager:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 562
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_1
    return-void

    :catch_1
    move-exception v0

    .line 560
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Landroid/app/Instrumentation;Lcom/robotium/solo/Sleeper;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/robotium/solo/ViewFetcher;->instrumentation:Landroid/app/Instrumentation;

    .line 41
    iput-object p2, p0, Lcom/robotium/solo/ViewFetcher;->sleeper:Lcom/robotium/solo/Sleeper;

    .line 42
    invoke-direct {p0}, Lcom/robotium/solo/ViewFetcher;->setWindowManagerString()V

    return-void
.end method

.method private addChildren(Ljava/util/ArrayList;Landroid/view/ViewGroup;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Z)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    .line 246
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 247
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz p3, :cond_0

    .line 249
    invoke-virtual {p0, v1}, Lcom/robotium/solo/ViewFetcher;->isViewSufficientlyShown(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-nez p3, :cond_1

    if-eqz v1, :cond_1

    .line 254
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_1
    :goto_1
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 258
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v1, p3}, Lcom/robotium/solo/ViewFetcher;->addChildren(Ljava/util/ArrayList;Landroid/view/ViewGroup;Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private areViewsIdentical(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 535
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 539
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 542
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/robotium/solo/ViewFetcher;->areViewsIdentical(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private final getNonDecorViews([Landroid/view/View;)[Landroid/view/View;
    .locals 5

    if-eqz p1, :cond_1

    .line 177
    array-length v0, p1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 182
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 183
    aget-object v3, p1, v1

    .line 184
    invoke-direct {p0, v3}, Lcom/robotium/solo/ViewFetcher;->isDecorView(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 185
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method private final getRecentContainer([Landroid/view/View;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 156
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 157
    aget-object v4, p1, v3

    if-eqz v4, :cond_0

    .line 158
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-lez v7, :cond_0

    .line 160
    invoke-virtual {v4}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v0

    move-wide v1, v0

    move-object v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isDecorView(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 203
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.android.internal.policy.impl.PhoneWindow$DecorView"

    .line 204
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.internal.policy.impl.MultiPhoneWindow$MultiPhoneDecorView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.internal.policy.PhoneWindow$DecorView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isViewType(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 490
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 494
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/robotium/solo/ViewFetcher;->isViewType(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private setWindowManagerString()V
    .locals 2

    .line 602
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const-string v0, "sDefaultWindowManager"

    .line 603
    iput-object v0, p0, Lcom/robotium/solo/ViewFetcher;->windowManagerString:Ljava/lang/String;

    goto :goto_0

    .line 605
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_1

    const-string v0, "sWindowManager"

    .line 606
    iput-object v0, p0, Lcom/robotium/solo/ViewFetcher;->windowManagerString:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "mWindowManager"

    .line 609
    iput-object v0, p0, Lcom/robotium/solo/ViewFetcher;->windowManagerString:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public getAllViews(Z)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/robotium/solo/ViewFetcher;->getWindowDecorViews()[Landroid/view/View;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-direct {p0, v0}, Lcom/robotium/solo/ViewFetcher;->getNonDecorViews([Landroid/view/View;)[Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 98
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 99
    aget-object v4, v2, v3

    .line 101
    :try_start_0
    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v5, p1}, Lcom/robotium/solo/ViewFetcher;->addChildren(Ljava/util/ArrayList;Landroid/view/ViewGroup;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-eqz v4, :cond_0

    .line 103
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 107
    array-length v2, v0

    if-lez v2, :cond_2

    .line 108
    invoke-virtual {p0, v0}, Lcom/robotium/solo/ViewFetcher;->getRecentDecorView([Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 110
    :try_start_1
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2, p1}, Lcom/robotium/solo/ViewFetcher;->addChildren(Ljava/util/ArrayList;Landroid/view/ViewGroup;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    :goto_2
    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v1
.end method

.method public getCurrentViews(Ljava/lang/Class;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 336
    invoke-virtual {p0, p1, p2, v0}, Lcom/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;ZLandroid/view/View;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentViews(Ljava/lang/Class;ZLandroid/view/View;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 350
    invoke-virtual {p0, p3, v1}, Lcom/robotium/solo/ViewFetcher;->getViews(Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object p3

    .line 351
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    goto :goto_0

    .line 355
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz p2, :cond_2

    .line 356
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    if-nez p2, :cond_0

    if-ne p1, v2, :cond_0

    .line 357
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final getFreshestView(Ljava/util/ArrayList;)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 384
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_1

    .line 386
    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v5, 0x0

    .line 388
    aget v5, v0, v5

    if-ltz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    if-gtz v5, :cond_2

    goto :goto_0

    .line 392
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-lez v7, :cond_3

    .line 393
    invoke-virtual {v4}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v1

    move-wide v2, v1

    :goto_1
    move-object v1, v4

    goto :goto_0

    .line 396
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-nez v7, :cond_1

    .line 397
    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public getIdenticalView(Landroid/view/View;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 513
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/robotium/solo/RobotiumUtils;->removeInvisibleViews(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 515
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 516
    invoke-direct {p0, v2, p1}, Lcom/robotium/solo/ViewFetcher;->areViewsIdentical(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    :cond_2
    return-object v0
.end method

.method public final getRecentDecorView([Landroid/view/View;)Landroid/view/View;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 130
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 134
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 135
    aget-object v3, p1, v1

    .line 136
    invoke-direct {p0, v3}, Lcom/robotium/solo/ViewFetcher;->isDecorView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_2
    invoke-direct {p0, v0}, Lcom/robotium/solo/ViewFetcher;->getRecentContainer([Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getRecyclerView(ZI)Landroid/view/View;
    .locals 4

    .line 439
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_0

    .line 441
    iget-object p1, p0, Lcom/robotium/solo/ViewFetcher;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {p1}, Lcom/robotium/solo/Sleeper;->sleep()V

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Class;

    .line 445
    const-class v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    invoke-virtual {p0, v2}, Lcom/robotium/solo/ViewFetcher;->getAllViews(Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/robotium/solo/RobotiumUtils;->filterViewsToSet([Ljava/lang/Class;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    .line 446
    invoke-static {p1}, Lcom/robotium/solo/RobotiumUtils;->removeInvisibleViews(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    .line 448
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 450
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "widget.RecyclerView"

    invoke-direct {p0, v2, v3}, Lcom/robotium/solo/ViewFetcher;->isViewType(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 451
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-le v2, p2, :cond_1

    .line 455
    check-cast v1, Landroid/view/ViewGroup;

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRecyclerView(II)Landroid/view/ViewGroup;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(II)",
            "Landroid/view/ViewGroup;"
        }
    .end annotation

    .line 418
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 420
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-gez p2, :cond_1

    const/4 p2, 0x1

    .line 421
    invoke-virtual {p0, p2, p1}, Lcom/robotium/solo/ViewFetcher;->getRecyclerView(ZI)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 423
    check-cast p2, Landroid/view/ViewGroup;

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getScrollListWindowHeight(Landroid/view/View;)F
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 307
    invoke-virtual {p0, p1}, Lcom/robotium/solo/ViewFetcher;->getScrollOrListParent(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/robotium/solo/ViewFetcher;->instrumentation:Landroid/app/Instrumentation;

    invoke-virtual {p1}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 314
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    .line 319
    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    int-to-float p1, v0

    :goto_0
    return p1
.end method

.method public getScrollOrListParent(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 73
    instance-of v0, p1, Landroid/widget/AbsListView;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 75
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/robotium/solo/ViewFetcher;->getScrollOrListParent(Landroid/view/View;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public getScrollableSupportPackageViews(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 471
    iget-object p1, p0, Lcom/robotium/solo/ViewFetcher;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {p1}, Lcom/robotium/solo/Sleeper;->sleep()V

    :cond_0
    const/4 p1, 0x1

    new-array v1, p1, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 475
    const-class v3, Landroid/view/ViewGroup;

    aput-object v3, v1, v2

    invoke-virtual {p0, p1}, Lcom/robotium/solo/ViewFetcher;->getAllViews(Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/robotium/solo/RobotiumUtils;->filterViewsToSet([Ljava/lang/Class;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    .line 476
    invoke-static {p1}, Lcom/robotium/solo/RobotiumUtils;->removeInvisibleViews(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    .line 478
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 480
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "widget.RecyclerView"

    invoke-direct {p0, v2, v3}, Lcom/robotium/solo/ViewFetcher;->isViewType(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "widget.NestedScrollView"

    invoke-direct {p0, v2, v3}, Lcom/robotium/solo/ViewFetcher;->isViewType(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 482
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getTopParent(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 57
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/robotium/solo/ViewFetcher;->getTopParent(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getViews(Landroid/view/View;Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    .line 223
    invoke-virtual {p0, p2}, Lcom/robotium/solo/ViewFetcher;->getAllViews(Z)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 227
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 230
    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1, p2}, Lcom/robotium/solo/ViewFetcher;->addChildren(Ljava/util/ArrayList;Landroid/view/ViewGroup;Z)V

    :cond_1
    return-object v0
.end method

.method public getWindowDecorViews()[Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    .line 579
    :try_start_0
    sget-object v1, Lcom/robotium/solo/ViewFetcher;->windowManager:Ljava/lang/Class;

    const-string v2, "mViews"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 580
    sget-object v2, Lcom/robotium/solo/ViewFetcher;->windowManager:Ljava/lang/Class;

    iget-object v3, p0, Lcom/robotium/solo/ViewFetcher;->windowManagerString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 581
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 582
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 583
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 585
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 586
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/View;

    goto :goto_0

    .line 588
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/View;

    check-cast v1, [Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    .line 592
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public final isViewSufficientlyShown(Landroid/view/View;)Z
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    .line 278
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 279
    invoke-virtual {p0, p1}, Lcom/robotium/solo/ViewFetcher;->getScrollOrListParent(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 280
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v5, 0x1

    if-nez v4, :cond_1

    aput v2, v0, v5

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 289
    :goto_0
    aget v4, v1, v5

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    add-float/2addr v4, v3

    invoke-virtual {p0, p1}, Lcom/robotium/solo/ViewFetcher;->getScrollListWindowHeight(Landroid/view/View;)F

    move-result p1

    cmpl-float p1, v4, p1

    if-lez p1, :cond_2

    return v2

    .line 292
    :cond_2
    aget p1, v1, v5

    int-to-float p1, p1

    add-float/2addr p1, v3

    aget v0, v0, v5

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    return v2

    :cond_3
    return v5
.end method
