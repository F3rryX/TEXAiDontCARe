.class public Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;
.super Lcom/texa/care/navigation/Screen;
.source "ActivationPlusServiceScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivationPlusServiceScreen"


# instance fields
.field protected eventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private hwid:Ljava/lang/String;

.field private isSosPlusPurchasable:Z

.field private lockDisposable:Lio/reactivex/disposables/Disposable;

.field private mButtonToPurchaseSosLIGHT:Landroid/widget/TextView;

.field private mButtonToPurchaseSosPLUS:Landroid/widget/TextView;

.field private mLightInfo:Landroid/widget/TextView;

.field protected mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final serviceLight:Lcom/texa/careapp/model/ServiceDataModel;

.field private final servicePlus:Lcom/texa/careapp/model/ServiceDataModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->isSosPlusPurchasable:Z

    .line 78
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->servicePlus:Lcom/texa/careapp/model/ServiceDataModel;

    .line 79
    iput-object p2, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->serviceLight:Lcom/texa/careapp/model/ServiceDataModel;

    return-void
.end method

.method private buttonGoToLightClicked()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->serviceLight:Lcom/texa/careapp/model/ServiceDataModel;

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->serviceLight:Lcom/texa/careapp/model/ServiceDataModel;

    iget-object v2, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->servicePlus:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;-><init>(Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/model/ServiceDataModel;)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    :cond_0
    return-void
.end method

.method private buttonGoToPlusClicked()V
    .locals 3

    .line 174
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_SOS_PREMIUM_ACTIVATION_SOS_PREMIUM_ACTIVATION_BUTTON:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 175
    iget-boolean v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->isSosPlusPurchasable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleDataManager;->getAllVehicles()Ljava/util/List;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 178
    new-instance v0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;

    invoke-direct {v0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;-><init>()V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    goto :goto_0

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->finalStep()V

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f110c80

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private finalStep()V
    .locals 2

    .line 193
    new-instance v0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$1;

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->servicePlus:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-direct {v0, p0, v1}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$1;-><init>(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;Lcom/texa/careapp/model/ServiceDataModel;)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method private getServiceLightAvailable()Lcom/texa/careapp/model/ServiceDataModel;
    .locals 5

    .line 84
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/ServiceDataModel;

    .line 85
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "service_type=?"

    .line 86
    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->AVAILABLE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    aput-object v2, v1, v4

    const-string v2, "status=?"

    .line 87
    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ServiceDataModel;

    return-object v0
.end method

.method private initViews(Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/model/ServiceDataModel;Z)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 131
    iget-object p3, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->mButtonToPurchaseSosPLUS:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setActivated(Z)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object p3, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->mButtonToPurchaseSosPLUS:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setActivated(Z)V

    :goto_0
    if-eqz p2, :cond_1

    .line 138
    iget-object p2, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->mButtonToPurchaseSosLIGHT:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 139
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->mButtonToPurchaseSosLIGHT:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->mLightInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->mButtonToPurchaseSosLIGHT:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 143
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->mButtonToPurchaseSosLIGHT:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->mLightInfo:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$onResume$3(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error checking locking status"

    .line 125
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private setText()V
    .locals 0

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 7

    .line 93
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;)V

    .line 94
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;

    .line 95
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;->screenActivationPlusServicePurchase:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->mButtonToPurchaseSosPLUS:Landroid/widget/TextView;

    .line 96
    new-instance v1, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;->screenActivationPlusServicePurchaseLight:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->mButtonToPurchaseSosLIGHT:Landroid/widget/TextView;

    .line 98
    new-instance v1, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;->screenActivationPlusServicePurchaseLightInfo:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->mLightInfo:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    const-string v1, "VehicleObserver#getCurrentVehicle() cannot be null"

    .line 103
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->hwid:Ljava/lang/String;

    .line 105
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->setText()V

    .line 107
    new-instance v0, Landroid/text/SpannableString;

    .line 108
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110c5d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 109
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 110
    new-instance v1, Lcom/texa/careapp/utils/CareTypefaceSpan;

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x7f090000

    invoke-static {v5, v6}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/texa/careapp/utils/CareTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 111
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;->screenActivationPlusServiceBadge:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 165
    sget-object v0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00a4

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-ActivationPlusServiceScreen(Landroid/view/View;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->buttonGoToPlusClicked()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-activationSosServices-ActivationPlusServiceScreen(Landroid/view/View;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->buttonGoToLightClicked()V

    return-void
.end method

.method public synthetic lambda$onResume$2$com-texa-careapp-app-activationSosServices-ActivationPlusServiceScreen(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    invoke-virtual {p1}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->isAlreadyPending()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->isSosPlusPurchasable:Z

    .line 124
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->servicePlus:Lcom/texa/careapp/model/ServiceDataModel;

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->serviceLight:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-direct {p0, v0, v1, p1}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->initViews(Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/model/ServiceDataModel;Z)V

    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog$VehicleConfirmed;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 189
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->finalStep()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 150
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 151
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->lockDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 152
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 116
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 117
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->servicePlus:Lcom/texa/careapp/model/ServiceDataModel;

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->serviceLight:Lcom/texa/careapp/model/ServiceDataModel;

    iget-boolean v2, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->isSosPlusPurchasable:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->initViews(Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/model/ServiceDataModel;Z)V

    .line 119
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockEntity;

    sget-object v2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    .line 120
    invoke-virtual {v2}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->hwid:Ljava/lang/String;

    iget-object v4, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v4}, Lcom/texa/careapp/utils/Utils;->getUniqueDeviceId(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-interface {v0, v1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->checkLockStatus(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockEntity;)Lio/reactivex/Observable;

    move-result-object v0

    .line 121
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applySchedulers()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;)V

    sget-object v2, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$$ExternalSyntheticLambda3;

    .line 122
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->lockDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
