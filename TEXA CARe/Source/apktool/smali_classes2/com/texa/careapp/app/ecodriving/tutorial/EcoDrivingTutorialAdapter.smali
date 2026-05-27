.class public Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "EcoDrivingTutorialAdapter.java"


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mBindedViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/texa/careapp/app/ecodriving/tutorial/TutorialView;",
            ">;"
        }
    .end annotation
.end field

.field private final mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mDiscardedViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/tutorial/TutorialView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/CareApplication$ApplicationComponent;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;->mDiscardedViews:Ljava/util/List;

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;->mBindedViews:Landroid/util/SparseArray;

    .line 33
    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;)V

    .line 34
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    .line 35
    iput-object p2, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;->items:Ljava/util/List;

    return-void
.end method

.method private displayPage(Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/ecodriving/tutorial/TutorialView;
    .locals 2

    .line 64
    new-instance v0, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialView;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance p1, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialPresenter;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;->items:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;

    invoke-direct {p1, p2}, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialPresenter;-><init>(Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;)V

    .line 66
    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialView;->setPresenter(Lcom/texa/careapp/app/ecodriving/tutorial/TutorialPresenter;)V

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 73
    iget-object p3, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialView;

    if-eqz p3, :cond_0

    .line 75
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;->mDiscardedViews:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 77
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;->displayPage(Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/ecodriving/tutorial/TutorialView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 p2, 0x0

    .line 57
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
