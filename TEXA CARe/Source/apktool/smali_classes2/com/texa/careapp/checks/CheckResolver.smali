.class public Lcom/texa/careapp/checks/CheckResolver;
.super Ljava/lang/Object;
.source "CheckResolver.java"


# instance fields
.field private checkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/checks/Check;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$kIhHlcLssHFvmld8CiehF_pQHoQ(Lcom/texa/careapp/checks/CheckResolver;[Ljava/lang/Object;)Lcom/texa/careapp/checks/Check$Result;
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/checks/CheckResolver;->checksResult([Ljava/lang/Object;)Lcom/texa/careapp/checks/Check$Result;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/checks/CheckResolver;->checkList:Ljava/util/List;

    return-void
.end method

.method private checksResult([Ljava/lang/Object;)Lcom/texa/careapp/checks/Check$Result;
    .locals 5

    .line 57
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    .line 58
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 59
    check-cast v3, Lcom/texa/careapp/checks/Check$Result;

    .line 60
    sget-object v4, Lcom/texa/careapp/checks/Check$Result;->BLOCKING:Lcom/texa/careapp/checks/Check$Result;

    if-ne v3, v4, :cond_0

    .line 61
    sget-object p1, Lcom/texa/careapp/checks/Check$Result;->BLOCKING:Lcom/texa/careapp/checks/Check$Result;

    return-object p1

    .line 63
    :cond_0
    sget-object v4, Lcom/texa/careapp/checks/Check$Result;->WARNING:Lcom/texa/careapp/checks/Check$Result;

    if-ne v3, v4, :cond_1

    .line 64
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->WARNING:Lcom/texa/careapp/checks/Check$Result;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public addCheck(Lcom/texa/careapp/checks/Check;)Lcom/texa/careapp/checks/CheckResolver;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/texa/careapp/checks/CheckResolver;->checkList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public checkStatus()Lcom/texa/careapp/checks/Check$Result;
    .locals 5

    .line 42
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    .line 43
    iget-object v1, p0, Lcom/texa/careapp/checks/CheckResolver;->checkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/checks/Check;

    .line 44
    invoke-interface {v2}, Lcom/texa/careapp/checks/Check;->checkCurrentStatus()Lcom/texa/careapp/checks/Check$Result;

    move-result-object v2

    .line 45
    sget-object v3, Lcom/texa/careapp/checks/Check$Result;->BLOCKING:Lcom/texa/careapp/checks/Check$Result;

    if-ne v2, v3, :cond_1

    .line 46
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->BLOCKING:Lcom/texa/careapp/checks/Check$Result;

    return-object v0

    .line 48
    :cond_1
    invoke-virtual {v2}, Lcom/texa/careapp/checks/Check$Result;->ordinal()I

    move-result v3

    invoke-virtual {v0}, Lcom/texa/careapp/checks/Check$Result;->ordinal()I

    move-result v4

    if-le v3, v4, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public observeChecks()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/checks/Check$Result;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iget-object v1, p0, Lcom/texa/careapp/checks/CheckResolver;->checkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/checks/Check;

    .line 29
    invoke-interface {v2}, Lcom/texa/careapp/checks/Check;->check()Lio/reactivex/Observable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_0
    new-instance v1, Lcom/texa/careapp/checks/CheckResolver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/checks/CheckResolver$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/checks/CheckResolver;)V

    invoke-static {v0, v1}, Lio/reactivex/Observable;->combineLatest(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public resolveChecks(Lcom/texa/careapp/checks/Check$Result;)V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/texa/careapp/checks/CheckResolver;->checkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/checks/Check;

    .line 36
    invoke-interface {v1}, Lcom/texa/careapp/checks/Check;->checkCurrentStatus()Lcom/texa/careapp/checks/Check$Result;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 37
    invoke-interface {v1}, Lcom/texa/careapp/checks/Check;->resolve()V

    goto :goto_0

    :cond_1
    return-void
.end method
