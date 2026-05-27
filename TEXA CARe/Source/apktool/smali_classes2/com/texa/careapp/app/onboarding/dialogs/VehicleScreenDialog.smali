.class public Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;
.super Lcom/texa/care/navigation/Screen;
.source "VehicleScreenDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;,
        Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleComparator;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VehicleScreenDialog"


# instance fields
.field private decoration:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/onboarding/IVehicleModel;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

.field private mAdapter:Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mModelsRecycleView:Landroidx/recyclerview/widget/RecyclerView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSearch:Landroid/widget/EditText;

.field protected mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private userVehicles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/CareApplication;",
            "Lcom/texa/careapp/app/onboarding/OnBoardingActivity;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->items:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->userVehicles:Ljava/util/List;

    .line 68
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;)V

    .line 69
    iput-object p3, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->userVehicles:Ljava/util/List;

    .line 70
    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;)Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->decoration:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->updateList()V

    return-void
.end method

.method private closeKeyboard(Landroid/view/View;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private getFilteredVehicle(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/onboarding/IVehicleModel;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->userVehicles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->userVehicles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/model/VehicleModel;

    .line 176
    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleModel;->getVehicleInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private getSearchText()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mSearch:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method private initSearch()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mSearch:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$2;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 203
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mSearch:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private setupUI(Landroid/view/View;)V
    .locals 3

    .line 140
    instance-of v0, p1, Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 147
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 148
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 149
    invoke-direct {p0, v1}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->setupUI(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateList()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 163
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->items:Ljava/util/List;

    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->getSearchText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->getFilteredVehicle(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->items:Ljava/util/List;

    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->getSearchText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/model/SelectionModel;->getSelections(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->items:Ljava/util/List;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->cleanVehicleItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->items:Ljava/util/List;

    .line 166
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mAdapter:Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;

    invoke-virtual {v0}, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;->notifyDataSetChanged()V

    .line 167
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 3

    .line 75
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;

    .line 76
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;->screenDialogVehicleSearch:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mSearch:Landroid/widget/EditText;

    .line 77
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;->screenDialogVehicleRecycler:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mModelsRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;->screenDialogVehicleProgress:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 79
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;->screenDialogVehicleCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;->screenDialogVehicleLay:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->setupUI(Landroid/view/View;)V

    .line 83
    new-instance p1, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->items:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mAdapter:Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;

    .line 84
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mModelsRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 85
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mModelsRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mAdapter:Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 86
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mModelsRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 87
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mModelsRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 89
    new-instance p1, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mAdapter:Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;

    invoke-direct {p1, v0}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;-><init>(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;)V

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->decoration:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;

    .line 90
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mModelsRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 92
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mAdapter:Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;

    new-instance v0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$1;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;)V

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 99
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mAdapter:Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;

    new-instance v0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;)V

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->initSearch()V

    .line 113
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 225
    sget-object v0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00b9

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 230
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG_FULL_WIDTH:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-onboarding-dialogs-VehicleScreenDialog(Landroid/view/View;)V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-onboarding-dialogs-VehicleScreenDialog(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    .line 102
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->items:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/texa/careapp/model/SelectionModel;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->items:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/SelectionModel;

    move-object v4, p1

    move-object v5, p2

    goto :goto_0

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->items:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/texa/careapp/model/VehicleModel;

    if-eqz p1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->items:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/VehicleModel;

    move-object v5, p1

    move-object v4, p2

    goto :goto_0

    :cond_1
    move-object v4, p2

    move-object v5, v4

    .line 106
    :goto_0
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance p2, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;

    iget-object p4, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->items:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/texa/careapp/app/onboarding/IVehicleModel;

    invoke-interface {p4}, Lcom/texa/careapp/app/onboarding/IVehicleModel;->getVehicleInfo()Ljava/lang/String;

    move-result-object v2

    iget-object p4, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->items:Ljava/util/List;

    .line 107
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/texa/careapp/app/onboarding/IVehicleModel;

    invoke-interface {p3}, Lcom/texa/careapp/app/onboarding/IVehicleModel;->getVehiclePlate()Ljava/lang/String;

    move-result-object v3

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/model/SelectionModel;Lcom/texa/careapp/model/VehicleModel;)V

    .line 106
    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method

.method public synthetic lambda$afterViewInjection$2$com-texa-careapp-app-onboarding-dialogs-VehicleScreenDialog()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mModelsRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 122
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->decoration:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;

    invoke-virtual {v0}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->invalidateHeaders()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$3$com-texa-careapp-app-onboarding-dialogs-VehicleScreenDialog()V
    .locals 2

    .line 118
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->updateList()V

    .line 120
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mModelsRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$afterViewInjection$4$com-texa-careapp-app-onboarding-dialogs-VehicleScreenDialog()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->userVehicles:Ljava/util/List;

    new-instance v1, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleComparator;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 117
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    new-instance v1, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;)V

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$initSearch$6$com-texa-careapp-app-onboarding-dialogs-VehicleScreenDialog(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->updateList()V

    .line 206
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->closeKeyboard(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$setupUI$5$com-texa-careapp-app-onboarding-dialogs-VehicleScreenDialog(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->closeKeyboard(Landroid/view/View;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onBackPressed()Z
    .locals 1

    .line 215
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onBackPressed()Z

    move-result v0

    return v0
.end method
