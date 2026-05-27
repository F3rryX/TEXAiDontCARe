.class public Lcom/texa/careapp/app/MainActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/MainActivity$RequestTyresSwapConfigurationDialogEvent;
    }
.end annotation


# static fields
.field private static final ACTION_DISPLAY_SCREEN:Ljava/lang/String; = "display-screen-action"

.field private static final ACTION_FIRST_CONFIGURATION:I = 0x1

.field private static final ACTION_UNDEFINED:I = -0x1

.field private static final ACTION_VIN_MISMATCH:I = 0x0

.field private static final FASTEST_INTERVAL:I = 0x1388

.field private static final INTERVAL:I = 0x2710

.field private static final OPEN_SCREEN_KEY:Ljava/lang/String; = "OPEN_SCREEN_KEY"

.field private static final REQUEST_CHECK_SETTINGS:I = 0x1

.field private static final SCREEN_AUTHENTICATION:I = 0x5

.field private static final SCREEN_CONTACTS:I = 0x2

.field private static final SCREEN_DASHBOARD:I = 0x4

.field private static final SCREEN_SCHEDULE:I = 0x3

.field private static final SMALLEST_DISPLACEMENT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private BTBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private GPSBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private action:I

.field private careApplication:Lcom/texa/careapp/CareApplication;

.field protected fcmManager:Lcom/texa/careapp/fcm/FcmManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private isRequestCareConfigDialogShown:Z

.field private lastSnackBarCreation:J

.field private mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCareStatusDisposable:Lio/reactivex/disposables/Disposable;

.field protected mCommunication:Lcom/texa/carelib/communication/Communication;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCoordinatorLayout:Landroid/view/View;

.field private final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public mEventBus:Lorg/greenrobot/eventbus/EventBus;

.field private mLocalBroadCastReceiver:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field protected mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNavigationDrawerFragment:Lcom/texa/careapp/base/NavigationDrawerFragment;

.field private mNavigator:Lcom/texa/care/navigation/Navigator;

.field protected mNotificationManager:Landroid/app/NotificationManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mOnClickEnableBT:Landroid/view/View$OnClickListener;

.field mOnClickEnableGPS:Landroid/view/View$OnClickListener;

.field protected mPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSensorManager:Landroid/hardware/SensorManager;

.field protected mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mShakeDetector:Lcom/texa/careapp/utils/shake/ShakeDetector;

.field private mSnackBar:Lcom/google/android/material/snackbar/Snackbar;

.field protected mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
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

.field protected mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private vehicles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$CwbkolxBlJDSpARXR0KUOuanuZY(Lcom/texa/careapp/app/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/texa/careapp/app/MainActivity;->onCompleteGetUserVehicleProcedure()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 103
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    .line 124
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/MainActivity;->vehicles:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 135
    iput-wide v0, p0, Lcom/texa/careapp/app/MainActivity;->lastSnackBarCreation:J

    const/4 v0, -0x1

    .line 141
    iput v0, p0, Lcom/texa/careapp/app/MainActivity;->action:I

    .line 176
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 689
    new-instance v0, Lcom/texa/careapp/app/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/MainActivity$1;-><init>(Lcom/texa/careapp/app/MainActivity;)V

    iput-object v0, p0, Lcom/texa/careapp/app/MainActivity;->GPSBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 702
    new-instance v0, Lcom/texa/careapp/app/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/MainActivity$2;-><init>(Lcom/texa/careapp/app/MainActivity;)V

    iput-object v0, p0, Lcom/texa/careapp/app/MainActivity;->BTBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 733
    new-instance v0, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/MainActivity;)V

    iput-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mOnClickEnableGPS:Landroid/view/View$OnClickListener;

    .line 738
    new-instance v0, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/MainActivity;)V

    iput-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mOnClickEnableBT:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/MainActivity;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/MainActivity;->snackBar_BT_GPS_changeStateNotify(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static buildIntentFor(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "display-screen-action"

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OPEN_SCREEN_KEY"

    .line 198
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x24000000

    .line 199
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/texa/careapp/fcm/FcmMessagingService;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    const-string p0, "remote_notification"

    .line 202
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p0, "local_notification"

    .line 204
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method public static buildIntentForContactScreen(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x2

    .line 179
    invoke-static {p0, v0}, Lcom/texa/careapp/app/MainActivity;->buildIntentFor(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildIntentForDashboardScreen(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x4

    .line 183
    invoke-static {p0, v0}, Lcom/texa/careapp/app/MainActivity;->buildIntentFor(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildIntentForPinRequest(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x5

    .line 187
    invoke-static {p0, v0}, Lcom/texa/careapp/app/MainActivity;->buildIntentFor(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildIntentForTexaCarePageOnGooglePlay()Landroid/content/Intent;
    .locals 3

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string v1, "market://details?id=com.texa.care"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method private createDrawer(Lcom/texa/care/navigation/Navigator;)V
    .locals 4

    .line 567
    invoke-virtual {p0}, Lcom/texa/careapp/app/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a01ff

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/base/NavigationDrawerFragment;

    iput-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mNavigationDrawerFragment:Lcom/texa/careapp/base/NavigationDrawerFragment;

    const v2, 0x7f0a019d

    .line 569
    invoke-virtual {p0, v2}, Lcom/texa/careapp/app/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p0}, Lcom/texa/careapp/app/MainActivity;->getActionBarToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/texa/careapp/base/NavigationDrawerFragment;->setup(ILandroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;Lcom/texa/care/navigation/Navigator;)V

    return-void
.end method

.method private displayScreen(Landroid/os/Bundle;)V
    .locals 5

    if-eqz p1, :cond_0

    const-string v0, "OPEN_SCREEN_KEY"

    .line 267
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x2

    const-string v2, "local_notification"

    const-string v3, "remote_notification"

    const/4 v4, 0x0

    if-eq v0, v1, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 304
    iget-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;

    iget-object v1, p0, Lcom/texa/careapp/app/MainActivity;->careApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;-><init>(Lcom/texa/careapp/CareApplication;)V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    goto/16 :goto_4

    .line 295
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_TAPPED_REMOTE_NOTIFICATION:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 297
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 298
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_TAPPED_LOCAL_NOTIFICATION:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 300
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->CARE_CONN:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->FAILED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    const-string v2, "pin error after onboarding"

    invoke-virtual {p1, v0, v1, v2}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    .line 301
    iget-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/MainActivity;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v1}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;-><init>(Landroid/app/Activity;Lcom/texa/carelib/communication/DeviceInfo;)V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    goto/16 :goto_4

    .line 287
    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 288
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_TAPPED_REMOTE_NOTIFICATION:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 289
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 290
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_TAPPED_LOCAL_NOTIFICATION:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 292
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;

    iget-object v1, p0, Lcom/texa/careapp/app/MainActivity;->careApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;-><init>(Lcom/texa/careapp/CareApplication;)V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "schedule screen called in MainActivity"

    .line 278
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 280
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_TAPPED_REMOTE_NOTIFICATION:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    .line 281
    :cond_8
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 282
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_TAPPED_LOCAL_NOTIFICATION:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    .line 270
    :cond_9
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 271
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_TAPPED_REMOTE_NOTIFICATION:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    .line 272
    :cond_a
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 273
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_TAPPED_LOCAL_NOTIFICATION:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 275
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v0, Lcom/texa/careapp/app/sos/ContactsScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/MainActivity;->careApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/sos/ContactsScreen;-><init>(Lcom/texa/careapp/CareApplication;)V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    :cond_c
    :goto_4
    return-void
.end method

.method private getVehiclesDetails(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 3

    .line 510
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/careapp/app/MainActivity;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->getVehicleDetailsObservable(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 511
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 512
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1}, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda11;-><init>(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/model/VehicleModel;)V

    sget-object p1, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda1;

    .line 513
    invoke-virtual {v1, v2, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 510
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private getVehiclesFromServer()Lio/reactivex/disposables/Disposable;
    .locals 4

    .line 466
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->vehicles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 467
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v0}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->getUserVehicleList()Lio/reactivex/Observable;

    move-result-object v0

    .line 468
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 469
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda8;-><init>(Lcom/texa/careapp/app/MainActivity;)V

    new-instance v2, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda10;-><init>(Lcom/texa/careapp/app/MainActivity;)V

    new-instance v3, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/app/MainActivity;)V

    .line 470
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method private static isNotConfigured(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/16 v0, 0x84

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$observeCareStatus$7(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error observing care status"

    .line 640
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private observeCareStatus()Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 634
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    invoke-interface {v0}, Lcom/texa/careapp/carelib/ICareObserver;->observeCareStatus()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 635
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda9;-><init>(Lcom/texa/careapp/app/MainActivity;)V

    sget-object v2, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda2;

    .line 636
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method private onCompleteGetUserVehicleProcedure()V
    .locals 4

    .line 500
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "CARE_ENVIRONMENT"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VIN_MISMATCH_ENVIRONMENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->vehicles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/VehicleModel;

    .line 502
    iget-object v2, p0, Lcom/texa/careapp/app/MainActivity;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/careapp/utils/VehicleDataManager;->exists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 503
    invoke-direct {p0, v1}, Lcom/texa/careapp/app/MainActivity;->getVehiclesDetails(Lcom/texa/careapp/model/VehicleModel;)V

    goto :goto_0

    .line 506
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/MainActivity;->requestCareConfigDialog()V

    return-void
.end method

.method private snackBarInfoPersistent(I)Lcom/google/android/material/snackbar/Snackbar;
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mCoordinatorLayout:Landroid/view/View;

    const/4 v1, -0x2

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    return-object p1
.end method

.method private snackBar_BT_GPS_changeStateNotify(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 7

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 252
    iget-wide v2, p0, Lcom/texa/careapp/app/MainActivity;->lastSnackBarCreation:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const-wide/16 v4, 0x3e8

    sub-long v4, v0, v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_2

    .line 254
    :cond_0
    iput-wide v0, p0, Lcom/texa/careapp/app/MainActivity;->lastSnackBarCreation:J

    const-string v0, "ACTION_CHECK_BLUETOOTH_STATE"

    .line 255
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {p0, v1, p2}, Lcom/texa/careapp/app/MainActivity;->checkBtAndLocationEnabled(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    const-string v0, "ACTION_CHECK_GPS_STATE"

    .line 257
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 258
    invoke-virtual {p0, p2, v1}, Lcom/texa/careapp/app/MainActivity;->checkBtAndLocationEnabled(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startReadShake()V
    .locals 4

    .line 583
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->careApplication:Lcom/texa/careapp/CareApplication;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/texa/careapp/CareApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    .line 586
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 587
    new-instance v1, Lcom/texa/careapp/utils/shake/ShakeDetector;

    invoke-direct {v1}, Lcom/texa/careapp/utils/shake/ShakeDetector;-><init>()V

    iput-object v1, p0, Lcom/texa/careapp/app/MainActivity;->mShakeDetector:Lcom/texa/careapp/utils/shake/ShakeDetector;

    .line 588
    iget-object v2, p0, Lcom/texa/careapp/app/MainActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 589
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mShakeDetector:Lcom/texa/careapp/utils/shake/ShakeDetector;

    new-instance v1, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/shake/ShakeDetector;->setOnShakeListener(Lcom/texa/careapp/utils/shake/ShakeDetector$OnShakeListener;)V

    return-void
.end method

.method private stopReadShake()V
    .locals 2

    .line 600
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/texa/careapp/app/MainActivity;->mShakeDetector:Lcom/texa/careapp/utils/shake/ShakeDetector;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method


# virtual methods
.method public checkBtAndLocationEnabled(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 371
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/texa/careapp/app/MainActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p2, :cond_0

    .line 372
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "location"

    .line 376
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    :try_start_0
    const-string v1, "gps"

    .line 378
    invoke-virtual {p1, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "locationManager.isProviderEnabled(LocationManager.GPS_PROVIDER)"

    .line 380
    invoke-static {p1, v2, v1}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 386
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/texa/careapp/app/MainActivity;->mSnackBar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v1, :cond_3

    .line 387
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    .line 390
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 391
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/texa/careapp/app/MainActivity;->lastSnackBarCreation:J

    const p1, 0x7f110aca

    .line 392
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/MainActivity;->snackBarInfoPersistent(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mSnackBar:Lcom/google/android/material/snackbar/Snackbar;

    .line 393
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void

    .line 398
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const v1, 0x7f1109c6

    if-nez p1, :cond_5

    .line 399
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/texa/careapp/app/MainActivity;->lastSnackBarCreation:J

    const p1, 0x7f110acb

    .line 400
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/MainActivity;->snackBarInfoPersistent(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mSnackBar:Lcom/google/android/material/snackbar/Snackbar;

    .line 401
    iget-object p2, p0, Lcom/texa/careapp/app/MainActivity;->mOnClickEnableGPS:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1, p2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 402
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void

    .line 407
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    .line 408
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/texa/careapp/app/MainActivity;->lastSnackBarCreation:J

    const p1, 0x7f11007a

    .line 409
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/MainActivity;->snackBarInfoPersistent(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mSnackBar:Lcom/google/android/material/snackbar/Snackbar;

    .line 410
    iget-object p2, p0, Lcom/texa/careapp/app/MainActivity;->mOnClickEnableBT:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1, p2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 411
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void

    :cond_6
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Complete checkBtAndLocationEnabled"

    .line 415
    invoke-static {p2, p1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public checkCrashlyticsUser()V
    .locals 2

    .line 675
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setUserId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getNavigator()Lcom/texa/care/navigation/Navigator;
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    return-object v0
.end method

.method public synthetic lambda$getVehiclesDetails$4$com-texa-careapp-app-MainActivity(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/networking/response/VehicleResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v0, p1, p2}, Lcom/texa/careapp/utils/VehicleDataManager;->updateVehicle(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/networking/response/VehicleResponse;)Lio/reactivex/Observable;
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 517
    invoke-virtual {p1}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$getVehiclesFromServer$2$com-texa-careapp-app-MainActivity(Lcom/texa/careapp/networking/response/UserVehicleListResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 471
    iget-object p1, p1, Lcom/texa/careapp/networking/response/UserVehicleListResponse;->userVehicleDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;

    .line 472
    new-instance v1, Lcom/texa/careapp/model/VehicleModel;

    invoke-direct {v1}, Lcom/texa/careapp/model/VehicleModel;-><init>()V

    .line 473
    iget-object v2, v0, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->plate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/VehicleModel;->setPlate(Ljava/lang/String;)V

    .line 474
    iget-object v2, v0, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->description:Ljava/lang/String;

    invoke-static {v2}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 475
    iget-object v2, v0, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/VehicleModel;->setDescription(Ljava/lang/String;)V

    .line 476
    :cond_0
    iget-object v2, v0, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->vehicleId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/VehicleModel;->setUid(Ljava/lang/String;)V

    .line 477
    iget-object v2, v0, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->selectionData:Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->selectionData:Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;

    .line 478
    invoke-virtual {v2}, Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;->getSelectionModel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->selectionData:Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;

    .line 479
    invoke-virtual {v2}, Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;->getSelectionBrand()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->selectionData:Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;

    .line 480
    invoke-virtual {v2}, Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;->getSelectionModel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->selectionData:Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;

    .line 481
    invoke-virtual {v2}, Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;->getSelectionBrand()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 482
    iget-object v2, v0, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->selectionData:Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;

    invoke-virtual {v2}, Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;->getSelectionModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/VehicleModel;->setModelName(Ljava/lang/String;)V

    .line 483
    iget-object v0, v0, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->selectionData:Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;

    invoke-virtual {v0}, Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;->getSelectionBrand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/texa/careapp/model/VehicleModel;->setBrandName(Ljava/lang/String;)V

    goto :goto_1

    .line 485
    :cond_1
    iget-object v2, v0, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->description:Ljava/lang/String;

    invoke-static {v2}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->description:Ljava/lang/String;

    const-string/jumbo v3, "||"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 486
    iget-object v0, v0, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->description:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 487
    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 488
    aget-object v0, v0, v3

    .line 489
    invoke-virtual {v1, v0}, Lcom/texa/careapp/model/VehicleModel;->setBrandName(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/VehicleModel;->setModelName(Ljava/lang/String;)V

    .line 494
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->vehicles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public synthetic lambda$getVehiclesFromServer$3$com-texa-careapp-app-MainActivity(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 496
    invoke-direct {p0}, Lcom/texa/careapp/app/MainActivity;->onCompleteGetUserVehicleProcedure()V

    return-void
.end method

.method public synthetic lambda$new$8$com-texa-careapp-app-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 733
    invoke-virtual {p0}, Lcom/texa/careapp/app/MainActivity;->requestGPSDialog()V

    return-void
.end method

.method public synthetic lambda$new$9$com-texa-careapp-app-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 738
    iget-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    return-void
.end method

.method public synthetic lambda$observeCareStatus$6$com-texa-careapp-app-MainActivity(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 637
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/texa/careapp/app/MainActivity;->isNotConfigured(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 638
    invoke-direct {p0}, Lcom/texa/careapp/app/MainActivity;->getVehiclesFromServer()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public synthetic lambda$onCreate$0$com-texa-careapp-app-MainActivity(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 232
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->fcmManager:Lcom/texa/careapp/fcm/FcmManager;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/fcm/FcmManager;->saveCurrentToken(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Exception while getting fcm token"

    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$requestGPSDialog$1$com-texa-careapp-app-MainActivity(Lcom/google/android/gms/location/LocationSettingsResult;)V
    .locals 2

    .line 436
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationSettingsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 437
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 443
    :try_start_0
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/common/api/Status;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 445
    sget-object v0, Lcom/texa/careapp/app/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "startResolutionForResult  error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public synthetic lambda$startReadShake$5$com-texa-careapp-app-MainActivity(I)V
    .locals 2

    .line 591
    sget-object p1, Lcom/texa/careapp/app/MainActivity;->TAG:Ljava/lang/String;

    const-string v0, "###***shakeEvent***###"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 593
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->careApplication:Lcom/texa/careapp/CareApplication;

    const-class v1, Lcom/texa/careapp/app/sos/AutomaticSosActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 594
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 595
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mNavigationDrawerFragment:Lcom/texa/careapp/base/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mNavigationDrawerFragment:Lcom/texa/careapp/base/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->closeDrawer()V

    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 558
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 211
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002d

    .line 212
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ActivityMainBinding;

    .line 213
    iget-object p1, p1, Lcom/texa/careapp/databinding/ActivityMainBinding;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mCoordinatorLayout:Landroid/view/View;

    .line 215
    invoke-virtual {p0}, Lcom/texa/careapp/app/MainActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity;->careApplication:Lcom/texa/careapp/CareApplication;

    .line 216
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/MainActivity;)V

    .line 218
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    const v0, 0x7f0a00d7

    .line 219
    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->setContainerResId(I)V

    .line 220
    iget-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {p0}, Lcom/texa/careapp/app/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->setActionBar(Landroidx/appcompat/app/ActionBar;)V

    const/4 p1, 0x0

    .line 221
    iput-boolean p1, p0, Lcom/texa/careapp/app/MainActivity;->isRequestCareConfigDialogShown:Z

    .line 223
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/MainActivity;->createDrawer(Lcom/texa/care/navigation/Navigator;)V

    .line 224
    invoke-virtual {p0}, Lcom/texa/careapp/app/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/texa/careapp/app/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "start_main_activity"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    .line 225
    invoke-virtual {p1}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isValidatedUserPhoneNumber(Lcom/texa/careapp/model/UserModel;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 226
    invoke-static {p0}, Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 227
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/MainActivity;->fcmManager:Lcom/texa/careapp/fcm/FcmManager;

    invoke-virtual {p1}, Lcom/texa/careapp/fcm/FcmManager;->getNotificationToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 231
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/MainActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/MainActivity;->displayScreen(Landroid/os/Bundle;)V

    .line 241
    invoke-virtual {p0}, Lcom/texa/careapp/app/MainActivity;->scheduleSyncServiceDataTask()V

    .line 243
    invoke-virtual {p0}, Lcom/texa/careapp/app/MainActivity;->checkCrashlyticsUser()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 574
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onDestroy()V

    .line 575
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/MainActivity$RequestTyresSwapConfigurationDialogEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 605
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/texa/careapp/app/MainActivity$RequestTyresSwapConfigurationDialogEvent;->getVehicleId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/events/FirstConfigurationEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 612
    invoke-direct {p0}, Lcom/texa/careapp/app/MainActivity;->getVehiclesFromServer()Lio/reactivex/disposables/Disposable;

    const/4 p1, 0x1

    .line 613
    iput p1, p0, Lcom/texa/careapp/app/MainActivity;->action:I

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/events/StartSosPrerequisiteActivityEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 618
    iget-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 620
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/MainActivity;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    .line 621
    invoke-virtual {v1}, Lcom/texa/careapp/utils/ServiceDataManager;->getSosServices()Ljava/util/List;

    move-result-object v1

    .line 619
    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/utils/ServiceDataManager;->filterActiveSosServicesForHwId(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/utils/ServiceDataManager;->getServicePriority(Ljava/util/List;)Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object p1

    .line 618
    invoke-static {p0, p1}, Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;->buildIntent(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/utils/exceptions/CareException;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 653
    invoke-virtual {p1}, Lcom/texa/careapp/utils/exceptions/CareException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/MainActivity;->snackbarInfo(Ljava/lang/String;)Lcom/google/android/material/snackbar/Snackbar;

    return-void
.end method

.method public onEventMainThread(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "VIN_MISMATCH_ENVIRONMENT"

    .line 645
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 646
    invoke-direct {p0}, Lcom/texa/careapp/app/MainActivity;->getVehiclesFromServer()Lio/reactivex/disposables/Disposable;

    const/4 p1, 0x0

    .line 647
    iput p1, p0, Lcom/texa/careapp/app/MainActivity;->action:I

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 524
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 525
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "display-screen-action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/MainActivity;->displayScreen(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 532
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onPause()V

    .line 534
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mCareStatusDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 536
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 543
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mLocalBroadCastReceiver:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/texa/careapp/app/MainActivity;->GPSBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 544
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mLocalBroadCastReceiver:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/texa/careapp/app/MainActivity;->BTBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 322
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onResume()V

    .line 324
    const-class v0, Lcom/texa/careapp/app/service/CareService;

    invoke-static {p0, v0}, Lcom/texa/careapp/utils/Utils;->shouldStartService(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/texa/careapp/app/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/app/service/CareService;->buildConnectToDongleIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/MainActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/app/service/CareService;->buildConnectToDongleIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 332
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/texa/careapp/app/MainActivity;->observeCareStatus()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mCareStatusDisposable:Lio/reactivex/disposables/Disposable;

    .line 334
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "CARE_ENVIRONMENT"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VIN_MISMATCH_ENVIRONMENT"

    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    invoke-direct {p0}, Lcom/texa/careapp/app/MainActivity;->getVehiclesFromServer()Lio/reactivex/disposables/Disposable;

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->fcmManager:Lcom/texa/careapp/fcm/FcmManager;

    invoke-virtual {v0, p0}, Lcom/texa/careapp/fcm/FcmManager;->checkPlayServices(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 346
    invoke-virtual {p0, v0, v0}, Lcom/texa/careapp/app/MainActivity;->checkBtAndLocationEnabled(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 348
    invoke-virtual {p0}, Lcom/texa/careapp/app/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mLocalBroadCastReceiver:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 349
    iget-object v1, p0, Lcom/texa/careapp/app/MainActivity;->BTBroadCastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "ACTION_CHECK_BLUETOOTH_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 350
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mLocalBroadCastReceiver:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/texa/careapp/app/MainActivity;->GPSBroadCastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "ACTION_CHECK_GPS_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "#onResume()"

    .line 353
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 311
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 317
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onStop()V

    return-void
.end method

.method public requestCareConfigDialog()V
    .locals 4

    .line 459
    iget-boolean v0, p0, Lcom/texa/careapp/app/MainActivity;->isRequestCareConfigDialogShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 460
    iput-boolean v0, p0, Lcom/texa/careapp/app/MainActivity;->isRequestCareConfigDialogShown:Z

    .line 461
    invoke-virtual {p0}, Lcom/texa/careapp/app/MainActivity;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;

    iget-object v2, p0, Lcom/texa/careapp/app/MainActivity;->vehicles:Ljava/util/List;

    iget v3, p0, Lcom/texa/careapp/app/MainActivity;->action:I

    invoke-direct {v1, p0, v2, v3}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;-><init>(Lcom/texa/careapp/app/MainActivity;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    :cond_0
    return-void
.end method

.method public requestGPSDialog()V
    .locals 4

    .line 420
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 422
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 426
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    const/16 v2, 0x64

    .line 427
    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v2, 0x1388

    .line 428
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v2, 0x2710

    .line 429
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    const/high16 v2, 0x41200000    # 10.0f

    .line 430
    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;

    .line 431
    new-instance v2, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    .line 432
    invoke-virtual {v2, v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->addLocationRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    const/4 v1, 0x1

    .line 433
    invoke-virtual {v2, v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->setAlwaysShow(Z)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    .line 434
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->SettingsApi:Lcom/google/android/gms/location/SettingsApi;

    invoke-virtual {v2}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/location/SettingsApi;->checkLocationSettings(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 435
    new-instance v1, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected scheduleSyncServiceDataTask()V
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    const/16 v1, 0x12e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleOneOffJob(ILjava/lang/String;)V

    return-void
.end method
