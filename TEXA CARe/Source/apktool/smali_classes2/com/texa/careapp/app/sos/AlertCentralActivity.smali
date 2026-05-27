.class public Lcom/texa/careapp/app/sos/AlertCentralActivity;
.super Lcom/texa/careapp/base/GooglePlayServicesActivity;
.source "AlertCentralActivity.java"


# static fields
.field private static final COUNTDOWN_SECONDS:I

.field public static blockEmergencyCall:Z

.field private static sGson:Lcom/google/gson/Gson;


# instance fields
.field private background:Landroid/widget/RelativeLayout;

.field private emergencySub:Lio/reactivex/disposables/Disposable;

.field private header:Landroid/widget/LinearLayout;

.field private icon:Landroid/widget/ImageView;

.field private iconComplete:Landroid/widget/ImageView;

.field private isCountdownFinished:Z

.field protected mCaReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCancelButton:Landroidx/appcompat/widget/AppCompatTextView;

.field private mCountdownTimer:Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;

.field private mCountdownView:Lcom/texa/careapp/views/CircleDisplay;

.field private mCurrentLocation:Landroid/location/Location;

.field private final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mFlavourDelegator:Lcom/texa/careapp/FlavorDelegator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mLocationProvider:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mProfile:Lcom/texa/carelib/profile/Profile;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mRequestTicket:Ljava/lang/String;

.field protected mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mTitle:Landroid/widget/TextView;

.field protected mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mVibrator:Landroid/os/Vibrator;

.field private sosServiceTypeCaught:I

.field private textViewMessage:Landroidx/appcompat/widget/AppCompatTextView;

.field private updateLocationDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public static synthetic $r8$lambda$Mf6NIhPJIZvEqe1cSIWgV7DSVnM(Lcom/texa/careapp/app/sos/AlertCentralActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->notifyAddEmergencyError()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 74
    sget-object v0, Lcom/texa/careapp/BuildConfig;->TIMEOUT_MANUAL_SOS_REQUEST:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->COUNTDOWN_SECONDS:I

    const/4 v0, 0x0

    .line 75
    sput-boolean v0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->blockEmergencyCall:Z

    .line 391
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->buildGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->sGson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/texa/careapp/base/GooglePlayServicesActivity;-><init>()V

    .line 115
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/sos/AlertCentralActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->header:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/sos/AlertCentralActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->icon:Landroid/widget/ImageView;

    return-object p0
.end method

.method private static addImpactSosServiceTypeExtra(ILandroid/content/Intent;)V
    .locals 1

    const-string v0, "impact-sos-service-type"

    .line 128
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public static buildIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/sos/AlertCentralActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 120
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->addImpactSosServiceTypeExtra(ILandroid/content/Intent;)V

    return-object v0
.end method

.method private cacheData(Landroid/content/SharedPreferences;Lcom/texa/careapp/model/EmergencyInfo;)V
    .locals 1

    .line 394
    sget-object v0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 395
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "emergency-info-cache-key"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private notifyAddEmergencyError()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->textViewMessage:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f11005d

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 400
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mCancelButton:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f110080

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 401
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->setTextStyle()V

    return-void
.end method

.method private notifyAddEmergencySuccess()V
    .locals 1

    .line 405
    new-instance v0, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda10;-><init>(Lcom/texa/careapp/app/sos/AlertCentralActivity;)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private scheduleBackgroundSync(Lcom/texa/careapp/model/EmergencyInfo;)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->cacheData(Landroid/content/SharedPreferences;Lcom/texa/careapp/model/EmergencyInfo;)V

    .line 388
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mCaReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {p1}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleEmergencyInfoJob()V

    return-void
.end method

.method private setTextStyle()V
    .locals 3

    .line 419
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->textViewMessage:Landroidx/appcompat/widget/AppCompatTextView;

    const/high16 v1, 0x7f090000

    invoke-static {p0, v1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 420
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->textViewMessage:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public cancelAlert(Landroid/view/View;)V
    .locals 3

    .line 229
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mCancelButton:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f110080

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mCountdownTimer:Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;

    invoke-virtual {p1}, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->cancel()V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "SOS COUNTDOWN manually stopped"

    .line 232
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->USER_INTERATION:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$LogNote;->SOS_COUNTDOWN_STOPPED:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    .line 236
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mRequestTicket:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v1, p1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->deleteEmergency(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 238
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 239
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/sos/AlertCentralActivity;)V

    new-instance v2, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/sos/AlertCentralActivity;)V

    .line 240
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 237
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->finish()V

    return-void
.end method

.method protected invokeServerApi()Lcom/texa/careapp/model/EmergencyInfo;
    .locals 6

    .line 330
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mCurrentLocation:Landroid/location/Location;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/texa/careapp/utils/Utils;->buildEmergencyData(Lcom/texa/careapp/model/UserModel;Landroid/location/Location;I)Lcom/texa/careapp/model/EmergencyInfo;

    move-result-object v0

    .line 334
    sget-boolean v1, Lcom/texa/careapp/app/sos/AlertCentralActivity;->blockEmergencyCall:Z

    if-eqz v1, :cond_0

    return-object v0

    .line 338
    :cond_0
    iget v1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->sosServiceTypeCaught:I

    sget-object v2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    invoke-virtual {v2}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 339
    iget-object v1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v1, v0}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->addEmergency(Lcom/texa/careapp/model/EmergencyInfo;)Lio/reactivex/Observable;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "SOS CALL API"

    .line 340
    invoke-static {v3, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/model/UserModel;->getSosLightContacts()Ljava/util/List;

    move-result-object v1

    .line 344
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 346
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 347
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/careapp/model/ContactModel;

    invoke-virtual {v5}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 349
    :cond_2
    invoke-virtual {v0, v2}, Lcom/texa/careapp/model/EmergencyInfo;->addContacts([Ljava/lang/String;)Ljava/util/List;

    .line 350
    iget-object v1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v1, v0}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->addEmergencyMessages(Lcom/texa/careapp/model/EmergencyInfo;)Lio/reactivex/Observable;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "SOS_LIGHT CALL API"

    .line 351
    invoke-static {v3, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const-wide/16 v2, 0x3

    .line 354
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 355
    invoke-virtual {v1, v2, v3, v4}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    .line 356
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 357
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/sos/AlertCentralActivity;)V

    new-instance v3, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda9;-><init>(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lcom/texa/careapp/model/EmergencyInfo;)V

    new-instance v4, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/sos/AlertCentralActivity;)V

    .line 358
    invoke-virtual {v1, v2, v3, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    iput-object v1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->emergencySub:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public synthetic lambda$cancelAlert$2$com-texa-careapp-app-sos-AlertCentralActivity(Lcom/texa/careapp/networking/response/ServerResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SOS request cancelled - ticket ID: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mRequestTicket:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 242
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->UNDEFINED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    invoke-virtual {v0, v1, v2, p1}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    return-void
.end method

.method public synthetic lambda$cancelAlert$3$com-texa-careapp-app-sos-AlertCentralActivity(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "deleteEmergency error"

    .line 245
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SOS request cancel failed - ticket ID: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mRequestTicket:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 247
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->UNDEFINED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->FAILED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    invoke-virtual {v0, v1, v2, p1}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    return-void
.end method

.method public synthetic lambda$invokeServerApi$4$com-texa-careapp-app-sos-AlertCentralActivity(Lcom/texa/careapp/networking/response/AddEmergencyResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 359
    iget-object p1, p1, Lcom/texa/careapp/networking/response/AddEmergencyResponse;->requestTicket:Ljava/lang/String;

    iput-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mRequestTicket:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "requestTicket= %s"

    .line 360
    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$invokeServerApi$5$com-texa-careapp-app-sos-AlertCentralActivity(Lcom/texa/careapp/model/EmergencyInfo;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "addEmergency exception"

    .line 362
    invoke-static {p2, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    new-instance p2, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/sos/AlertCentralActivity;)V

    invoke-virtual {p0, p2}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 364
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->scheduleBackgroundSync(Lcom/texa/careapp/model/EmergencyInfo;)V

    .line 365
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object p2, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->UNDEFINED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->FAILED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$LogNote;->SOS_CALL_TICKET_FAILED:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    return-void
.end method

.method public synthetic lambda$invokeServerApi$6$com-texa-careapp-app-sos-AlertCentralActivity(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 373
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$invokeServerApi$7$com-texa-careapp-app-sos-AlertCentralActivity()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 368
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->notifyAddEmergencySuccess()V

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SOS request sent - ticket ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mRequestTicket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->UNDEFINED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v3, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    invoke-virtual {v1, v2, v3, v0}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    .line 372
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v1, v3, v4, v2}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda8;-><init>(Lcom/texa/careapp/app/sos/AlertCentralActivity;)V

    .line 373
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 372
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public synthetic lambda$notifyAddEmergencySuccess$8$com-texa-careapp-app-sos-AlertCentralActivity()V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->background:Landroid/widget/RelativeLayout;

    const v1, 0x7f0600d4

    invoke-static {p0, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 408
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 409
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mCancelButton:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->iconComplete:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->textViewMessage:Landroidx/appcompat/widget/AppCompatTextView;

    iget v1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->sosServiceTypeCaught:I

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

    .line 413
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->setTextStyle()V

    return-void
.end method

.method public synthetic lambda$startTracking$0$com-texa-careapp-app-sos-AlertCentralActivity(Landroid/location/Location;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mCurrentLocation:Landroid/location/Location;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "received new location: %s"

    .line 220
    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$startTracking$1$com-texa-careapp-app-sos-AlertCentralActivity(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "exception while getting location update"

    .line 222
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->SOS_LOCATION_ACQUISITION:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->FAILED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    .line 224
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-virtual {v0, v1, v2, p1}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    return-void
.end method

.method protected notifyContactInProgress()V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->textViewMessage:Landroidx/appcompat/widget/AppCompatTextView;

    iget v1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->sosServiceTypeCaught:I

    sget-object v2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    invoke-virtual {v2}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    const v1, 0x7f110c55

    goto :goto_0

    :cond_0
    const v1, 0x7f110c4f

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 300
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->setTextStyle()V

    .line 301
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->icon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->header:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 303
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->header:Landroid/widget/LinearLayout;

    .line 304
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/sos/AlertCentralActivity$1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity$1;-><init>(Lcom/texa/careapp/app/sos/AlertCentralActivity;)V

    .line 305
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 133
    invoke-super {p0, p1}, Lcom/texa/careapp/base/GooglePlayServicesActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0047

    .line 134
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/AlertCentralBinding;

    .line 135
    iget-object v0, p1, Lcom/texa/careapp/databinding/AlertCentralBinding;->alertMessage:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->textViewMessage:Landroidx/appcompat/widget/AppCompatTextView;

    .line 136
    iget-object v0, p1, Lcom/texa/careapp/databinding/AlertCentralBinding;->alertCentralIcon:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->icon:Landroid/widget/ImageView;

    .line 137
    iget-object v0, p1, Lcom/texa/careapp/databinding/AlertCentralBinding;->alertCentralCountDownView:Lcom/texa/careapp/views/CircleDisplay;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mCountdownView:Lcom/texa/careapp/views/CircleDisplay;

    .line 138
    iget-object v0, p1, Lcom/texa/careapp/databinding/AlertCentralBinding;->alertCentralCancelRequest:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mCancelButton:Landroidx/appcompat/widget/AppCompatTextView;

    .line 139
    new-instance v1, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/sos/AlertCentralActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p1, Lcom/texa/careapp/databinding/AlertCentralBinding;->alertCentralHeader:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->header:Landroid/widget/LinearLayout;

    .line 141
    iget-object v0, p1, Lcom/texa/careapp/databinding/AlertCentralBinding;->alertCentralBackground:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->background:Landroid/widget/RelativeLayout;

    .line 142
    iget-object v0, p1, Lcom/texa/careapp/databinding/AlertCentralBinding;->alertCentralIconComplete:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->iconComplete:Landroid/widget/ImageView;

    .line 143
    iget-object p1, p1, Lcom/texa/careapp/databinding/AlertCentralBinding;->alertCentralTitle:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mTitle:Landroid/widget/TextView;

    .line 145
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "impact-sos-service-type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->sosServiceTypeCaught:I

    if-eq p1, v1, :cond_1

    .line 146
    sget-object v0, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    .line 147
    invoke-virtual {v0}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->sosServiceTypeCaught:I

    sget-object v0, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    .line 148
    invoke-virtual {v0}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    .line 152
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/sos/AlertCentralActivity;)V

    return-void

    .line 149
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SosServiceTypeCaught is invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 381
    invoke-super {p0}, Lcom/texa/careapp/base/GooglePlayServicesActivity;->onDestroy()V

    .line 382
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->emergencySub:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 383
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/sos/countdown/CountdownFinishedEvent;)Lcom/texa/careapp/model/EmergencyInfo;
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 263
    iget-boolean p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->isCountdownFinished:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "CountdownFinishedEvent already arrived!"

    .line 264
    invoke-static {v0, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 268
    :cond_0
    sget-object p1, Lcom/texa/careapp/BuildConfig;->TIMEOUT_MANUAL_SOS_REQUEST:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->setValueOnCircleDisplay(IIZ)V

    .line 270
    sget-object p1, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    .line 271
    iget-object v1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mCurrentLocation:Landroid/location/Location;

    if-nez v1, :cond_1

    .line 272
    sget-object p1, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->FAILED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    .line 274
    :cond_1
    iget-object v1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->SOS_LOCATION_ACQUISITION:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    const-string v3, ""

    invoke-virtual {v1, v2, p1, v3}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    .line 276
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->invokeServerApi()Lcom/texa/careapp/model/EmergencyInfo;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CountdownFinishedEvent arrived!"

    .line 277
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->isCountdownFinished:Z

    return-object p1
.end method

.method public onEvent(Lcom/texa/careapp/app/sos/countdown/CountdownUpdateEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 257
    invoke-virtual {p1}, Lcom/texa/careapp/app/sos/countdown/CountdownUpdateEvent;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sget-object v2, Lcom/texa/careapp/BuildConfig;->TIMEOUT_MANUAL_SOS_REQUEST:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->setValueOnCircleDisplay(IIZ)V

    new-array v0, v1, [Ljava/lang/Object;

    .line 258
    invoke-virtual {p1}, Lcom/texa/careapp/app/sos/countdown/CountdownUpdateEvent;->getCount()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "CountdownUpdateEvent() TIMEOUT %s"

    invoke-static {p1, v0}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 157
    invoke-super {p0}, Lcom/texa/careapp/base/GooglePlayServicesActivity;->onPause()V

    .line 158
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->updateLocationDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 163
    invoke-super {p0}, Lcom/texa/careapp/base/GooglePlayServicesActivity;->onResume()V

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->isCountdownFinished:Z

    .line 167
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->start()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 175
    invoke-super {p0}, Lcom/texa/careapp/base/GooglePlayServicesActivity;->onStop()V

    .line 177
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mCountdownTimer:Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;

    invoke-virtual {v0}, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->cancel()V

    .line 178
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public setValueOnCircleDisplay(IIZ)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mCountdownView:Lcom/texa/careapp/views/CircleDisplay;

    int-to-float v1, p1

    int-to-float p2, p2

    invoke-virtual {v0, v1, p2, p3}, Lcom/texa/careapp/views/CircleDisplay;->showValue(FFZ)V

    if-nez p1, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->notifyContactInProgress()V

    goto :goto_0

    .line 289
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 p2, 0x2ee

    invoke-virtual {p1, p2, p3}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 6

    const-string/jumbo v0, "vibrator"

    .line 182
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mVibrator:Landroid/os/Vibrator;

    .line 184
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mCountdownView:Lcom/texa/careapp/views/CircleDisplay;

    sget v1, Lcom/texa/careapp/app/sos/AlertCentralActivity;->COUNTDOWN_SECONDS:I

    int-to-float v2, v1

    int-to-float v3, v1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/texa/careapp/views/CircleDisplay;->showValue(FFZ)V

    .line 185
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mCountdownView:Lcom/texa/careapp/views/CircleDisplay;

    invoke-virtual {v0, v4}, Lcom/texa/careapp/views/CircleDisplay;->setFormatDigits(I)V

    .line 186
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mCountdownView:Lcom/texa/careapp/views/CircleDisplay;

    invoke-virtual {v0, v4}, Lcom/texa/careapp/views/CircleDisplay;->setTouchEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mCountdownView:Lcom/texa/careapp/views/CircleDisplay;

    const/high16 v2, 0x42960000    # 75.0f

    invoke-virtual {v0, v2}, Lcom/texa/careapp/views/CircleDisplay;->setTextSize(F)V

    .line 188
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mCountdownView:Lcom/texa/careapp/views/CircleDisplay;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/texa/careapp/views/CircleDisplay;->setUnit(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mCountdownView:Lcom/texa/careapp/views/CircleDisplay;

    const/high16 v3, -0x10000

    invoke-virtual {v0, v3}, Lcom/texa/careapp/views/CircleDisplay;->setColor(I)V

    .line 191
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mCountdownView:Lcom/texa/careapp/views/CircleDisplay;

    const v3, -0x333334

    invoke-virtual {v0, v3}, Lcom/texa/careapp/views/CircleDisplay;->setWholeCircleColor(I)V

    .line 193
    new-instance v0, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;-><init>(I)V

    iput-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mCountdownTimer:Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;

    .line 195
    invoke-virtual {v0}, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->reset()V

    .line 196
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mCountdownTimer:Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;

    invoke-virtual {v0}, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;->start()Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;

    .line 198
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v3, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->MANUAL_SOS:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v5, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    invoke-virtual {v0, v3, v5, v2}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    .line 200
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mTitle:Landroid/widget/TextView;

    iget v2, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->sosServiceTypeCaught:I

    sget-object v3, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    invoke-virtual {v3}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    const v2, 0x7f110c50

    goto :goto_0

    :cond_0
    const v2, 0x7f110c7f

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 203
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->textViewMessage:Landroidx/appcompat/widget/AppCompatTextView;

    .line 204
    iget v2, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->sosServiceTypeCaught:I

    sget-object v3, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    invoke-virtual {v3}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_1

    const v2, 0x7f110c53

    goto :goto_1

    :cond_1
    const v2, 0x7f110c4d

    .line 203
    :goto_1
    invoke-virtual {p0, v2}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 206
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    .line 203
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->startTracking()V

    return-void
.end method

.method public startTracking()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "starting location tracking"

    .line 214
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->updateLocationDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 216
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mLocationProvider:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    invoke-static {}, Lcom/texa/careapp/utils/Utils;->buildLocationRequestForEmergency()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->getUpdatedLocation(Lcom/google/android/gms/location/LocationRequest;)Lio/reactivex/Observable;

    move-result-object v0

    sget v1, Lcom/texa/careapp/app/sos/AlertCentralActivity;->COUNTDOWN_SECONDS:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 217
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/sos/AlertCentralActivity;)V

    new-instance v2, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/app/sos/AlertCentralActivity;)V

    .line 218
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->updateLocationDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
