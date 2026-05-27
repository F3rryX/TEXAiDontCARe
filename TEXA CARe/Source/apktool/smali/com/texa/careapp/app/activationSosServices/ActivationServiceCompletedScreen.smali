.class public Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;
.super Lcom/texa/care/navigation/Screen;
.source "ActivationServiceCompletedScreen.java"


# static fields
.field static final PERMISSIONS_REQUEST_WRITE_CONTACTS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ActivationServiceCompletedScreen"


# instance fields
.field protected mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCarText:Landroidx/appcompat/widget/AppCompatTextView;

.field private mDayFormat:Ljava/text/DateFormat;

.field mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mMonthFormat:Ljava/text/DateFormat;

.field private mNameText:Landroid/widget/TextView;

.field private mPlateText:Landroidx/appcompat/widget/AppCompatTextView;

.field private mTextActivationDay:Landroid/widget/TextView;

.field private mTextActivationMonth:Landroid/widget/TextView;

.field private mTextLabel:Landroid/widget/TextView;

.field mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private ops:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private service:Lcom/texa/careapp/model/ServiceDataModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 3

    .line 61
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mDayFormat:Ljava/text/DateFormat;

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MMM\nyyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mMonthFormat:Ljava/text/DateFormat;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->ops:Ljava/util/ArrayList;

    .line 62
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->service:Lcom/texa/careapp/model/ServiceDataModel;

    return-void
.end method

.method private setCardSosLight()V
    .locals 5

    .line 111
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mNameText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110a7d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    .line 112
    invoke-virtual {v3}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/model/UserModel;->getFirstName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    .line 113
    invoke-virtual {v3}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/model/UserModel;->getLastName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 111
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCardSosPlus(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_SOS_TRIAL_ACTIVATION_SOS_TRIAL_ACTIVATED:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 95
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mTextLabel:Landroid/widget/TextView;

    const v0, 0x7f110c61

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 96
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mTextActivationDay:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mTextActivationMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mTextActivationDay:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mDayFormat:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->service:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel;->getExpiration()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mTextActivationMonth:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mMonthFormat:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->service:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel;->getExpiration()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_SOS_PREMIUM_ACTIVATION_SOS_PREMIUM_ACTIVATED:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 102
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mTextLabel:Landroid/widget/TextView;

    const v0, 0x7f110c86

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 103
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mTextActivationDay:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mTextActivationMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    :goto_0
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mCarText:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->service:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/ServiceDataModel;->getDongle()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Lcom/texa/careapp/model/VehicleModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mPlateText:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->service:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/ServiceDataModel;->getDongle()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getPlate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 5

    .line 67
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;)V

    .line 68
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;

    .line 69
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->screenAcceptationSosServiceDescriptionLabel:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mTextLabel:Landroid/widget/TextView;

    .line 70
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->screenAcceptationSosServiceDescriptionDueDay:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mTextActivationDay:Landroid/widget/TextView;

    .line 71
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->screenAcceptationSosServiceDescriptionDueMonth:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mTextActivationMonth:Landroid/widget/TextView;

    .line 72
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->screenAcceptationSosServiceDescriptionCardPlusCar:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mCarText:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->screenAcceptationSosServiceDescriptionCardPlusPlate:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mPlateText:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->screenAcceptationSosServiceDescriptionCardLightCar:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mNameText:Landroid/widget/TextView;

    .line 75
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->okButton:Landroid/widget/TextView;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->service:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v0, v1, :cond_0

    .line 78
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->screenAcceptationSosServiceDescriptionCardPlus:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v4}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 79
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->screenAcceptationSosServiceDescriptionCardLight:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, v3}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->service:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->isTrial()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->setCardSosPlus(Z)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->service:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne v0, v1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_SOS_LIGHT_ACTIVATION_SOS_LIGHT_ACTIVATED:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 83
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->screenAcceptationSosServiceDescriptionCardPlus:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v3}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 84
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->screenAcceptationSosServiceDescriptionCardLight:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, v4}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 85
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->setCardSosLight()V

    .line 88
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v2}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleOneOffJob(ILjava/lang/String;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 124
    sget-object v0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00a5

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-ActivationServiceCompletedScreen(Landroid/view/View;)V
    .locals 2

    .line 75
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/events/CloseActivityEvent;

    const-class v1, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/events/CloseActivityEvent;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/events/CloseActivityEvent;

    const-class v2, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;

    invoke-direct {v1, v2}, Lcom/texa/careapp/app/events/CloseActivityEvent;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method
