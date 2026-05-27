.class Lcom/robotium/solo/Searcher;
.super Ljava/lang/Object;
.source "Searcher.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final TIMEOUT:I

.field private numberOfUniqueViews:I

.field private final scroller:Lcom/robotium/solo/Scroller;

.field private final sleeper:Lcom/robotium/solo/Sleeper;

.field uniqueTextViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final viewFetcher:Lcom/robotium/solo/ViewFetcher;

.field webElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/robotium/solo/WebElement;",
            ">;"
        }
    .end annotation
.end field

.field private final webUtils:Lcom/robotium/solo/WebUtils;


# direct methods
.method public constructor <init>(Lcom/robotium/solo/ViewFetcher;Lcom/robotium/solo/WebUtils;Lcom/robotium/solo/Scroller;Lcom/robotium/solo/Sleeper;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Robotium"

    .line 29
    iput-object v0, p0, Lcom/robotium/solo/Searcher;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0x1388

    .line 33
    iput v0, p0, Lcom/robotium/solo/Searcher;->TIMEOUT:I

    .line 46
    iput-object p1, p0, Lcom/robotium/solo/Searcher;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    .line 47
    iput-object p2, p0, Lcom/robotium/solo/Searcher;->webUtils:Lcom/robotium/solo/WebUtils;

    .line 48
    iput-object p3, p0, Lcom/robotium/solo/Searcher;->scroller:Lcom/robotium/solo/Scroller;

    .line 49
    iput-object p4, p0, Lcom/robotium/solo/Searcher;->sleeper:Lcom/robotium/solo/Sleeper;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/robotium/solo/Searcher;->webElements:Ljava/util/List;

    .line 51
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/robotium/solo/Searcher;->uniqueTextViews:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/robotium/solo/Searcher;)Lcom/robotium/solo/Sleeper;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/robotium/solo/Searcher;->sleeper:Lcom/robotium/solo/Sleeper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/robotium/solo/Searcher;)Lcom/robotium/solo/ViewFetcher;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/robotium/solo/Searcher;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    return-object p0
.end method

.method static synthetic access$200(Lcom/robotium/solo/Searcher;)Lcom/robotium/solo/WebUtils;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/robotium/solo/Searcher;->webUtils:Lcom/robotium/solo/WebUtils;

    return-object p0
.end method

.method private addViewsToList(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/robotium/solo/WebElement;",
            ">;",
            "Ljava/util/List<",
            "Lcom/robotium/solo/WebElement;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    .line 255
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/robotium/solo/WebElement;

    .line 257
    invoke-virtual {v2, v0}, Lcom/robotium/solo/WebElement;->getLocationOnScreen([I)V

    .line 259
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/robotium/solo/WebElement;

    .line 260
    invoke-virtual {v6, v1}, Lcom/robotium/solo/WebElement;->getLocationOnScreen([I)V

    .line 262
    invoke-virtual {v2}, Lcom/robotium/solo/WebElement;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/robotium/solo/WebElement;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    aget v6, v0, v4

    aget v8, v1, v4

    if-ne v6, v8, :cond_1

    aget v6, v0, v7

    aget v8, v1, v7

    if-ne v6, v8, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    if-nez v5, :cond_0

    .line 268
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getViewFromList(Ljava/util/List;I)Lcom/robotium/solo/WebElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/robotium/solo/WebElement;",
            ">;I)",
            "Lcom/robotium/solo/WebElement;"
        }
    .end annotation

    .line 286
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 289
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/robotium/solo/WebElement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 293
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-object p2
.end method


# virtual methods
.method public getNumberOfUniqueViews()I
    .locals 1

    .line 321
    iget v0, p0, Lcom/robotium/solo/Searcher;->numberOfUniqueViews:I

    return v0
.end method

.method public getNumberOfUniqueViews(Ljava/util/Set;Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 307
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 308
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iput p1, p0, Lcom/robotium/solo/Searcher;->numberOfUniqueViews:I

    return p1
.end method

.method public logMatchesFound(Ljava/lang/String;)V
    .locals 5

    .line 331
    iget-object v0, p0, Lcom/robotium/solo/Searcher;->uniqueTextViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const-string v1, "\'"

    const-string v2, " matches of \'"

    const-string v3, " There are only "

    const-string v4, "Robotium"

    if-lez v0, :cond_0

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/robotium/solo/Searcher;->uniqueTextViews:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Searcher;->webElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/robotium/solo/Searcher;->webElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/robotium/solo/Searcher;->uniqueTextViews:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 338
    iget-object p1, p0, Lcom/robotium/solo/Searcher;->webElements:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public searchFor(Ljava/lang/Class;Ljava/lang/String;IJZZ)Landroid/widget/TextView;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/TextView;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "IJZZ)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, p3

    .line 107
    :goto_0
    new-instance v2, Lcom/robotium/solo/Searcher$1;

    invoke-direct {v2, p0, p1, p7}, Lcom/robotium/solo/Searcher$1;-><init>(Lcom/robotium/solo/Searcher;Ljava/lang/Class;Z)V

    move-object v1, p0

    move-object v3, p2

    move-wide v5, p4

    move v7, p6

    .line 126
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/robotium/solo/Searcher;->searchFor(Ljava/util/concurrent/Callable;Ljava/lang/String;IJZ)Landroid/widget/TextView;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 128
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public searchFor(Ljava/util/concurrent/Callable;Ljava/lang/String;IJZ)Landroid/widget/TextView;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/TextView;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/Collection<",
            "TT;>;>;",
            "Ljava/lang/String;",
            "IJZ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p4

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, p4, v2

    if-lez v4, :cond_1

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 200
    invoke-virtual {p0, p2}, Lcom/robotium/solo/Searcher;->logMatchesFound(Ljava/lang/String;)V

    return-object v3

    .line 204
    :cond_2
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 206
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 207
    iget-object v5, p0, Lcom/robotium/solo/Searcher;->uniqueTextViews:Ljava/util/Set;

    invoke-static {p2, v4, v5}, Lcom/robotium/solo/RobotiumUtils;->getNumberOfMatches(Ljava/lang/String;Landroid/widget/TextView;Ljava/util/Set;)I

    move-result v5

    if-ne v5, p3, :cond_3

    .line 208
    iget-object p1, p0, Lcom/robotium/solo/Searcher;->uniqueTextViews:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-object v4

    :cond_4
    if-eqz p6, :cond_5

    .line 212
    iget-object v2, p0, Lcom/robotium/solo/Searcher;->scroller:Lcom/robotium/solo/Scroller;

    invoke-virtual {v2}, Lcom/robotium/solo/Scroller;->scrollDown()Z

    move-result v2

    if-nez v2, :cond_5

    .line 213
    invoke-virtual {p0, p2}, Lcom/robotium/solo/Searcher;->logMatchesFound(Ljava/lang/String;)V

    return-object v3

    :cond_5
    if-nez p6, :cond_0

    .line 217
    invoke-virtual {p0, p2}, Lcom/robotium/solo/Searcher;->logMatchesFound(Ljava/lang/String;)V

    return-object v3
.end method

.method public searchFor(Landroid/view/View;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/robotium/solo/Searcher;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/robotium/solo/ViewFetcher;->getAllViews(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 167
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public searchFor(Ljava/util/Set;Ljava/lang/Class;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;I)Z"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/robotium/solo/Searcher;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p2}, Lcom/robotium/solo/RobotiumUtils;->removeInvisibleViews(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p2

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/robotium/solo/Searcher;->getNumberOfUniqueViews(Ljava/util/Set;Ljava/util/ArrayList;)I

    move-result p1

    if-lez p1, :cond_0

    if-ge p3, p1, :cond_0

    return v1

    :cond_0
    if-lez p1, :cond_1

    if-nez p3, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public searchForWebElement(Lcom/robotium/solo/By;I)Lcom/robotium/solo/WebElement;
    .locals 2

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    const/4 p2, 0x1

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/robotium/solo/Searcher;->webUtils:Lcom/robotium/solo/WebUtils;

    invoke-virtual {v1, p1, v0}, Lcom/robotium/solo/WebUtils;->getWebElements(Lcom/robotium/solo/By;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 238
    iget-object v0, p0, Lcom/robotium/solo/Searcher;->webElements:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/robotium/solo/Searcher;->addViewsToList(Ljava/util/List;Ljava/util/List;)V

    .line 240
    iget-object p1, p0, Lcom/robotium/solo/Searcher;->webElements:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/robotium/solo/Searcher;->getViewFromList(Ljava/util/List;I)Lcom/robotium/solo/WebElement;

    move-result-object p1

    return-object p1
.end method

.method public searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)Z"
        }
    .end annotation

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    .line 75
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    move-object v2, p0

    .line 76
    iget-object v3, v2, Lcom/robotium/solo/Searcher;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v3}, Lcom/robotium/solo/Sleeper;->sleep()V

    const-wide/16 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move/from16 v8, p3

    move/from16 v11, p4

    move/from16 v12, p5

    .line 77
    invoke-virtual/range {v5 .. v12}, Lcom/robotium/solo/Searcher;->searchFor(Ljava/lang/Class;Ljava/lang/String;IJZZ)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    move-object v2, p0

    const/4 v0, 0x0

    return v0
.end method
