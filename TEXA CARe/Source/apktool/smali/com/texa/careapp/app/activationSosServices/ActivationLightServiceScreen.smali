.class public Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;
.super Lcom/texa/care/navigation/Screen;
.source "ActivationLightServiceScreen.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ActivationLightServiceScreen"


# instance fields
.field private isSosLightPurchasable:Z

.field private final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private purchaseButton:Landroid/widget/RelativeLayout;

.field private purchaseInfo:Landroid/widget/TextView;

.field private final serviceSosLight:Lcom/texa/careapp/model/ServiceDataModel;

.field private final serviceSosPlus:Lcom/texa/careapp/model/ServiceDataModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->isSosLightPurchasable:Z

    .line 62
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 65
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->serviceSosLight:Lcom/texa/careapp/model/ServiceDataModel;

    .line 66
    iput-object p2, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->serviceSosPlus:Lcom/texa/careapp/model/ServiceDataModel;

    return-void
.end method

.method private buttonGoToServiceLightTOS()V
    .locals 3

    .line 130
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_SOS_LIGHT_ACTIVATION_SOS_LIGHT_ACTIVATION_BUTTON:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 131
    iget-boolean v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->isSosLightPurchasable:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$2;

    iget-object v2, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->serviceSosLight:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-direct {v1, p0, v2}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$2;-><init>(Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;Lcom/texa/careapp/model/ServiceDataModel;)V

    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110c80

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private buttonGoToServicePlusTOS()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->serviceSosPlus:Lcom/texa/careapp/model/ServiceDataModel;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$1;

    iget-object v2, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->serviceSosPlus:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-direct {v1, p0, v2}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$1;-><init>(Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;Lcom/texa/careapp/model/ServiceDataModel;)V

    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    :cond_0
    return-void
.end method

.method private initViews(Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->purchaseButton:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 89
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->purchaseButton:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 90
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->purchaseInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->purchaseButton:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 93
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->purchaseButton:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 94
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->purchaseInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
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

    const-string v1, "error checking lock status"

    .line 106
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 7

    .line 71
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;)V

    .line 72
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;

    .line 73
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;->screenActivationLightPurchaseButton:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->purchaseButton:Landroid/widget/RelativeLayout;

    .line 74
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;->screenActivationLightPurchaseInfo:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->purchaseInfo:Landroid/widget/TextView;

    .line 75
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;->screenActivationLightServicePurchaseLight:Landroid/widget/TextView;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;->screenActivationLightServicePurchase:Landroid/widget/TextView;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110c5e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 79
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v2, 0x40133333    # 2.3f

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 80
    new-instance v1, Lcom/texa/careapp/utils/CareTypefaceSpan;

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x7f090000

    invoke-static {v5, v6}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/texa/careapp/utils/CareTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 81
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;->screenActivationLightServiceBadge:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "ActivationLightServiceScreen"

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00a3

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-ActivationLightServiceScreen(Landroid/view/View;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->buttonGoToServiceLightTOS()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-activationSosServices-ActivationLightServiceScreen(Landroid/view/View;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->buttonGoToServicePlusTOS()V

    return-void
.end method

.method public synthetic lambda$onResume$2$com-texa-careapp-app-activationSosServices-ActivationLightServiceScreen(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    invoke-virtual {p1}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->isAlreadyPending()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->isSosLightPurchasable:Z

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 150
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onDestroyView()V

    .line 151
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 100
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 101
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->serviceSosPlus:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->initViews(Lcom/texa/careapp/model/ServiceDataModel;)V

    .line 102
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    new-instance v2, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockEntity;

    sget-object v3, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    .line 103
    invoke-virtual {v3}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v4}, Lcom/texa/careapp/utils/Utils;->getUniqueDeviceId(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v2, v3, v5, v4}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-interface {v1, v2}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->checkLockStatus(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockEntity;)Lio/reactivex/Observable;

    move-result-object v1

    .line 104
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applySchedulers()Lio/reactivex/ObservableTransformer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;)V

    sget-object v3, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$$ExternalSyntheticLambda3;

    .line 105
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
