.class Lcom/robotium/solo/WebElementCreator;
.super Ljava/lang/Object;
.source "WebElementCreator.java"


# instance fields
.field private isFinished:Z

.field private sleeper:Lcom/robotium/solo/Sleeper;

.field private webElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/robotium/solo/WebElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/robotium/solo/Sleeper;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/robotium/solo/WebElementCreator;->isFinished:Z

    .line 32
    iput-object p1, p0, Lcom/robotium/solo/WebElementCreator;->sleeper:Lcom/robotium/solo/Sleeper;

    .line 33
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/robotium/solo/WebElementCreator;->webElements:Ljava/util/List;

    return-void
.end method

.method private createWebElementAndSetLocation(Ljava/lang/String;Landroid/webkit/WebView;)Lcom/robotium/solo/WebElement;
    .locals 17

    const-string v0, ";,"

    move-object/from16 v1, p1

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    const/4 v1, 0x5

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 133
    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x6

    .line 134
    :try_start_1
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x7

    .line 135
    :try_start_2
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v5, 0x8

    .line 136
    :try_start_3
    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const/16 v6, 0x9

    .line 137
    :try_start_4
    aget-object v6, v0, v6

    const-string v9, "\\#\\$"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move v12, v1

    move v13, v3

    move v14, v4

    move v15, v5

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :catch_1
    const/4 v3, 0x0

    :catch_2
    const/4 v4, 0x0

    :catch_3
    const/4 v5, 0x0

    :catch_4
    move v12, v1

    move v13, v3

    move v14, v4

    move v15, v5

    move-object v6, v8

    :goto_0
    const/4 v1, 0x1

    if-eqz v6, :cond_1

    const/4 v3, 0x0

    .line 141
    :goto_1
    array-length v4, v6

    if-ge v3, v4, :cond_1

    .line 142
    aget-object v4, v6, v3

    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 143
    array-length v5, v4

    if-le v5, v1, :cond_0

    .line 144
    aget-object v5, v4, v2

    aget-object v4, v4, v1

    invoke-virtual {v7, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 146
    :cond_0
    aget-object v5, v4, v2

    aget-object v4, v4, v2

    invoke-virtual {v7, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 154
    :cond_1
    :try_start_5
    new-instance v16, Lcom/robotium/solo/WebElement;

    aget-object v2, v0, v2

    aget-object v3, v0, v1

    const/4 v1, 0x2

    aget-object v4, v0, v1

    const/4 v1, 0x3

    aget-object v5, v0, v1

    const/4 v1, 0x4

    aget-object v6, v0, v1

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v7}, Lcom/robotium/solo/WebElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-object/from16 v9, p0

    move-object/from16 v10, v16

    move-object/from16 v11, p2

    .line 155
    :try_start_6
    invoke-direct/range {v9 .. v15}, Lcom/robotium/solo/WebElementCreator;->setLocation(Lcom/robotium/solo/WebElement;Landroid/webkit/WebView;IIII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-object/from16 v8, v16

    :catch_6
    move-object/from16 v16, v8

    :goto_3
    return-object v16
.end method

.method private setLocation(Lcom/robotium/solo/WebElement;Landroid/webkit/WebView;IIII)V
    .locals 7

    .line 104
    invoke-virtual {p2}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 106
    invoke-virtual {p2, v2}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    const/4 p2, 0x0

    .line 108
    aget p2, v2, p2

    int-to-double v3, p2

    int-to-double p2, p3

    div-int/2addr p5, v1

    int-to-double v5, p5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    add-double/2addr p2, v5

    float-to-double v5, v0

    mul-double p2, p2, v5

    add-double/2addr v3, p2

    double-to-int p2, v3

    const/4 p3, 0x1

    .line 109
    aget p3, v2, p3

    int-to-double v2, p3

    int-to-double p3, p4

    div-int/2addr p6, v1

    int-to-double p5, p6

    invoke-static {p5, p6}, Ljava/lang/Math;->floor(D)D

    move-result-wide p5

    add-double/2addr p3, p5

    mul-double p3, p3, v5

    add-double/2addr v2, p3

    double-to-int p3, v2

    .line 111
    invoke-virtual {p1, p2}, Lcom/robotium/solo/WebElement;->setLocationX(I)V

    .line 112
    invoke-virtual {p1, p3}, Lcom/robotium/solo/WebElement;->setLocationY(I)V

    return-void
.end method

.method private waitForWebElementsToBeCreated()Z
    .locals 5

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    .line 170
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 172
    iget-boolean v2, p0, Lcom/robotium/solo/WebElementCreator;->isFinished:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/robotium/solo/WebElementCreator;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v2}, Lcom/robotium/solo/Sleeper;->sleepMini()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public createWebElementAndAddInList(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/robotium/solo/WebElementCreator;->createWebElementAndSetLocation(Ljava/lang/String;Landroid/webkit/WebView;)Lcom/robotium/solo/WebElement;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p2, p0, Lcom/robotium/solo/WebElementCreator;->webElements:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getWebElementsFromWebViews()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/robotium/solo/WebElement;",
            ">;"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lcom/robotium/solo/WebElementCreator;->waitForWebElementsToBeCreated()Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/robotium/solo/WebElementCreator;->webElements:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/robotium/solo/WebElementCreator;->isFinished:Z

    return v0
.end method

.method public prepareForStart()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcom/robotium/solo/WebElementCreator;->setFinished(Z)V

    .line 42
    iget-object v0, p0, Lcom/robotium/solo/WebElementCreator;->webElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setFinished(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/robotium/solo/WebElementCreator;->isFinished:Z

    return-void
.end method
