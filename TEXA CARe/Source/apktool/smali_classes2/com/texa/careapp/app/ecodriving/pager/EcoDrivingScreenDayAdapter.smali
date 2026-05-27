.class public Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "EcoDrivingScreenDayAdapter.java"


# instance fields
.field private items:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
            ">;>;"
        }
    .end annotation
.end field

.field final mBindedViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/texa/careapp/app/ecodriving/pager/WeekView;",
            ">;"
        }
    .end annotation
.end field

.field private final mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field final mDiscardedViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/pager/WeekView;",
            ">;"
        }
    .end annotation
.end field

.field private mObservers:Ljava/util/Observable;

.field private time:J


# direct methods
.method public constructor <init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Landroidx/collection/LongSparseArray;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/CareApplication$ApplicationComponent;",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
            ">;>;J)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;->mDiscardedViews:Ljava/util/List;

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;->mBindedViews:Landroid/util/SparseArray;

    .line 31
    new-instance v0, Lcom/texa/careapp/app/ecodriving/pager/WeekDayObserver;

    invoke-direct {v0}, Lcom/texa/careapp/app/ecodriving/pager/WeekDayObserver;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;->mObservers:Ljava/util/Observable;

    .line 41
    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;)V

    .line 42
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    .line 43
    iput-object p2, p0, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;->items:Landroidx/collection/LongSparseArray;

    .line 44
    iput-wide p3, p0, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;->time:J

    return-void
.end method

.method private displayWeek(Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/ecodriving/pager/WeekView;
    .locals 4

    .line 74
    new-instance v0, Lcom/texa/careapp/app/ecodriving/pager/WeekView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/texa/careapp/app/ecodriving/pager/WeekView;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance p1, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;->items:Landroidx/collection/LongSparseArray;

    .line 76
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, p2

    invoke-direct {p0, v2, v3}, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;->getSubList(Landroidx/collection/LongSparseArray;I)Landroidx/collection/LongSparseArray;

    move-result-object p2

    iget-wide v2, p0, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;->time:J

    invoke-direct {p1, v1, p2, v2, v3}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;-><init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Landroidx/collection/LongSparseArray;J)V

    .line 77
    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/ecodriving/pager/WeekView;->setPresenter(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;)V

    return-object v0
.end method

.method private getSubList(Landroidx/collection/LongSparseArray;I)Landroidx/collection/LongSparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
            ">;>;I)",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
            ">;>;"
        }
    .end annotation

    .line 83
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    mul-int/lit8 p2, p2, 0x7

    sub-int/2addr v1, p2

    add-int/lit8 p2, v1, 0x7

    :goto_0
    if-ge v1, p2, :cond_0

    .line 90
    invoke-virtual {p1, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private setTime(J)V
    .locals 0

    .line 107
    iput-wide p1, p0, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;->time:J

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 97
    iget-object p3, p0, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/texa/careapp/app/ecodriving/pager/WeekView;

    if-eqz p3, :cond_0

    .line 99
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;->mObservers:Ljava/util/Observable;

    invoke-virtual {v0, p3}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 100
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;->mDiscardedViews:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 102
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;->displayWeek(Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/ecodriving/pager/WeekView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;->mObservers:Ljava/util/Observable;

    invoke-virtual {v1, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 66
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 p2, 0x0

    .line 67
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_0
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public updateViews(J)V
    .locals 1

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;->setTime(J)V

    .line 112
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;->mObservers:Ljava/util/Observable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
