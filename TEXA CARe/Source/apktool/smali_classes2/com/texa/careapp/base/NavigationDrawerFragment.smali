.class public Lcom/texa/careapp/base/NavigationDrawerFragment;
.super Landroid/app/Fragment;
.source "NavigationDrawerFragment.java"


# static fields
.field private static final PREF_USER_LEARNED_DRAWER:Ljava/lang/String; = "navigation_drawer_learned"

.field private static final STATE_SELECTED_POSITION:Ljava/lang/String; = "selected_navigation_drawer_position"


# instance fields
.field private alertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mActionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

.field private mCareApplication:Lcom/texa/careapp/CareApplication;

.field protected mCommunication:Lcom/texa/carelib/communication/Communication;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCommunicationObserver:Lcom/texa/careapp/carelib/CommunicationObservable;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCurrentSelectedPosition:I

.field private final mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDrawerAlertImageView:Lcom/texa/careapp/views/DrawerAlertImageView;

.field private mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private mDrawerSelectableItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mFragmentContainerView:Landroid/view/View;

.field private mFromSavedInstanceState:Z

.field private mNavigator:Lcom/texa/care/navigation/Navigator;

.field private mRelativeTimeTextView:Lcom/texa/careapp/views/RelativeTimeTextView;

.field private mServicesImageView:Landroid/widget/ImageView;

.field protected mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUserLearnedDrawer:Z

.field private mVehicleName:Landroid/widget/TextView;

.field protected mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    .line 128
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/base/NavigationDrawerFragment;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mUserLearnedDrawer:Z

    return p0
.end method

.method static synthetic access$002(Lcom/texa/careapp/base/NavigationDrawerFragment;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mUserLearnedDrawer:Z

    return p1
.end method

.method static synthetic access$100(Lcom/texa/careapp/base/NavigationDrawerFragment;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->setLastParametersUpdateView()V

    return-void
.end method

.method private checkSelection(I)Z
    .locals 3

    .line 473
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDrawerSelectableItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 474
    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic lambda$onCreateView$11(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onResume$1(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error observing care connection status"

    .line 160
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

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

    const-string v1, "error observing check for services"

    .line 177
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private onDashboardItemClicked()V
    .locals 3

    .line 340
    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->closeDrawer()V

    const v0, 0x7f0a01a0

    .line 341
    invoke-direct {p0, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->checkSelection(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    invoke-direct {p0, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->setSelection(I)V

    .line 343
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->clearBackStack()V

    const/4 v0, 0x0

    .line 344
    sput-boolean v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCanMoveCard:Z

    .line 345
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v1, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;

    iget-object v2, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v1, v2}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;-><init>(Lcom/texa/careapp/CareApplication;)V

    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    :cond_0
    return-void
.end method

.method private onEcoDrivingItemClicked()V
    .locals 3

    .line 371
    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->closeDrawer()V

    const v0, 0x7f0a01a1

    .line 372
    invoke-direct {p0, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->setSelection(I)V

    .line 373
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ECO_DRIVING_TUTORIAL"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private onScheduleClicked()V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_SIDE_MENU_TAPPED_SCHEDULES_SIDE_MENU_ITEM:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 446
    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->closeDrawer()V

    const v0, 0x7f0a01a3

    .line 447
    invoke-direct {p0, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->setSelection(I)V

    const/4 v0, 0x0

    .line 448
    sput-boolean v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCanMoveCard:Z

    .line 449
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/texa/careapp/app/schedule/ScheduleActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onServicesItemClicked()V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_SIDE_MENU_TAPPED_AVAILABLE_SERVICES_SIDE_MENU_ITEM:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 351
    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->closeDrawer()V

    const v0, 0x7f0a01a8

    .line 352
    invoke-direct {p0, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->setSelection(I)V

    const/4 v0, 0x0

    .line 353
    sput-boolean v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCanMoveCard:Z

    .line 355
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/texa/careapp/app/settings/services/SettingsServicesActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 357
    iget-object v1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onSettingsClicked()V
    .locals 4

    .line 455
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_SIDE_MENU_TAPPED_SETTINGS_SIDE_MENU_ITEM:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 456
    sput-boolean v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCanMoveCard:Z

    const v0, 0x7f0a01aa

    .line 457
    invoke-direct {p0, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->setSelection(I)V

    .line 458
    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v2}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/texa/careapp/app/settings/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 459
    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->closeDrawer()V

    return-void
.end method

.method private onVehicleFinderItemClicked()V
    .locals 4

    .line 384
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_SIDE_MENU_TAPPED_FIND_VEHICLE_SIDE_MENU:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 386
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getLastLocation()Ljava/util/HashMap;

    move-result-object v2

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    const v3, 0x7f11094c

    if-ne v0, v1, :cond_1

    .line 391
    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-virtual {p0, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->vehicleNotFoundDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 396
    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110d35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-virtual {p0, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->vehicleNotFoundDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->isSpeedOver10()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 401
    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-virtual {p0, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->vehicleNotFoundDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :cond_3
    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->closeDrawer()V

    const/4 v0, 0x0

    .line 406
    sput-boolean v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCanMoveCard:Z

    .line 407
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 408
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 409
    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private onVehicleStatusItemClicked()V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_SIDE_MENU_TAPPED_DIAGNOSIS_SIDE_MENU_ITEM:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 363
    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->closeDrawer()V

    const v0, 0x7f0a01a6

    .line 364
    invoke-direct {p0, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->setSelection(I)V

    const/4 v0, 0x0

    .line 365
    sput-boolean v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCanMoveCard:Z

    .line 366
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 367
    invoke-virtual {p0, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private restoreItemSelection()V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getCurrentScreen()Lcom/texa/care/navigation/Screen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 486
    :cond_0
    instance-of v1, v0, Lcom/texa/careapp/app/schedule/ScheduleScreen;

    if-eqz v1, :cond_1

    const v0, 0x7f0a01a3

    .line 487
    invoke-direct {p0, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->setSelection(I)V

    goto :goto_0

    .line 488
    :cond_1
    instance-of v1, v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;

    if-eqz v1, :cond_2

    const v0, 0x7f0a01a0

    .line 489
    invoke-direct {p0, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->setSelection(I)V

    goto :goto_0

    .line 490
    :cond_2
    instance-of v0, v0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;

    if-eqz v0, :cond_3

    const v0, 0x7f0a01a6

    .line 491
    invoke-direct {p0, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->setSelection(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setLastParametersUpdateView()V
    .locals 6

    .line 223
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "#setLastParametersUpdateView() - dongle model is null!"

    .line 225
    invoke-static {v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 235
    :cond_1
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getLastParametersUpdate()Ljava/lang/Long;

    move-result-object v0

    .line 236
    iget-object v2, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v2}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v2

    sget-object v3, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v2, v3, :cond_2

    .line 237
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mRelativeTimeTextView:Lcom/texa/careapp/views/RelativeTimeTextView;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/texa/careapp/views/RelativeTimeTextView;->setReferenceTime(J)V

    .line 238
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mRelativeTimeTextView:Lcom/texa/careapp/views/RelativeTimeTextView;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/RelativeTimeTextView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mRelativeTimeTextView:Lcom/texa/careapp/views/RelativeTimeTextView;

    const v1, 0x7f1108ef

    invoke-virtual {p0, v1}, Lcom/texa/careapp/base/NavigationDrawerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/RelativeTimeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v2, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mRelativeTimeTextView:Lcom/texa/careapp/views/RelativeTimeTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110abe

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/careapp/views/RelativeTimeTextView;->setPrefix(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v3, "Parameters update: %s"

    .line 243
    invoke-static {v3, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    iget-object v2, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mRelativeTimeTextView:Lcom/texa/careapp/views/RelativeTimeTextView;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/texa/careapp/views/RelativeTimeTextView;->setReferenceTime(J)V

    .line 245
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mRelativeTimeTextView:Lcom/texa/careapp/views/RelativeTimeTextView;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/RelativeTimeTextView;->setVisibility(I)V

    goto :goto_0

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mRelativeTimeTextView:Lcom/texa/careapp/views/RelativeTimeTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/RelativeTimeTextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "#setLastParametersUpdateView() - navigationDrawerFragment not attached to Activity"

    .line 231
    invoke-static {v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private setSelection(I)V
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDrawerSelectableItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 464
    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    .line 465
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 467
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public closeDrawer()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    return-void
.end method

.method public isDrawerOpen()Z
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSpeedOver10()Z
    .locals 5

    .line 421
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->VEHICLE_SPEED:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/model/VehicleModel;->getVehicleParamById(J)Lcom/texa/careapp/model/VehicleParam;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 425
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public synthetic lambda$onCreateView$10$com-texa-careapp-base-NavigationDrawerFragment(Landroid/view/View;)V
    .locals 0

    .line 211
    invoke-direct {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->onSettingsClicked()V

    return-void
.end method

.method public synthetic lambda$onCreateView$4$com-texa-careapp-base-NavigationDrawerFragment(Landroid/view/View;)V
    .locals 0

    .line 201
    invoke-direct {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->onDashboardItemClicked()V

    return-void
.end method

.method public synthetic lambda$onCreateView$5$com-texa-careapp-base-NavigationDrawerFragment(Landroid/view/View;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->onScheduleClicked()V

    return-void
.end method

.method public synthetic lambda$onCreateView$6$com-texa-careapp-base-NavigationDrawerFragment(Landroid/view/View;)V
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->onVehicleStatusItemClicked()V

    return-void
.end method

.method public synthetic lambda$onCreateView$7$com-texa-careapp-base-NavigationDrawerFragment(Landroid/view/View;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->onVehicleFinderItemClicked()V

    return-void
.end method

.method public synthetic lambda$onCreateView$8$com-texa-careapp-base-NavigationDrawerFragment(Landroid/view/View;)V
    .locals 0

    .line 209
    invoke-direct {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->onServicesItemClicked()V

    return-void
.end method

.method public synthetic lambda$onCreateView$9$com-texa-careapp-base-NavigationDrawerFragment(Landroid/view/View;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->onEcoDrivingItemClicked()V

    return-void
.end method

.method public synthetic lambda$onResume$0$com-texa-careapp-base-NavigationDrawerFragment(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->setLastParametersUpdateView()V

    return-void
.end method

.method public synthetic lambda$onResume$2$com-texa-careapp-base-NavigationDrawerFragment(Lcom/texa/careapp/checks/Check$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    if-ne p1, v0, :cond_0

    .line 170
    iget-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDrawerAlertImageView:Lcom/texa/careapp/views/DrawerAlertImageView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/DrawerAlertImageView;->hide()V

    .line 171
    iget-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mServicesImageView:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDrawerAlertImageView:Lcom/texa/careapp/views/DrawerAlertImageView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/DrawerAlertImageView;->show()V

    .line 175
    iget-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mServicesImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$setup$12$com-texa-careapp-base-NavigationDrawerFragment(Landroid/view/View;)V
    .locals 1

    .line 303
    iget-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 304
    iget-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    .line 306
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$setup$13$com-texa-careapp-base-NavigationDrawerFragment()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mActionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    return-void
.end method

.method public synthetic lambda$vehicleNotFoundDialog$14$com-texa-careapp-base-NavigationDrawerFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 436
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x0

    .line 437
    iput-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 190
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 192
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    iput-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mCareApplication:Lcom/texa/careapp/CareApplication;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 334
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 336
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mActionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 135
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/base/NavigationDrawerFragment;)V

    .line 141
    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "navigation_drawer_learned"

    const/4 v2, 0x1

    .line 142
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mUserLearnedDrawer:Z

    if-eqz p1, :cond_0

    const-string v0, "selected_navigation_drawer_position"

    .line 145
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    .line 146
    iput-boolean v2, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mFromSavedInstanceState:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0091

    const/4 v0, 0x0

    .line 198
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;

    .line 199
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDrawerSelectableItems:Ljava/util/List;

    .line 200
    iget-object p3, p1, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerItemDashboard:Landroid/widget/TextView;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object p2, p1, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerItemDashboard:Landroid/widget/TextView;

    new-instance p3, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0}, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/base/NavigationDrawerFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object p2, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDrawerSelectableItems:Ljava/util/List;

    iget-object p3, p1, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerItemSchedule:Landroid/widget/TextView;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object p2, p1, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerItemSchedule:Landroid/widget/TextView;

    new-instance p3, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0}, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda8;-><init>(Lcom/texa/careapp/base/NavigationDrawerFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object p2, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDrawerSelectableItems:Ljava/util/List;

    iget-object p3, p1, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerItemVehicleStatus:Landroid/widget/TextView;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object p2, p1, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerItemVehicleStatus:Landroid/widget/TextView;

    new-instance p3, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0}, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda9;-><init>(Lcom/texa/careapp/base/NavigationDrawerFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object p2, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDrawerSelectableItems:Ljava/util/List;

    iget-object p3, p1, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerItemVehicleFinder:Landroid/widget/TextView;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object p2, p1, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerItemVehicleFinder:Landroid/widget/TextView;

    new-instance p3, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda10;

    invoke-direct {p3, p0}, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda10;-><init>(Lcom/texa/careapp/base/NavigationDrawerFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object p2, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDrawerSelectableItems:Ljava/util/List;

    iget-object p3, p1, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerItemExtendeControls:Landroid/widget/TextView;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object p2, p1, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerServices:Landroid/widget/LinearLayout;

    new-instance p3, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda11;

    invoke-direct {p3, p0}, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda11;-><init>(Lcom/texa/careapp/base/NavigationDrawerFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object p2, p1, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerItemEcoDriving:Landroid/widget/TextView;

    new-instance p3, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda12;

    invoke-direct {p3, p0}, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda12;-><init>(Lcom/texa/careapp/base/NavigationDrawerFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object p2, p1, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerSettings:Landroid/widget/LinearLayout;

    new-instance p3, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0}, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/base/NavigationDrawerFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object p2, p1, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->lastOdbRead:Lcom/texa/careapp/views/RelativeTimeTextView;

    iput-object p2, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mRelativeTimeTextView:Lcom/texa/careapp/views/RelativeTimeTextView;

    .line 214
    sget-object p3, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda14;->INSTANCE:Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda14;

    invoke-virtual {p2, p3}, Lcom/texa/careapp/views/RelativeTimeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object p2, p1, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerItemVehicleName:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mVehicleName:Landroid/widget/TextView;

    .line 219
    invoke-virtual {p1}, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onEventMainThread(Lcom/texa/careapp/utils/VehicleObserver$VehicleChangedEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 497
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mVehicleName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/VehicleObserver$VehicleChangedEvent;->getVehicleModel()Lcom/texa/careapp/model/VehicleModel;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Lcom/texa/careapp/model/VehicleModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 182
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 183
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 152
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 154
    invoke-direct {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->restoreItemSelection()V

    .line 156
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mCommunicationObserver:Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-virtual {v1}, Lcom/texa/careapp/carelib/CommunicationObservable;->observeConnectionStatus()Lio/reactivex/Observable;

    move-result-object v1

    .line 157
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 158
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/base/NavigationDrawerFragment;)V

    sget-object v3, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda3;

    .line 159
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 162
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mVehicleName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Lcom/texa/careapp/model/VehicleModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-interface {v1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;->observeChecksForServices()Lio/reactivex/Observable;

    move-result-object v1

    .line 167
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applySchedulers()Lio/reactivex/ObservableTransformer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/base/NavigationDrawerFragment;)V

    sget-object v3, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda4;->INSTANCE:Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda4;

    .line 168
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 328
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 329
    iget v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    const-string v1, "selected_navigation_drawer_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setup(ILandroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;Lcom/texa/care/navigation/Navigator;)V
    .locals 7

    .line 265
    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    .line 266
    iput-object p2, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 267
    iput-object p4, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mNavigator:Lcom/texa/care/navigation/Navigator;

    .line 269
    new-instance p1, Lcom/texa/careapp/base/NavigationDrawerFragment$1;

    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v5, 0x7f110975

    const v6, 0x7f110974

    move-object v0, p1

    move-object v1, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/texa/careapp/base/NavigationDrawerFragment$1;-><init>(Lcom/texa/careapp/base/NavigationDrawerFragment;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V

    iput-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mActionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    const/4 p2, 0x0

    .line 294
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 296
    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p3, 0x7f0a019f

    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 297
    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const p4, 0x7f0a019e

    invoke-virtual {p3, p4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/texa/careapp/views/DrawerAlertImageView;

    iput-object p3, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDrawerAlertImageView:Lcom/texa/careapp/views/DrawerAlertImageView;

    .line 298
    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const p4, 0x7f0a01a9

    invoke-virtual {p3, p4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mServicesImageView:Landroid/widget/ImageView;

    .line 300
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    new-instance p2, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0}, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda13;-><init>(Lcom/texa/careapp/base/NavigationDrawerFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-boolean p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mUserLearnedDrawer:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mFromSavedInstanceState:Z

    if-nez p1, :cond_0

    .line 313
    iget-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object p2, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 317
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance p2, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/base/NavigationDrawerFragment;)V

    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->post(Ljava/lang/Runnable;)Z

    .line 319
    iget-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object p2, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mActionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    return-void
.end method

.method public vehicleNotFoundDialog(Ljava/lang/String;)V
    .locals 3

    .line 429
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 431
    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110d2f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 432
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 433
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 434
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 435
    invoke-virtual {p0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/base/NavigationDrawerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/base/NavigationDrawerFragment;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 439
    iget-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 440
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
