.class public Lcom/texa/careapp/app/permission/PermissionAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "PermissionAdapter.java"


# instance fields
.field private final mActivity:Lcom/texa/careapp/app/permission/PermissionActivity;

.field private final mBindedViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
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
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/permission/PermissionModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/permission/PermissionActivity;Lcom/texa/careapp/CareApplication$ApplicationComponent;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/app/permission/PermissionActivity;",
            "Lcom/texa/careapp/CareApplication$ApplicationComponent;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/permission/PermissionModel;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/permission/PermissionAdapter;->mDiscardedViews:Ljava/util/List;

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/permission/PermissionAdapter;->mBindedViews:Landroid/util/SparseArray;

    .line 37
    invoke-interface {p2, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/permission/PermissionAdapter;)V

    .line 38
    iput-object p2, p0, Lcom/texa/careapp/app/permission/PermissionAdapter;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    .line 39
    iput-object p3, p0, Lcom/texa/careapp/app/permission/PermissionAdapter;->mPermissionModels:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lcom/texa/careapp/app/permission/PermissionAdapter;->mActivity:Lcom/texa/careapp/app/permission/PermissionActivity;

    return-void
.end method

.method private displayBackground(Lcom/texa/careapp/app/permission/PermissionActivity;Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/permission/PermissionBackgroundLocationView;
    .locals 3

    .line 85
    new-instance v0, Lcom/texa/careapp/app/permission/PermissionBackgroundLocationView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/texa/careapp/app/permission/PermissionBackgroundLocationView;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance p2, Lcom/texa/careapp/app/permission/PermissionPresenter;

    iget-object v1, p0, Lcom/texa/careapp/app/permission/PermissionAdapter;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    iget-object v2, p0, Lcom/texa/careapp/app/permission/PermissionAdapter;->mPermissionModels:Ljava/util/List;

    .line 87
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/texa/careapp/app/permission/PermissionModel;

    invoke-direct {p2, p1, v1, p3}, Lcom/texa/careapp/app/permission/PermissionPresenter;-><init>(Lcom/texa/careapp/app/permission/PermissionActivity;Lcom/texa/careapp/CareApplication$ApplicationComponent;Lcom/texa/careapp/app/permission/PermissionModel;)V

    .line 88
    invoke-virtual {v0, p2}, Lcom/texa/careapp/app/permission/PermissionBackgroundLocationView;->setPresenter(Lcom/texa/careapp/app/permission/PermissionPresenter;)V

    return-object v0
.end method

.method private displayHint(Lcom/texa/careapp/app/permission/PermissionActivity;Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/permission/PermissionView;
    .locals 3

    .line 76
    new-instance v0, Lcom/texa/careapp/app/permission/PermissionView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/texa/careapp/app/permission/PermissionView;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance p2, Lcom/texa/careapp/app/permission/PermissionPresenter;

    iget-object v1, p0, Lcom/texa/careapp/app/permission/PermissionAdapter;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    iget-object v2, p0, Lcom/texa/careapp/app/permission/PermissionAdapter;->mPermissionModels:Ljava/util/List;

    .line 78
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/texa/careapp/app/permission/PermissionModel;

    invoke-direct {p2, p1, v1, p3}, Lcom/texa/careapp/app/permission/PermissionPresenter;-><init>(Lcom/texa/careapp/app/permission/PermissionActivity;Lcom/texa/careapp/CareApplication$ApplicationComponent;Lcom/texa/careapp/app/permission/PermissionModel;)V

    .line 79
    invoke-virtual {v0, p2}, Lcom/texa/careapp/app/permission/PermissionView;->setPresenter(Lcom/texa/careapp/app/permission/PermissionPresenter;)V

    return-object v0
.end method

.method private displayOverlayPermission(Lcom/texa/careapp/app/permission/PermissionActivity;Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/permission/PermissionDrawOverlayView;
    .locals 3

    .line 94
    new-instance v0, Lcom/texa/careapp/app/permission/PermissionDrawOverlayView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/texa/careapp/app/permission/PermissionDrawOverlayView;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance p2, Lcom/texa/careapp/app/permission/PermissionPresenter;

    iget-object v1, p0, Lcom/texa/careapp/app/permission/PermissionAdapter;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    iget-object v2, p0, Lcom/texa/careapp/app/permission/PermissionAdapter;->mPermissionModels:Ljava/util/List;

    .line 96
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/texa/careapp/app/permission/PermissionModel;

    invoke-direct {p2, p1, v1, p3}, Lcom/texa/careapp/app/permission/PermissionPresenter;-><init>(Lcom/texa/careapp/app/permission/PermissionActivity;Lcom/texa/careapp/CareApplication$ApplicationComponent;Lcom/texa/careapp/app/permission/PermissionModel;)V

    .line 97
    invoke-virtual {v0, p2}, Lcom/texa/careapp/app/permission/PermissionDrawOverlayView;->setPresenter(Lcom/texa/careapp/app/permission/PermissionPresenter;)V

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 104
    iget-object p3, p0, Lcom/texa/careapp/app/permission/PermissionAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-eqz p3, :cond_0

    .line 106
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionAdapter;->mDiscardedViews:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 108
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionAdapter;->mPermissionModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getIsMandatory(I)Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionAdapter;->mPermissionModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/app/permission/PermissionModel;

    invoke-virtual {p1}, Lcom/texa/careapp/app/permission/PermissionModel;->isMandatory()Z

    move-result p1

    return p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method getSkipTextRes(I)I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionAdapter;->mPermissionModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/app/permission/PermissionModel;

    invoke-virtual {p1}, Lcom/texa/careapp/app/permission/PermissionModel;->getSkipBtnRes()I

    move-result p1

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionAdapter;->mPermissionModels:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/permission/PermissionModel;

    .line 61
    invoke-virtual {v0}, Lcom/texa/careapp/app/permission/PermissionModel;->getPermissionType()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/texa/careapp/app/permission/PermissionModel;->getPermissionType()[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/texa/careapp/utils/permission/CorePermission;->USE_ACCESS_BACKGROUND_LOCATION:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionAdapter;->mActivity:Lcom/texa/careapp/app/permission/PermissionActivity;

    invoke-direct {p0, v0, p1, p2}, Lcom/texa/careapp/app/permission/PermissionAdapter;->displayBackground(Lcom/texa/careapp/app/permission/PermissionActivity;Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/permission/PermissionBackgroundLocationView;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/app/permission/PermissionModel;->getPermissionType()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/texa/careapp/app/permission/PermissionModel;->getPermissionType()[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/permission/CorePermission;->DRAW_OVERLAY:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionAdapter;->mActivity:Lcom/texa/careapp/app/permission/PermissionActivity;

    invoke-direct {p0, v0, p1, p2}, Lcom/texa/careapp/app/permission/PermissionAdapter;->displayOverlayPermission(Lcom/texa/careapp/app/permission/PermissionActivity;Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/permission/PermissionDrawOverlayView;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionAdapter;->mActivity:Lcom/texa/careapp/app/permission/PermissionActivity;

    invoke-direct {p0, v0, p1, p2}, Lcom/texa/careapp/app/permission/PermissionAdapter;->displayHint(Lcom/texa/careapp/app/permission/PermissionActivity;Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/permission/PermissionView;

    move-result-object v0

    .line 68
    :goto_0
    iget-object v1, p0, Lcom/texa/careapp/app/permission/PermissionAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 p2, 0x0

    .line 69
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

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
