.class public Lcom/texa/careapp/app/sos/AutomaticSosPresenter;
.super Ljava/lang/Object;
.source "AutomaticSosPresenter.java"


# static fields
.field public static final DELETE_EMERGENCY_DISPOSABLE_KEY:Ljava/lang/String; = "DELETE_EMERGENCY_DISPOSABLE_KEY"

.field static PLAY_ALARM:Z = true

.field public static final STOP_SOS_PRESENTER_DISPOSABLE_KEY:Ljava/lang/String; = "STOP_SOS_PRESENTER_DISPOSABLE_KEY"

.field private static sGson:Lcom/google/gson/Gson;


# instance fields
.field private alarmSound:Landroid/media/MediaPlayer;

.field private audioManager:Landroid/media/AudioManager;

.field private background:Landroid/widget/RelativeLayout;

.field private currentRingerMode:I

.field private emergencySub:Lio/reactivex/disposables/Disposable;

.field private header:Landroid/widget/LinearLayout;

.field private icon:Landroid/widget/ImageView;

.field private iconComplete:Landroid/widget/ImageView;

.field private isCountdownFinished:Z

.field private locationSub:Lio/reactivex/disposables/Disposable;

.field private mActivity:Landroid/app/Activity;

.field protected mCaReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCancelButton:Landroidx/appcompat/widget/AppCompatTextView;

.field private mCircleColor:I

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCountdownMessage:Landroidx/appcompat/widget/AppCompatTextView;

.field private mCountdownTimer:Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;

.field private mCountdownView:Lcom/texa/careapp/views/CircleDisplay;

.field private mCurrentLocation:Landroid/location/Location;

.field private mDisposableHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field protected mFlavorDelegator:Lcom/texa/careapp/FlavorDelegator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mImpactDate:Ljava/util/Date;

.field private mImpactType:I

.field protected mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mMainMessage:Ljava/lang/String;

.field protected mProfile:Lcom/texa/carelib/profile/Profile;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mRequestNow:Landroidx/appcompat/widget/AppCompatTextView;

.field private mRequestTicket:Ljava/lang/String;

.field protected mSharedPreferences:Landroid/content/SharedPreferences;
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

.field private mVibrator:Landroid/os/Vibrator;

.field reactiveLocationProvider:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final sosServiceTypeCaught:I

.field private volume:I


# direct methods
.method public static synthetic $r8$lambda$qfU-n0k9Y0x68Z7mqUp6xr9hLb4(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->notifyAddEmergencyError()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 446
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->buildGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->sGson:Lcom/google/gson/Gson;

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mDisposableHashMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->volume:I

    .line 170
    iput p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->sosServiceTypeCaught:I

    return-void
.end method

.method constructor <init>(Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;Landroid/app/Activity;ILjava/util/Date;I)V
    .locals 3

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mDisposableHashMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->volume:I

    .line 134
    iget-object v1, p1, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;->activityAutomaticSosCountDownView:Lcom/texa/careapp/views/CircleDisplay;

    iput-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCountdownView:Lcom/texa/careapp/views/CircleDisplay;

    .line 135
    iget-object v1, p1, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;->activityAutomaticSosCancelRequest:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCancelButton:Landroidx/appcompat/widget/AppCompatTextView;

    .line 136
    new-instance v2, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p1, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;->activityAutomaticSosRequestNow:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mRequestNow:Landroidx/appcompat/widget/AppCompatTextView;

    .line 138
    new-instance v2, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v1, p1, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;->activityAutomaticSosMessage:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCountdownMessage:Landroidx/appcompat/widget/AppCompatTextView;

    .line 141
    iget-object v1, p1, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;->activityAutomaticSosHeader:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->header:Landroid/widget/LinearLayout;

    .line 142
    iget-object v1, p1, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;->activityAutomaticSosBackground:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->background:Landroid/widget/RelativeLayout;

    .line 143
    iget-object v1, p1, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;->activityAutomaticSosIconComplete:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->iconComplete:Landroid/widget/ImageView;

    .line 144
    iget-object p1, p1, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;->activityAutomaticSosIcon:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->icon:Landroid/widget/ImageView;

    .line 146
    iput-object p2, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCountdownTimer:Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;

    .line 147
    iput-object p3, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mActivity:Landroid/app/Activity;

    .line 148
    iput-object p5, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mImpactDate:Ljava/util/Date;

    const-string/jumbo p1, "vibrator"

    .line 149
    invoke-virtual {p3, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mVibrator:Landroid/os/Vibrator;

    .line 150
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->setMaxVolume()V

    .line 151
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mActivity:Landroid/app/Activity;

    const/high16 p2, 0x7f100000

    invoke-static {p1, p2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->alarmSound:Landroid/media/MediaPlayer;

    const-string p1, "#80FFFFFF"

    .line 152
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCircleColor:I

    .line 153
    iput p4, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mImpactType:I

    .line 154
    iput-boolean v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->isCountdownFinished:Z

    const/4 p1, -0x1

    if-eq p6, p1, :cond_2

    .line 155
    sget-object p1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    .line 156
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->ordinal()I

    move-result p1

    if-eq p6, p1, :cond_0

    sget-object p1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    .line 157
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->ordinal()I

    move-result p1

    if-ne p6, p1, :cond_2

    .line 159
    :cond_0
    iput p6, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->sosServiceTypeCaught:I

    .line 160
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mActivity:Landroid/app/Activity;

    sget-object p2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->ordinal()I

    move-result p2

    if-ne p6, p2, :cond_1

    const p2, 0x7f110c53

    goto :goto_0

    :cond_1
    const p2, 0x7f110c4d

    :goto_0
    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/16 p4, 0xf

    .line 162
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v0

    .line 160
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mMainMessage:Ljava/lang/String;

    return-void

    .line 158
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SosServiceTypeCaught is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)Landroid/widget/LinearLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->header:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)Landroid/widget/ImageView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->icon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)Landroid/app/Activity;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private cacheData(Landroid/content/SharedPreferences;Lcom/texa/careapp/model/EmergencyInfo;)V
    .locals 1

    .line 448
    sget-object v0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 449
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "emergency-info-cache-key"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private finalStep()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 202
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->resetVolume()V

    return-void
.end method

.method static synthetic lambda$updateLocation$5(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "exception while getting location update"

    .line 213
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$updateLocation$6()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "location update completed"

    .line 213
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private notifyAddEmergencyError()V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCountdownMessage:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f11005d

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 379
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCancelButton:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f110080

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 380
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->setTextStyle()V

    return-void
.end method

.method private notifyAddEmergencySuccess()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private scheduleBackgroundSync(Lcom/texa/careapp/model/EmergencyInfo;)V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->cacheData(Landroid/content/SharedPreferences;Lcom/texa/careapp/model/EmergencyInfo;)V

    .line 438
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCaReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {p1}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleEmergencyInfoJob()V

    return-void
.end method

.method private scheduleMessageSending(Lcom/texa/careapp/model/EmergencyInfo;)V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->cacheData(Landroid/content/SharedPreferences;Lcom/texa/careapp/model/EmergencyInfo;)V

    .line 443
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCaReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {p1}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleEmergencyMessageJob()V

    return-void
.end method

.method private setMaxVolume()V
    .locals 5

    const/4 v0, 0x0

    .line 403
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mActivity:Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->audioManager:Landroid/media/AudioManager;

    .line 404
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iput v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->currentRingerMode:I

    .line 405
    iget-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 406
    iget-object v3, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iput v3, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->volume:I

    .line 407
    iget-object v3, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->audioManager:Landroid/media/AudioManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 408
    iget-object v3, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "SetMaxVolume() exception"

    .line 410
    invoke-static {v1, v2, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private updateLocation()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "starting location tracking"

    .line 207
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->reactiveLocationProvider:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    invoke-static {}, Lcom/texa/careapp/utils/Utils;->buildLocationRequestForEmergency()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->getUpdatedLocation(Lcom/google/android/gms/location/LocationRequest;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    .line 209
    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)V

    sget-object v2, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda1;

    sget-object v3, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda6;->INSTANCE:Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda6;

    .line 210
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->locationSub:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public clickOnCallNow()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCancelButton:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCountdownTimer:Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;

    invoke-virtual {v0}, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->cancel()V

    .line 224
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->notifyContactInProgress()V

    .line 225
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->invokeServerApi()Lcom/texa/careapp/model/EmergencyInfo;

    return-void
.end method

.method public clickOnCancelButton()V
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCancelButton:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f110080

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mRequestTicket:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mDisposableHashMap:Ljava/util/HashMap;

    const-string v1, "DELETE_EMERGENCY_DISPOSABLE_KEY"

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->safeDispose(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mDisposableHashMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    iget-object v3, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mRequestTicket:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->deleteEmergency(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v2

    .line 178
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    .line 179
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda9;-><init>(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)V

    new-instance v4, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda11;-><init>(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)V

    .line 180
    invoke-virtual {v2, v3, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    .line 177
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCountdownTimer:Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;

    invoke-virtual {v0}, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->cancel()V

    .line 192
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->USER_INTERATION:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    sget-object v3, Lcom/texa/careapp/model/ServerLogModel$LogNote;->SOS_COUNTDOWN_STOPPED:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    .line 196
    :cond_1
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->finalStep()V

    return-void
.end method

.method destroySub()V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->emergencySub:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 433
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->locationSub:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method invokeServerApi()Lcom/texa/careapp/model/EmergencyInfo;
    .locals 6

    .line 314
    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    .line 315
    iget-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCurrentLocation:Landroid/location/Location;

    if-nez v1, :cond_0

    .line 316
    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->FAILED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->SOS_LOCATION_ACQUISITION:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    .line 321
    iget v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mImpactType:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    const/4 v1, 0x3

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v0

    iget-object v2, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCurrentLocation:Landroid/location/Location;

    invoke-static {v0, v2, v1}, Lcom/texa/careapp/utils/Utils;->buildEmergencyData(Lcom/texa/careapp/model/UserModel;Landroid/location/Location;I)Lcom/texa/careapp/model/EmergencyInfo;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mImpactDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/EmergencyInfo;->setEventTimestamp(Ljava/util/Date;)V

    .line 330
    iget v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->sosServiceTypeCaught:I

    sget-object v2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    invoke-virtual {v2}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 331
    iget-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v1, v0}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->addEmergency(Lcom/texa/careapp/model/EmergencyInfo;)Lio/reactivex/Observable;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "SOS CALL API"

    .line 332
    invoke-static {v3, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 334
    :cond_2
    iget-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/model/UserModel;->getSosLightContacts()Ljava/util/List;

    move-result-object v1

    .line 335
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 337
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 338
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/careapp/model/ContactModel;

    invoke-virtual {v5}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 340
    :cond_3
    invoke-virtual {v0, v2}, Lcom/texa/careapp/model/EmergencyInfo;->addContacts([Ljava/lang/String;)Ljava/util/List;

    .line 341
    iget-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v1, v0}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->addEmergencyMessages(Lcom/texa/careapp/model/EmergencyInfo;)Lio/reactivex/Observable;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "SOS_LIGHT CALL API"

    .line 342
    invoke-static {v3, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const-wide/16 v2, 0x3

    .line 345
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    .line 346
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 347
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda8;-><init>(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)V

    new-instance v3, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda12;-><init>(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Lcom/texa/careapp/model/EmergencyInfo;)V

    new-instance v4, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)V

    .line 348
    invoke-virtual {v1, v2, v3, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    iput-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->emergencySub:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public synthetic lambda$clickOnCancelButton$2$com-texa-careapp-app-sos-AutomaticSosPresenter(Lcom/texa/careapp/networking/response/ServerResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SOS request cancelled - ticket ID: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mRequestTicket:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 182
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->UNDEFINED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    invoke-virtual {v0, v1, v2, p1}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    return-void
.end method

.method public synthetic lambda$clickOnCancelButton$3$com-texa-careapp-app-sos-AutomaticSosPresenter(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "deleteEmergency error"

    .line 185
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SOS request cancel failed - ticket ID: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mRequestTicket:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 187
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->UNDEFINED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->FAILED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    invoke-virtual {v0, v1, v2, p1}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    return-void
.end method

.method public synthetic lambda$invokeServerApi$10$com-texa-careapp-app-sos-AutomaticSosPresenter()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 363
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->notifyAddEmergencySuccess()V

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SOS request sent - ticket ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mRequestTicket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->UNDEFINED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v3, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    invoke-virtual {v1, v2, v3, v0}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    .line 368
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mDisposableHashMap:Ljava/util/HashMap;

    const-string v1, "STOP_SOS_PRESENTER_DISPOSABLE_KEY"

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->safeDispose(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mDisposableHashMap:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5, v3}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda10;-><init>(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)V

    .line 370
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    .line 369
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic lambda$invokeServerApi$7$com-texa-careapp-app-sos-AutomaticSosPresenter(Lcom/texa/careapp/networking/response/AddEmergencyResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 349
    iget-object p1, p1, Lcom/texa/careapp/networking/response/AddEmergencyResponse;->requestTicket:Ljava/lang/String;

    iput-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mRequestTicket:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "requestTicket=%s"

    .line 350
    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$invokeServerApi$8$com-texa-careapp-app-sos-AutomaticSosPresenter(Lcom/texa/careapp/model/EmergencyInfo;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "addEmergency exception"

    .line 352
    invoke-static {p2, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    iget-object p2, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 354
    iget p2, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->sosServiceTypeCaught:I

    sget-object v0, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    invoke-virtual {v0}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 355
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->scheduleBackgroundSync(Lcom/texa/careapp/model/EmergencyInfo;)V

    goto :goto_0

    .line 356
    :cond_0
    iget p2, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->sosServiceTypeCaught:I

    sget-object v0, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    invoke-virtual {v0}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 357
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->scheduleMessageSending(Lcom/texa/careapp/model/EmergencyInfo;)V

    .line 360
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object p2, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->UNDEFINED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->FAILED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$LogNote;->SOS_CALL_TICKET_FAILED:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    return-void
.end method

.method public synthetic lambda$invokeServerApi$9$com-texa-careapp-app-sos-AutomaticSosPresenter(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 370
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->finalStep()V

    return-void
.end method

.method public synthetic lambda$new$0$com-texa-careapp-app-sos-AutomaticSosPresenter(Landroid/view/View;)V
    .locals 0

    .line 136
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->clickOnCancelButton()V

    return-void
.end method

.method public synthetic lambda$new$1$com-texa-careapp-app-sos-AutomaticSosPresenter(Landroid/view/View;)V
    .locals 0

    .line 138
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->clickOnCallNow()V

    return-void
.end method

.method public synthetic lambda$notifyAddEmergencySuccess$11$com-texa-careapp-app-sos-AutomaticSosPresenter()V
    .locals 3

    .line 385
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->background:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0600d4

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 387
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 388
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCancelButton:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->iconComplete:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCountdownMessage:Landroidx/appcompat/widget/AppCompatTextView;

    iget v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->sosServiceTypeCaught:I

    sget-object v2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    invoke-virtual {v2}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    const v1, 0x7f110c52

    goto :goto_0

    :cond_0
    const v1, 0x7f110c4c

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 392
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->setTextStyle()V

    return-void
.end method

.method public synthetic lambda$updateLocation$4$com-texa-careapp-app-sos-AutomaticSosPresenter(Landroid/location/Location;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCurrentLocation:Landroid/location/Location;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "received new location: %s"

    .line 212
    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method notifyContactInProgress()V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mRequestNow:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCountdownMessage:Landroidx/appcompat/widget/AppCompatTextView;

    iget v2, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->sosServiceTypeCaught:I

    sget-object v3, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    invoke-virtual {v3}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    const v2, 0x7f110c55

    goto :goto_0

    :cond_0
    const v2, 0x7f110c4f

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 280
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->setTextStyle()V

    .line 281
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->startAnimate()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCountdownTimer:Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;

    invoke-virtual {v0}, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->cancel()V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/sos/countdown/CountdownFinishedEvent;)Lcom/texa/careapp/model/EmergencyInfo;
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 260
    iget-boolean p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->isCountdownFinished:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "CountdownFinishedEvent already arrived!"

    .line 261
    invoke-static {v0, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 265
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCountdownView:Lcom/texa/careapp/views/CircleDisplay;

    const/4 v1, 0x0

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {p1, v1, v2, v0}, Lcom/texa/careapp/views/CircleDisplay;->showValue(FFZ)V

    .line 266
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCancelButton:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 268
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->notifyContactInProgress()V

    .line 269
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->invokeServerApi()Lcom/texa/careapp/model/EmergencyInfo;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CountdownFinishedEvent arrived!"

    .line 270
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 271
    iput-boolean v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->isCountdownFinished:Z

    return-object p1
.end method

.method public onEvent(Lcom/texa/careapp/app/sos/countdown/CountdownUpdateEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCountdownView:Lcom/texa/careapp/views/CircleDisplay;

    invoke-virtual {p1}, Lcom/texa/careapp/app/sos/countdown/CountdownUpdateEvent;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    const/high16 v1, 0x41700000    # 15.0f

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/texa/careapp/views/CircleDisplay;->showValue(FFZ)V

    .line 248
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v0, 0x2ee

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 249
    sget-boolean p1, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->PLAY_ALARM:Z

    if-eqz p1, :cond_0

    .line 251
    :try_start_0
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->alarmSound:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->alarmSound:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->alarmSound:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    return-void
.end method

.method resetVolume()V
    .locals 4

    const/4 v0, 0x0

    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mActivity:Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    .line 417
    iget v3, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->volume:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 418
    iget-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->audioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->currentRingerMode:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 419
    iget-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->alarmSound:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "ResetVolume() exception"

    .line 421
    invoke-static {v1, v2, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method setTextStyle()V
    .locals 3

    .line 397
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCountdownMessage:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f090000

    invoke-static {v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 398
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCountdownMessage:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(F)V

    return-void
.end method

.method protected showContactsScreen()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/texa/careapp/app/MainActivity;->buildIntentForContactScreen(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCountdownView:Lcom/texa/careapp/views/CircleDisplay;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/CircleDisplay;->setColor(I)V

    .line 230
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCountdownView:Lcom/texa/careapp/views/CircleDisplay;

    iget v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCircleColor:I

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/CircleDisplay;->setWholeCircleColor(I)V

    .line 231
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCountdownTimer:Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;

    invoke-virtual {v0}, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->reset()V

    .line 232
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCountdownTimer:Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;

    invoke-virtual {v0}, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->start()Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;

    .line 233
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCountdownMessage:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mMainMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->updateLocation()V

    return-void
.end method

.method startAnimate()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->header:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 287
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->header:Landroid/widget/LinearLayout;

    .line 288
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$1;-><init>(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)V

    .line 289
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public stop()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCountdownTimer:Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;

    invoke-virtual {v0}, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->cancel()V

    return-void
.end method
