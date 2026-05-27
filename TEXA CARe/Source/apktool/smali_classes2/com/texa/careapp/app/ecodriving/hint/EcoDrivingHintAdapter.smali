.class public Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "EcoDrivingHintAdapter.java"


# instance fields
.field colors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mBindedViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/texa/careapp/app/ecodriving/hint/HintView;",
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
            "Lcom/texa/careapp/app/ecodriving/hint/HintView;",
            ">;"
        }
    .end annotation
.end field

.field tips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/HintModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/CareApplication$ApplicationComponent;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/HintModel;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;->mDiscardedViews:Ljava/util/List;

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;->mBindedViews:Landroid/util/SparseArray;

    .line 36
    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;)V

    .line 37
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    .line 38
    iput-object p2, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;->tips:Ljava/util/List;

    .line 39
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/texa/careapp/utils/EcoDrivingUtils;->getRandomHintColor(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;->colors:Ljava/util/List;

    return-void
.end method

.method private displayHint(Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/ecodriving/hint/HintView;
    .locals 7

    .line 68
    new-instance v0, Lcom/texa/careapp/app/ecodriving/hint/HintView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/texa/careapp/app/ecodriving/hint/HintView;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance p1, Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;->tips:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/texa/careapp/app/ecodriving/model/HintModel;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;->getCount()I

    move-result v5

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;->colors:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;-><init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Lcom/texa/careapp/app/ecodriving/model/HintModel;III)V

    .line 70
    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/ecodriving/hint/HintView;->setPresenter(Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;)V

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 77
    iget-object p3, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/texa/careapp/app/ecodriving/hint/HintView;

    if-eqz p3, :cond_0

    .line 79
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;->mDiscardedViews:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 81
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;->tips:Ljava/util/List;

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

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;->displayHint(Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/ecodriving/hint/HintView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 p2, 0x0

    .line 61
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
