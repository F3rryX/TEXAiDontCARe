.class public Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;
.super Ljava/lang/Object;
.source "SosFeatureDefaultManager.java"

# interfaces
.implements Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$UpdateButton;
    }
.end annotation


# instance fields
.field private buttonObservableDisposable:Lio/reactivex/disposables/Disposable;

.field private mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;

.field private final mContext:Landroid/content/Context;

.field private mCrashLogReader:Lcom/texa/careapp/utils/CrashLogReader;

.field private final mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

.field private mEventBus:Lorg/greenrobot/eventbus/EventBus;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mImpactDetection:Lcom/texa/carelib/care/impacts/ImpactDetection;

.field private mImpactDetectionListener:Lcom/texa/carelib/care/impacts/ImpactDetectionListener;

.field private final mImpactDetector:Lcom/texa/careapp/impactdetection/ImpactDetector;

.field private mImpactDetectorListener:Lcom/texa/careapp/impactdetection/ImpactDetectorListener;

.field private mLastImpactDetected:Ljava/lang/Long;

.field private mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private final mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

.field private final mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

.field private sosButtonIsEnable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sosService:Lcom/texa/careapp/model/ServiceDataModel;


# direct methods
.method public static synthetic $r8$lambda$MhKPpfzlWI91NqxCepSilv7ae5g(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;[Ljava/lang/Object;)Lcom/texa/careapp/checks/Check$Result;
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->checksResult([Ljava/lang/Object;)Lcom/texa/careapp/checks/Check$Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kNDqBtpoA17RwFCuS_PhqZInS5U(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;Lcom/texa/careapp/networking/response/ServiceListResponse;)Lio/reactivex/Observable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->persistData(Lcom/texa/careapp/networking/response/ServiceListResponse;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/texa/careapp/networking/TexaCareApiServiceUser;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/checks/ChecksFactory;Lcom/texa/careapp/remotelogger/LoggerManager;Lcom/texa/carelib/care/impacts/ImpactDetection;Lcom/texa/careapp/impactdetection/ImpactDetector;Landroid/content/SharedPreferences;Lcom/texa/careapp/utils/ServiceDataManager;Lorg/greenrobot/eventbus/EventBus;Lcom/texa/careapp/utils/CrashLogReader;)V
    .locals 2

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$1;-><init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;)V

    iput-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mImpactDetectionListener:Lcom/texa/carelib/care/impacts/ImpactDetectionListener;

    .line 92
    new-instance v0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;)V

    iput-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mImpactDetectorListener:Lcom/texa/careapp/impactdetection/ImpactDetectorListener;

    const-wide/16 v0, -0x1

    .line 94
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mLastImpactDetected:Ljava/lang/Long;

    .line 249
    iput-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mContext:Landroid/content/Context;

    .line 251
    iput-object p3, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 252
    iput-object p9, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    .line 253
    iput-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    .line 254
    iput-object p4, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;

    .line 255
    iput-object p5, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    .line 256
    iput-object p8, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 258
    iput-object p6, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mImpactDetection:Lcom/texa/carelib/care/impacts/ImpactDetection;

    .line 259
    iput-object p7, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mImpactDetector:Lcom/texa/careapp/impactdetection/ImpactDetector;

    .line 261
    iput-object p10, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 262
    iput-object p11, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mCrashLogReader:Lcom/texa/careapp/utils/CrashLogReader;

    .line 264
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->initResources(Landroid/content/Context;)V

    return-void
.end method

.method private canStartSosCall(ILcom/texa/careapp/model/ServiceDataModel;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 183
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "logEvent is null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "Log event could not be null!!"

    invoke-static {p1, v1, p2}, Ltimber/log/Timber;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 187
    :cond_0
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->generateLogEvent(I)Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    move-result-object p1

    .line 190
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->isMultiCrashDetection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    iget-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->FAILED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$LogNote;->OTHER_CRASH_DETECTED:Ljava/lang/String;

    invoke-virtual {p2, p1, v1, v2}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    return v0

    :cond_1
    if-nez p2, :cond_2

    .line 196
    iget-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->FAILED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$LogNote;->CRASH_DETECTED_WITHOUT_PURCHASED_SERVICE:Ljava/lang/String;

    invoke-virtual {p2, p1, v1, v2}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    return v0

    .line 200
    :cond_2
    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v1

    sget-object v2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne v1, v2, :cond_3

    .line 201
    invoke-direct {p0, p2, p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->isSosServiceActiveAndAccepted(Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/model/ServerLogModel$LogEvent;)Z

    move-result p1

    return p1

    .line 202
    :cond_3
    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v1

    sget-object v2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne v1, v2, :cond_4

    .line 203
    invoke-direct {p0, p2, p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->isSosServiceActiveAndAccepted(Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/model/ServerLogModel$LogEvent;)Z

    move-result p1

    return p1

    :cond_4
    return v0
.end method

.method private checkServiceAndDongleStatus(Lcom/texa/careapp/checks/Check$Result;Ljava/util/List;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/checks/Check$Result;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->getPurchasedServiceForHwid(Ljava/lang/String;Ljava/util/List;)Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object p2

    .line 407
    iput-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->sosService:Lcom/texa/careapp/model/ServiceDataModel;

    .line 408
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-virtual {v0, p1, p2}, Lcom/texa/careapp/utils/ServiceDataManager;->checkServiceAndDongleStatus(Lcom/texa/careapp/checks/Check$Result;Lcom/texa/careapp/model/ServiceDataModel;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private checksResult([Ljava/lang/Object;)Lcom/texa/careapp/checks/Check$Result;
    .locals 5

    .line 382
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    .line 383
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 384
    check-cast v3, Lcom/texa/careapp/checks/Check$Result;

    .line 385
    sget-object v4, Lcom/texa/careapp/checks/Check$Result;->BLOCKING:Lcom/texa/careapp/checks/Check$Result;

    if-ne v3, v4, :cond_0

    .line 386
    sget-object p1, Lcom/texa/careapp/checks/Check$Result;->BLOCKING:Lcom/texa/careapp/checks/Check$Result;

    return-object p1

    .line 388
    :cond_0
    sget-object v4, Lcom/texa/careapp/checks/Check$Result;->WARNING:Lcom/texa/careapp/checks/Check$Result;

    if-ne v3, v4, :cond_1

    .line 389
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->WARNING:Lcom/texa/careapp/checks/Check$Result;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private createObsWithDBResponse()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 362
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->observeChecksForSosButton()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->sosService:Lcom/texa/careapp/model/ServiceDataModel;

    .line 363
    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    .line 364
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->getIntervalObservable()Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;)V

    .line 361
    invoke-static {v0, v1, v2, v3}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function3;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private createObsWithServerResponse()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 373
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->observeChecksForSosButton()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    .line 374
    invoke-interface {v1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->dongleServices()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 375
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->getIntervalObservable()Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;)V

    .line 372
    invoke-static {v0, v1, v2, v3}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function3;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private expireDataForLastService(Lcom/texa/careapp/model/ServiceDataModel;)Ljava/lang/String;
    .locals 5

    .line 507
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getLastExpirationDate()Ljava/util/Date;

    move-result-object v0

    .line 508
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getLastExpirationForFutureServices()Ljava/util/Date;

    move-result-object p1

    const-string v1, ""

    if-nez p1, :cond_0

    return-object v1

    .line 513
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->createMonthExpiration(Ljava/util/Date;Ljava/util/Date;)I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    return-object v1

    .line 519
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mContext:Landroid/content/Context;

    const v3, 0x7f110a67

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    .line 538
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 539
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_0

    .line 540
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 542
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "y+"

    const-string/jumbo v3, "yyyy"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 543
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 547
    :cond_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateLogEvent(I)Lcom/texa/careapp/model/ServerLogModel$LogEvent;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 241
    sget-object p1, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->IMPACT_DET:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    return-object p1

    .line 242
    :cond_0
    sget-object p1, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->IMPACT_DETECTED_BY_PHONE:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    return-object p1
.end method

.method private getIntervalObservable()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 397
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private getSosService()Lcom/texa/careapp/model/ServiceDataModel;
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "#getSosService() currentDongle is NULL"

    .line 458
    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 462
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    .line 463
    invoke-virtual {v1}, Lcom/texa/careapp/utils/ServiceDataManager;->getSosServices()Ljava/util/List;

    move-result-object v1

    .line 462
    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->getPurchasedServiceForHwid(Ljava/lang/String;Ljava/util/List;)Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->sosService:Lcom/texa/careapp/model/ServiceDataModel;

    return-object v0
.end method

.method private getSosServiceForImpact()Lcom/texa/careapp/model/ServiceDataModel;
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 168
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/ServiceDataManager;->getSosServices()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->getPurchasedServiceForHwid(Ljava/lang/String;Ljava/util/List;)Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object v0

    return-object v0
.end method

.method private isMultiCrashDetection()Z
    .locals 5

    .line 209
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mLastImpactDetected:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 210
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mLastImpactDetected:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x3a98

    .line 212
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    int-to-long v0, v1

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSmartphoneImpactDetectedEnabledFromPrefs()Z
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "ADDITIONAL_PHONE_IMPACT_DETECTION"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isSosServiceActiveAndAccepted(Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/model/ServerLogModel$LogEvent;)Z
    .locals 2

    .line 220
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    const-string v1, ""

    invoke-virtual {p1, p2, v0, v1}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    const/4 p1, 0x1

    return p1

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->FAILED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$LogNote;->CRASH_DETECTED_WITHOUT_ACTIVE_SERVICE:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic lambda$startButtonObserver$1(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "sosButtonIsEnable onError"

    .line 289
    invoke-static {v0, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private observeChecksForSosButton()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/checks/Check$Result;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Lio/reactivex/Observable;

    .line 580
    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;

    .line 581
    invoke-virtual {v1}, Lcom/texa/careapp/checks/ChecksFactory;->newCheckPhoneNumber()Lcom/texa/careapp/checks/Check;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/careapp/checks/Check;->check()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;

    .line 582
    invoke-virtual {v1}, Lcom/texa/careapp/checks/ChecksFactory;->newCheckBluetooth()Lcom/texa/careapp/checks/Check;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/careapp/checks/Check;->check()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;

    .line 583
    invoke-virtual {v1}, Lcom/texa/careapp/checks/ChecksFactory;->newCheckGps()Lcom/texa/careapp/checks/Check;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/careapp/checks/Check;->check()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;

    .line 584
    invoke-virtual {v1}, Lcom/texa/careapp/checks/ChecksFactory;->newCheckCareConnection()Lcom/texa/careapp/checks/Check;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/careapp/checks/Check;->check()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;

    .line 585
    invoke-virtual {v1}, Lcom/texa/careapp/checks/ChecksFactory;->newCheckNetworkConnection()Lcom/texa/careapp/checks/Check;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/careapp/checks/Check;->check()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 580
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 587
    new-instance v1, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;)V

    invoke-static {v0, v1}, Lio/reactivex/Observable;->combineLatest(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private persistData(Lcom/texa/careapp/networking/response/ServiceListResponse;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/networking/response/ServiceListResponse;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;>;"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/ServiceDataManager;->saveServiceData(Lcom/texa/careapp/networking/response/ServiceListResponse;)Ljava/util/List;

    move-result-object p1

    .line 402
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private setButtonDefault()V
    .locals 5

    .line 278
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$UpdateButton;

    iget-object v2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    sget-object v3, Lcom/texa/careapp/checks/Check$Result;->BLOCKING:Lcom/texa/careapp/checks/Check$Result;

    iget-object v4, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->sosService:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v2, v3, v4}, Lcom/texa/careapp/utils/ServiceDataManager;->checkServiceAndDongleStatus(Lcom/texa/careapp/checks/Check$Result;Lcom/texa/careapp/model/ServiceDataModel;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$UpdateButton;-><init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected createImpactReportDump(Lcom/texa/careapp/impactdetection/ImpactEvent;)Ljava/lang/String;
    .locals 2

    .line 648
    new-instance v0, Lcom/texa/careapp/impactdetection/ImpactReportCreator;

    invoke-direct {v0}, Lcom/texa/careapp/impactdetection/ImpactReportCreator;-><init>()V

    .line 650
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/impactdetection/ImpactReportCreator;->create(Landroid/content/Context;Lcom/texa/careapp/impactdetection/ImpactEvent;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Could not generate impact report."

    .line 652
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, ""

    return-object p1
.end method

.method createMonthExpiration(Ljava/util/Date;Ljava/util/Date;)I
    .locals 2

    .line 527
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 528
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 529
    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 530
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p2, 0x1

    .line 532
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr v1, p2

    mul-int/lit8 v1, v1, 0xc

    const/4 p2, 0x2

    .line 534
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    sub-int/2addr v1, p1

    return v1
.end method

.method public createSosButtonObserver()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->sosService:Lcom/texa/careapp/model/ServiceDataModel;

    if-nez v0, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->createObsWithServerResponse()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 354
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->createObsWithDBResponse()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getButtonObservableSubscription()Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->buttonObservableDisposable:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public getCurrentSosService()Lcom/texa/careapp/model/ServiceDataModel;
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->sosService:Lcom/texa/careapp/model/ServiceDataModel;

    return-object v0
.end method

.method protected getPurchasedServiceForHwid(Ljava/lang/String;Ljava/util/List;)Lcom/texa/careapp/model/ServiceDataModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;)",
            "Lcom/texa/careapp/model/ServiceDataModel;"
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    .line 413
    invoke-virtual {v0, p1, p2}, Lcom/texa/careapp/utils/ServiceDataManager;->filterActiveSosServicesForHwId(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 412
    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/ServiceDataManager;->getServicePriority(Ljava/util/List;)Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object p1

    return-object p1
.end method

.method public getSosServiceStatusDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 452
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->getSosService()Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->getSosServiceStatusDescription(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSosServiceStatusDescription(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;)Ljava/lang/String;
    .locals 5

    if-nez p2, :cond_0

    const p2, 0x7f110ca1

    .line 470
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 473
    :cond_0
    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel;->getStatus()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    move-result-object v0

    .line 474
    sget-object v1, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$2;->$SwitchMap$com$texa$careapp$model$ServiceDataModel$DongleServiceStatus:[I

    invoke-virtual {v0}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    const/4 p2, 0x3

    if-eq v1, p2, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v4

    const-string p2, "Service status not expected: %s"

    .line 501
    invoke-static {p2, p1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, ""

    return-object p1

    :cond_1
    const p2, 0x7f110c9a

    .line 498
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 481
    :cond_2
    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel;->isTermsAccepted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 482
    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne v0, v1, :cond_3

    const p2, 0x7f110c00

    .line 483
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 484
    :cond_3
    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne v0, v1, :cond_4

    .line 485
    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel;->isTrial()Z

    move-result v0

    if-nez v0, :cond_4

    const p2, 0x7f110c01

    .line 486
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 489
    :cond_4
    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel;->getLastExpirationDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110c02

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    .line 490
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->expireDataForLastService(Lcom/texa/careapp/model/ServiceDataModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const p2, 0x7f110c9d

    .line 495
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 476
    :cond_6
    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel;->isTrial()Z

    move-result p2

    if-eqz p2, :cond_7

    const p2, 0x7f110c9f

    .line 477
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const p2, 0x7f110c9e

    .line 479
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getSosServiceStatusDescriptionInner(Landroid/content/Context;Lcom/texa/careapp/model/DongleModel;Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 553
    invoke-virtual {p2}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/texa/careapp/model/DongleModel;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->getPurchasedServiceForHwid(Ljava/lang/String;Ljava/util/List;)Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object v0

    if-nez v0, :cond_0

    const p2, 0x7f110ca1

    .line 556
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 559
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/ServiceDataModel;->getStatus()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    move-result-object v1

    .line 561
    sget-object v2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/texa/careapp/model/ServiceDataModel;->isTermsAccepted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 562
    sget-object v0, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    invoke-virtual {p2, v0, p3}, Lcom/texa/careapp/model/DongleModel;->getLastExpirationDateFor(Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p2

    const p3, 0x7f110c02

    if-eqz p2, :cond_1

    .line 564
    invoke-direct {p0, p2}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 565
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 567
    :cond_1
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 572
    :cond_2
    sget-object p2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->PENDING:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    if-ne v1, p2, :cond_3

    const p2, 0x7f110bfd

    .line 573
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const p2, 0x7f110c05

    .line 576
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initData(Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->sosService:Lcom/texa/careapp/model/ServiceDataModel;

    .line 273
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->setButtonDefault()V

    .line 274
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->createSosButtonObserver()Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->sosButtonIsEnable:Lio/reactivex/Observable;

    return-void
.end method

.method public initResources(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public isCareConnectedLessThen10Mins(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)Z
    .locals 7

    .line 426
    sget-object v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 429
    :cond_0
    sget-object v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_NOT_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 430
    iget-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    .line 431
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getLastParametersUpdate()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    .line 435
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const v0, 0x927c0

    .line 437
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    int-to-long v5, v0

    cmp-long p1, v3, v5

    if-gtz p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$createObsWithDBResponse$2$com-texa-careapp-app-sos-featuremanager-SosFeatureDefaultManager(Lcom/texa/careapp/checks/Check$Result;Lcom/texa/careapp/model/ServiceDataModel;Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 365
    iget-object p3, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-virtual {p3, p1, p2}, Lcom/texa/careapp/utils/ServiceDataManager;->checkServiceAndDongleStatus(Lcom/texa/careapp/checks/Check$Result;Lcom/texa/careapp/model/ServiceDataModel;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$createObsWithServerResponse$3$com-texa-careapp-app-sos-featuremanager-SosFeatureDefaultManager(Lcom/texa/careapp/checks/Check$Result;Ljava/util/List;Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 376
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->checkServiceAndDongleStatus(Lcom/texa/careapp/checks/Check$Result;Ljava/util/List;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$startButtonObserver$0$com-texa-careapp-app-sos-featuremanager-SosFeatureDefaultManager(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "sosButtonIsEnable onNext status -> %s"

    .line 287
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$UpdateButton;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$UpdateButton;-><init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public observeChecks()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/checks/Check$Result;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Lio/reactivex/Observable;

    .line 592
    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;

    .line 593
    invoke-virtual {v1}, Lcom/texa/careapp/checks/ChecksFactory;->newCheckPhoneNumber()Lcom/texa/careapp/checks/Check;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/careapp/checks/Check;->check()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;

    .line 594
    invoke-virtual {v1}, Lcom/texa/careapp/checks/ChecksFactory;->newCheckBluetooth()Lcom/texa/careapp/checks/Check;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/careapp/checks/Check;->check()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;

    .line 595
    invoke-virtual {v1}, Lcom/texa/careapp/checks/ChecksFactory;->newCheckGps()Lcom/texa/careapp/checks/Check;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/careapp/checks/Check;->check()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;

    .line 596
    invoke-virtual {v1}, Lcom/texa/careapp/checks/ChecksFactory;->newCheckCareConnection()Lcom/texa/careapp/checks/Check;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/careapp/checks/Check;->check()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;

    .line 597
    invoke-virtual {v1}, Lcom/texa/careapp/checks/ChecksFactory;->newCheckCurrentService()Lcom/texa/careapp/checks/Check;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/careapp/checks/Check;->check()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;

    .line 598
    invoke-virtual {v1}, Lcom/texa/careapp/checks/ChecksFactory;->newCheckNetworkConnection()Lcom/texa/careapp/checks/Check;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/careapp/checks/Check;->check()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 592
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 600
    new-instance v1, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;)V

    invoke-static {v0, v1}, Lio/reactivex/Observable;->combineLatest(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeChecksForNotification()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/checks/Check$Result;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Lio/reactivex/Observable;

    .line 614
    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;

    .line 615
    invoke-virtual {v1}, Lcom/texa/careapp/checks/ChecksFactory;->newCheckPhoneNumber()Lcom/texa/careapp/checks/Check;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/careapp/checks/Check;->check()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;

    .line 616
    invoke-virtual {v1}, Lcom/texa/careapp/checks/ChecksFactory;->newCheckGps()Lcom/texa/careapp/checks/Check;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/careapp/checks/Check;->check()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;

    .line 617
    invoke-virtual {v1}, Lcom/texa/careapp/checks/ChecksFactory;->newCheckCareConnection()Lcom/texa/careapp/checks/Check;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/careapp/checks/Check;->check()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;

    .line 618
    invoke-virtual {v1}, Lcom/texa/careapp/checks/ChecksFactory;->newCheckCurrentService()Lcom/texa/careapp/checks/Check;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/careapp/checks/Check;->check()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;

    .line 619
    invoke-virtual {v1}, Lcom/texa/careapp/checks/ChecksFactory;->newCheckNetworkConnection()Lcom/texa/careapp/checks/Check;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/careapp/checks/Check;->check()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 614
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 621
    new-instance v1, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;)V

    invoke-static {v0, v1}, Lio/reactivex/Observable;->combineLatest(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeChecksForServices()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/checks/Check$Result;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/Observable;

    .line 605
    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;

    .line 606
    invoke-virtual {v1}, Lcom/texa/careapp/checks/ChecksFactory;->newCheckPhoneNumber()Lcom/texa/careapp/checks/Check;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/careapp/checks/Check;->check()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;

    .line 607
    invoke-virtual {v1}, Lcom/texa/careapp/checks/ChecksFactory;->newCheckCurrentService()Lcom/texa/careapp/checks/Check;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/careapp/checks/Check;->check()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 605
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 608
    new-instance v1, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;)V

    invoke-static {v0, v1}, Lio/reactivex/Observable;->combineLatest(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method onCAReImpactDetected(Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "CARe CRASH detected!"

    .line 98
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;->getImpact()Lcom/texa/carelib/care/impacts/Impact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/care/impacts/Impact;->getCrashReport()Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 103
    sget-object v1, Lcom/texa/carelib/care/impacts/CrashReportStatus;->Valid:Lcom/texa/carelib/care/impacts/CrashReportStatus;

    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;->getImpact()Lcom/texa/carelib/care/impacts/Impact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/carelib/care/impacts/Impact;->getCrashReport()Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/carelib/care/impacts/CrashReport;->getStatus()Lcom/texa/carelib/care/impacts/CrashReportStatus;

    move-result-object v3

    if-eq v1, v3, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    .line 104
    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;->getImpact()Lcom/texa/carelib/care/impacts/Impact;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/Impact;->getCrashReport()Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/CrashReport;->getStatus()Lcom/texa/carelib/care/impacts/CrashReportStatus;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "Detected impact with status: %s"

    invoke-static {p1, v1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 110
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mImpactDetector:Lcom/texa/careapp/impactdetection/ImpactDetector;

    invoke-virtual {v1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->onCareImpactDetected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :goto_0
    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;->getImpact()Lcom/texa/carelib/care/impacts/Impact;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/Impact;->getDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->onImpactDetected(ILjava/util/Date;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v3, "Error discarding smart-phone impact."

    new-array v0, v0, [Ljava/lang/Object;

    .line 112
    invoke-static {v1, v3, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 114
    :goto_2
    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;->getImpact()Lcom/texa/carelib/care/impacts/Impact;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/Impact;->getDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->onImpactDetected(ILjava/util/Date;)V

    .line 115
    throw v0
.end method

.method onImpactDetected(ILjava/util/Date;)V
    .locals 4

    .line 145
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->getSosServiceForImpact()Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->ordinal()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 148
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->canStartSosCall(ILcom/texa/careapp/model/ServiceDataModel;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->isSmartphoneImpactDetectedEnabledFromPrefs()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, " ADDITIONAL_PHONE_IMPACT_DETECTION disabled !"

    .line 152
    invoke-static {p2, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 156
    :cond_1
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mLastImpactDetected:Ljava/lang/Long;

    .line 157
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, v1}, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->buildIntent(Landroid/content/Context;ILjava/util/Date;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 160
    :cond_2
    iget-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mCrashLogReader:Lcom/texa/careapp/utils/CrashLogReader;

    iget-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mImpactDetection:Lcom/texa/carelib/care/impacts/ImpactDetection;

    invoke-virtual {p1, p2}, Lcom/texa/careapp/utils/CrashLogReader;->read(Lcom/texa/carelib/care/impacts/ImpactDetection;)V

    return-void
.end method

.method onSmartPhoneImpactDetected(Lcom/texa/careapp/impactdetection/ImpactEvent;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SmartPhone CRASH detected!"

    .line 120
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->createImpactReportDump(Lcom/texa/careapp/impactdetection/ImpactEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Could not generate impact detector report dump."

    .line 126
    invoke-static {v2, v3, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x1

    .line 129
    invoke-virtual {p1}, Lcom/texa/careapp/impactdetection/ImpactEvent;->getValidationStatus()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 130
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->IMPACT_DETECTED_BY_PHONE_DATA_DUMP:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v3, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p1}, Lcom/texa/careapp/impactdetection/ImpactEvent;->getImpactTime()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/texa/careapp/impactdetection/ImpactEvent;->getImpactTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :cond_0
    const/4 p1, 0x2

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->onImpactDetected(ILjava/util/Date;)V

    goto :goto_1

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->IMPACT_DETECTED_BY_PHONE_DATA_DUMP:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->FAILED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    :goto_1
    return-void
.end method

.method public registerImpactDetectionListener()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mImpactDetection:Lcom/texa/carelib/care/impacts/ImpactDetection;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mImpactDetectionListener:Lcom/texa/carelib/care/impacts/ImpactDetectionListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/impacts/ImpactDetection;->removeImpactDetectionListener(Lcom/texa/carelib/care/impacts/ImpactDetectionListener;)V

    .line 322
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mImpactDetection:Lcom/texa/carelib/care/impacts/ImpactDetection;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mImpactDetectionListener:Lcom/texa/carelib/care/impacts/ImpactDetectionListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/impacts/ImpactDetection;->addImpactDetectionListener(Lcom/texa/carelib/care/impacts/ImpactDetectionListener;)Lcom/texa/carelib/care/impacts/ImpactDetectionListener;

    return-void
.end method

.method public registerImpactDetectorListener()V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mImpactDetector:Lcom/texa/careapp/impactdetection/ImpactDetector;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mImpactDetectorListener:Lcom/texa/careapp/impactdetection/ImpactDetectorListener;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->setImpactDetectorListener(Lcom/texa/careapp/impactdetection/ImpactDetectorListener;)V

    return-void
.end method

.method public setFragmentManager(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public shouldCheckSosPrerequisites()Z
    .locals 2

    .line 626
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->sosService:Lcom/texa/careapp/model/ServiceDataModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/texa/careapp/model/ServiceDataModel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public startButtonObserver()V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->sosButtonIsEnable:Lio/reactivex/Observable;

    .line 285
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applySchedulers()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;)V

    sget-object v2, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda2;

    .line 286
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->buttonObservableDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public unregisterImpactDetectionListener()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mImpactDetection:Lcom/texa/carelib/care/impacts/ImpactDetection;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mImpactDetectionListener:Lcom/texa/carelib/care/impacts/ImpactDetectionListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/impacts/ImpactDetection;->removeImpactDetectionListener(Lcom/texa/carelib/care/impacts/ImpactDetectionListener;)V

    return-void
.end method

.method public unregisterImpactDetectorListener()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->mImpactDetector:Lcom/texa/careapp/impactdetection/ImpactDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->setImpactDetectorListener(Lcom/texa/careapp/impactdetection/ImpactDetectorListener;)V

    return-void
.end method
