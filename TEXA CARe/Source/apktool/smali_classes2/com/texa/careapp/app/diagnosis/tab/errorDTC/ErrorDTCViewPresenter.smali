.class public Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;
.super Ljava/lang/Object;
.source "ErrorDTCViewPresenter.java"

# interfaces
.implements Lcom/texa/careapp/app/diagnosis/tab/errorDTC/IDTCViewPresenter;


# static fields
.field private static final TAG:Ljava/lang/String; = "ErrorDTCViewPresenter"


# instance fields
.field private dtcSub:Lio/reactivex/disposables/Disposable;

.field private mAdapter:Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter;

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDongleModel:Lcom/texa/careapp/model/DongleModel;

.field private mEmptyView:Landroid/view/View;

.field private mImageEngineOk:Landroid/widget/ImageView;

.field protected mLampsManager:Lcom/texa/careapp/lamps/LampsManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mListView:Landroid/view/View;

.field private mPagerAdapter:Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;)V

    .line 60
    iput-object p2, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mPagerAdapter:Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;

    .line 61
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    return-void
.end method

.method private initLampData()V
    .locals 6

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 89
    sget-object v2, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->STANDARD:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getActiveLamps()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/texa/careapp/utils/Utils;->getLampsListFilteredForDiagnosisType(Lcom/texa/careapp/app/diagnosis/DiagnosisType;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 90
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    new-instance v3, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    invoke-direct {v3}, Lcom/texa/careapp/app/errorsDTC/LampStatus;-><init>()V

    .line 92
    iget-object v4, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f110925

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->setHeaderTitle(Ljava/lang/String;)V

    .line 93
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    sget-object v2, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getActiveLamps()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/texa/careapp/utils/Utils;->getLampsListFilteredForDiagnosisType(Lcom/texa/careapp/app/diagnosis/DiagnosisType;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 98
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    new-instance v2, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    invoke-direct {v2}, Lcom/texa/careapp/app/errorsDTC/LampStatus;-><init>()V

    .line 100
    iget-object v3, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mContext:Landroid/content/Context;

    const v4, 0x7f110926

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->setHeaderTitle(Ljava/lang/String;)V

    .line 101
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 106
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    :goto_0
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->updateAdapter(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$observeActiveLamps$1(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "observeActiveLamps#onError() Exception"

    .line 118
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a01dd

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0a02b7

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a023a

    .line 68
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mListView:Landroid/view/View;

    const v1, 0x7f0a0239

    .line 69
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mEmptyView:Landroid/view/View;

    const v1, 0x7f0a0222

    .line 70
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mImageEngineOk:Landroid/widget/ImageView;

    .line 72
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mListView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mEmptyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    new-instance p1, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter;

    iget-object v2, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mAdapter:Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter;

    .line 76
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 77
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mAdapter:Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 79
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->initLampData()V

    .line 80
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->observeActiveLamps()V

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "afterViewInjection()"

    .line 82
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public destroySub()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->dtcSub:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 4

    .line 143
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-object v0
.end method

.method public synthetic lambda$observeActiveLamps$0$com-texa-careapp-app-diagnosis-tab-errorDTC-ErrorDTCViewPresenter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "observeActiveLamps#onNext()"

    .line 116
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->initLampData()V

    return-void
.end method

.method public observeActiveLamps()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mLampsManager:Lcom/texa/careapp/lamps/LampsManager;

    invoke-virtual {v0}, Lcom/texa/careapp/lamps/LampsManager;->observeActiveLamps()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;)V

    sget-object v2, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter$$ExternalSyntheticLambda1;

    .line 115
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->dtcSub:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public updateAdapter(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;)V"
        }
    .end annotation

    .line 128
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 129
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mListView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mEmptyView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mImageEngineOk:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800b8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mImageEngineOk:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f06007c

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mListView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mAdapter:Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter;->update(Ljava/util/List;)V

    :goto_0
    return-void
.end method
