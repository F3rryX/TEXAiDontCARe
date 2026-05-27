.class public Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;
.super Lcom/texa/care/navigation/Screen;
.source "ActivationTrialServiceScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivationTrialServiceScreen"


# instance fields
.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final service:Lcom/texa/careapp/model/ServiceDataModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;->service:Lcom/texa/careapp/model/ServiceDataModel;

    return-void
.end method

.method private buttonGoToTosClicked()V
    .locals 3

    .line 90
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_SOS_TRIAL_ACTIVATION_TAPPED_SOS_TRIAL_ACTIVATION_BUTTON:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleDataManager;->getAllVehicles()Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 93
    new-instance v0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;

    invoke-direct {v0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;-><init>()V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;->finalStep()V

    :goto_0
    return-void
.end method

.method private finalStep()V
    .locals 2

    .line 105
    new-instance v0, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen$1;

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;->service:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-direct {v0, p0, v1}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen$1;-><init>(Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;Lcom/texa/careapp/model/ServiceDataModel;)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 5

    .line 56
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    .line 57
    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;)V

    .line 58
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;

    .line 59
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;->screenActivationTrialServiceBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110c5c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 62
    new-instance v2, Lcom/texa/careapp/utils/CareTypefaceSpan;

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f090000

    invoke-static {v3, v4}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/texa/careapp/utils/CareTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    const-string v3, "4"

    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x21

    .line 62
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 64
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;->screenActivationTrialServiceBadge:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 86
    sget-object v0, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00aa

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-ActivationTrialServiceScreen(Landroid/view/View;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;->buttonGoToTosClicked()V

    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog$VehicleConfirmed;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 101
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;->finalStep()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 75
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 76
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 70
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method
