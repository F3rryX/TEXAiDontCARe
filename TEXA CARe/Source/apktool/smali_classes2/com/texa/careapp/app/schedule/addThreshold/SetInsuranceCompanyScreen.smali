.class public Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;
.super Lcom/texa/care/navigation/Screen;
.source "SetInsuranceCompanyScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SetInsuranceCompanyScreen"


# instance fields
.field private insuranceSub:Lio/reactivex/disposables/Disposable;

.field private final insuranceThreshold:Lcom/texa/careapp/model/ThresholdModel;

.field private mAdapter:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;

.field private mContentLayout:Landroid/widget/LinearLayout;

.field private mInsuranceCompanyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/schedule/addThreshold/Insurance;",
            ">;"
        }
    .end annotation
.end field

.field private mInsuranceList:Landroid/widget/ListView;

.field private mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mSearch:Landroid/widget/EditText;

.field protected mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceClient;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mTitle:Landroid/widget/TextView;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private final vehicleSelected:Lcom/texa/careapp/model/VehicleModel;


# direct methods
.method public static synthetic $r8$lambda$N6gXAa1_K6faWaaBRaQyzQTjxxU(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->refactorLayoutWhenKeyboardChange()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/UserModel;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 67
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mInsuranceCompanyList:Ljava/util/List;

    .line 68
    new-instance p3, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;)V

    iput-object p3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 73
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->insuranceThreshold:Lcom/texa/careapp/model/ThresholdModel;

    .line 74
    iput-object p2, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->vehicleSelected:Lcom/texa/careapp/model/VehicleModel;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "insuranceThreshold and vehicleModel cant be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->insuranceCompanyClicked(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;)Landroid/widget/EditText;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mSearch:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;)Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mAdapter:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;

    return-object p0
.end method

.method private closeKeyboard()V
    .locals 3

    .line 161
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 162
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mSearch:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {v1}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private displayInsurances()Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceClient;

    invoke-interface {v0}, Lcom/texa/careapp/networking/TexaCareApiServiceClient;->insurers()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 141
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;)V

    sget-object v2, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$$ExternalSyntheticLambda4;->INSTANCE:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$$ExternalSyntheticLambda4;

    .line 142
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method private insuranceCompanyClicked(I)V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mAdapter:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/app/schedule/addThreshold/Insurance;

    .line 218
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->insuranceThreshold:Lcom/texa/careapp/model/ThresholdModel;

    invoke-virtual {p1}, Lcom/texa/careapp/app/schedule/addThreshold/Insurance;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ThresholdModel;->setInsuranceId(Ljava/lang/Integer;)V

    .line 219
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;

    iget-object v2, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->insuranceThreshold:Lcom/texa/careapp/model/ThresholdModel;

    iget-object v3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->vehicleSelected:Lcom/texa/careapp/model/VehicleModel;

    invoke-direct {v1, v2, p1, v3}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;-><init>(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/app/schedule/addThreshold/Insurance;Lcom/texa/careapp/model/VehicleModel;)V

    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method static synthetic lambda$displayInsurances$3(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "impossibile comunicare con il server"

    .line 146
    invoke-static {v0, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private onFocusChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 202
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mSearch:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method private openKeyboard()V
    .locals 4

    .line 167
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 168
    new-instance v1, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$2;

    invoke-direct {v1, p0, v0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$2;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;Landroid/os/Handler;)V

    const-wide/16 v2, 0x190

    .line 176
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private refactorLayoutWhenKeyboardChange()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mContentLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 117
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 118
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    sub-int v0, v1, v2

    .line 119
    div-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "keyboard UP"

    .line 121
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "keyboard DOWN"

    .line 125
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setSearchWatcher()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mSearch:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$3;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;)V

    .line 84
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenSetInsuranceCompanyBinding;

    .line 85
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSetInsuranceCompanyBinding;->insuranceList:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mInsuranceList:Landroid/widget/ListView;

    .line 86
    new-instance v1, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$1;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 98
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSetInsuranceCompanyBinding;->thresholdTitol:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mTitle:Landroid/widget/TextView;

    .line 99
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSetInsuranceCompanyBinding;->searchInsuranceCompany:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mSearch:Landroid/widget/EditText;

    .line 100
    new-instance v1, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 102
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSetInsuranceCompanyBinding;->titleLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 103
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSetInsuranceCompanyBinding;->setInsuranceScreenContentLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mContentLayout:Landroid/widget/LinearLayout;

    .line 104
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenSetInsuranceCompanyBinding;->otherCompanyButton:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance p1, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;

    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mInsuranceCompanyList:Ljava/util/List;

    invoke-direct {p1, p0, v0, v1}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mAdapter:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;

    .line 108
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mTitle:Landroid/widget/TextView;

    sget-object v0, Lcom/texa/careapp/model/ThresholdModel;->TYPE_DESCRIPTION:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->insuranceThreshold:Lcom/texa/careapp/model/ThresholdModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 109
    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->setSearchWatcher()V

    .line 110
    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->displayInsurances()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->insuranceSub:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 213
    sget-object v0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00dd

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-schedule-addThreshold-SetInsuranceCompanyScreen(Landroid/view/View;Z)V
    .locals 0

    .line 100
    invoke-direct {p0, p2}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->onFocusChanged(Z)V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-schedule-addThreshold-SetInsuranceCompanyScreen(Landroid/view/View;)V
    .locals 5

    .line 104
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->insuranceThreshold:Lcom/texa/careapp/model/ThresholdModel;

    new-instance v2, Lcom/texa/careapp/app/schedule/addThreshold/Insurance;

    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f110b33

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Lcom/texa/careapp/app/schedule/addThreshold/Insurance;-><init>(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->vehicleSelected:Lcom/texa/careapp/model/VehicleModel;

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;-><init>(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/app/schedule/addThreshold/Insurance;Lcom/texa/careapp/model/VehicleModel;)V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method public synthetic lambda$displayInsurances$2$com-texa-careapp-app-schedule-addThreshold-SetInsuranceCompanyScreen(Lcom/texa/careapp/networking/response/InsuranceListResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/InsuranceListResponse;->getList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mInsuranceCompanyList:Ljava/util/List;

    .line 144
    new-instance p1, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;

    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mInsuranceCompanyList:Ljava/util/List;

    invoke-direct {p1, p0, v0, v1}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mAdapter:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;

    .line 145
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mInsuranceList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 151
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 153
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mContentLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->closeKeyboard()V

    .line 157
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->insuranceSub:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 133
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 134
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mContentLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->openKeyboard()V

    return-void
.end method
