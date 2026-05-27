.class public Lcom/texa/careapp/utils/LocationTracker;
.super Ljava/lang/Object;
.source "LocationTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationTracker"


# instance fields
.field private mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

.field private mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

.field private mContext:Landroid/content/Context;

.field private mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private final mGson:Lcom/google/gson/Gson;

.field private mLocation:Landroid/location/Location;

.field private mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

.field private mReactiveLocationProvider:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

.field private mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;


# direct methods
.method public static synthetic $r8$lambda$peuSKgUvh4EG1MZz8ogaol-_lcE(Lcom/texa/careapp/utils/LocationTracker;Lcom/texa/careapp/model/VehicleParam;Lcom/texa/careapp/model/VehicleParam;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/utils/LocationTracker;->isUnderThresholdRpmAndSpeed(Lcom/texa/careapp/model/VehicleParam;Lcom/texa/careapp/model/VehicleParam;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/careapp/remotelogger/LoggerManager;Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/utils/LocationTracker;->mGson:Lcom/google/gson/Gson;

    .line 60
    iput-object p1, p0, Lcom/texa/careapp/utils/LocationTracker;->mReactiveLocationProvider:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    .line 61
    iput-object p2, p0, Lcom/texa/careapp/utils/LocationTracker;->mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    .line 62
    iput-object p3, p0, Lcom/texa/careapp/utils/LocationTracker;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    .line 63
    iput-object p4, p0, Lcom/texa/careapp/utils/LocationTracker;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    .line 64
    iput-object p5, p0, Lcom/texa/careapp/utils/LocationTracker;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    .line 65
    iput-object p6, p0, Lcom/texa/careapp/utils/LocationTracker;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    .line 66
    iput-object p7, p0, Lcom/texa/careapp/utils/LocationTracker;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isUnderThresholdRpmAndSpeed(Lcom/texa/careapp/model/VehicleParam;Lcom/texa/careapp/model/VehicleParam;)Z
    .locals 4

    .line 197
    invoke-virtual {p2}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double p2, v0, v2

    if-gtz p2, :cond_0

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$observerSpeedAndRpm$2(Ljava/lang/Boolean;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private onLocationTrackerChangeEvent(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 4

    .line 164
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 165
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const/16 v1, 0x64

    .line 167
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "requestLocationUpdates"

    .line 169
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v1, p0, Lcom/texa/careapp/utils/LocationTracker;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 171
    iget-object v1, p0, Lcom/texa/careapp/utils/LocationTracker;->mReactiveLocationProvider:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    invoke-virtual {v1, v0}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->getUpdatedLocation(Lcom/google/android/gms/location/LocationRequest;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    .line 172
    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/utils/LocationTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/utils/LocationTracker$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/utils/LocationTracker;Lcom/texa/careapp/model/VehicleModel;)V

    new-instance p1, Lcom/texa/careapp/utils/LocationTracker$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/texa/careapp/utils/LocationTracker$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/utils/LocationTracker;)V

    .line 173
    invoke-virtual {v0, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/utils/LocationTracker;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private resetLocation(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "reset Location"

    .line 153
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 155
    :try_start_0
    iput-object v1, p0, Lcom/texa/careapp/utils/LocationTracker;->mLocation:Landroid/location/Location;

    const-string v1, "LAST_LOCATION"

    .line 156
    invoke-virtual {p1, v1}, Lcom/texa/careapp/model/VehicleModel;->deleteAdditionalDataValueByType(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Could not delete last vehicle location from database."

    .line 158
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private startObserveTripForLocationTracker(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "subscribe observer for location tracker"

    .line 75
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private trackLocationAndTimeStamp(Landroid/location/Location;Lcom/texa/careapp/model/VehicleModel;)V
    .locals 6

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/texa/careapp/utils/LocationTracker;->mLocation:Landroid/location/Location;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Vehicle location is null!!!!"

    .line 122
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string v3, "LOCATION TRACKER Vehicle position: %s"

    .line 125
    invoke-static {v3, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "||"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LAST_LOCATION"

    invoke-virtual {p2, v3, v2}, Lcom/texa/careapp/model/VehicleModel;->setAdditionalPositionData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    iput-object p1, p0, Lcom/texa/careapp/utils/LocationTracker;->mLocation:Landroid/location/Location;

    new-array p1, v1, [Ljava/lang/Object;

    .line 129
    invoke-virtual {p2, v3}, Lcom/texa/careapp/model/VehicleModel;->getAdditionalDataByType(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleAdditionalDataModel;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Vehicle position saved successfully.%s"

    .line 128
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-direct {p0}, Lcom/texa/careapp/utils/LocationTracker;->unsubscribeTripForLocationTracker()V

    goto :goto_0

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "An error is occurred while saving vehicle position."

    .line 132
    invoke-static {p2, p1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private unsubscribeTripForLocationTracker()V
    .locals 7

    .line 103
    iget-object v0, p0, Lcom/texa/careapp/utils/LocationTracker;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 104
    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->FAILED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    .line 105
    iget-object v1, p0, Lcom/texa/careapp/utils/LocationTracker;->mLocation:Landroid/location/Location;

    const-string v2, "\nLatitude: "

    const-string v3, "Longitude: "

    if-eqz v1, :cond_0

    .line 106
    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/texa/careapp/utils/LocationTracker;->mLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/utils/LocationTracker;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/utils/LocationTracker;->mContext:Landroid/content/Context;

    const-string v4, "location"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    if-eqz v1, :cond_1

    const-string v4, "gps"

    .line 111
    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\nNB: the location was null, these are the last known coordinates acquired"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 116
    :goto_0
    iget-object v2, p0, Lcom/texa/careapp/utils/LocationTracker;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v3, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->PARKING_LOC:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    invoke-virtual {v2, v3, v0, v1}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onLocationTrackerChangeEvent$0$com-texa-careapp-utils-LocationTracker(Lcom/texa/careapp/model/VehicleModel;Landroid/location/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    invoke-direct {p0, p2, p1}, Lcom/texa/careapp/utils/LocationTracker;->trackLocationAndTimeStamp(Landroid/location/Location;Lcom/texa/careapp/model/VehicleModel;)V

    return-void
.end method

.method public synthetic lambda$onLocationTrackerChangeEvent$1$com-texa-careapp-utils-LocationTracker(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/texa/careapp/utils/LocationTracker;->TAG:Ljava/lang/String;

    const-string v1, "exception while getting location"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 176
    iput-object p1, p0, Lcom/texa/careapp/utils/LocationTracker;->mLocation:Landroid/location/Location;

    return-void
.end method

.method observerSpeedAndRpm(Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 189
    invoke-virtual {p1}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->observeEngineRpm()Lio/reactivex/Observable;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->observeVehicleSpeed()Lio/reactivex/Observable;

    move-result-object p1

    .line 192
    new-instance v1, Lcom/texa/careapp/utils/LocationTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/utils/LocationTracker$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/utils/LocationTracker;)V

    invoke-static {v0, p1, v1}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/utils/LocationTracker$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/utils/LocationTracker$$ExternalSyntheticLambda3;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public onTripEnded(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "vehicle model is null!!!"

    .line 211
    invoke-static {v0, p1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 214
    :cond_0
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/LocationTracker;->onLocationTrackerChangeEvent(Lcom/texa/careapp/model/VehicleModel;)V

    return-void
.end method

.method public onTripStarted(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "vehicle model is null!!!"

    .line 202
    invoke-static {v0, p1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 205
    :cond_0
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/LocationTracker;->resetLocation(Lcom/texa/careapp/model/VehicleModel;)V

    .line 206
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/LocationTracker;->startObserveTripForLocationTracker(Lcom/texa/careapp/model/VehicleModel;)V

    return-void
.end method

.method unsubscribeFunction()Ljava/lang/Boolean;
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/texa/careapp/utils/LocationTracker;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-virtual {v0}, Lcom/texa/careapp/carelib/CommunicationObservable;->getCurrentStatus()Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_NOT_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    const/4 v2, 0x1

    .line 90
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "unsubscribe communication status CARE_NOT_CONNECTED"

    .line 88
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-direct {p0}, Lcom/texa/careapp/utils/LocationTracker;->unsubscribeTripForLocationTracker()V

    return-object v2

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/utils/LocationTracker;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-interface {v0}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripStatus()Lcom/texa/carelib/care/trips/TripStatus;

    move-result-object v0

    sget-object v1, Lcom/texa/carelib/care/trips/TripStatus;->InProgress:Lcom/texa/carelib/care/trips/TripStatus;

    if-eq v0, v1, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "unsubscribe tripStatus != InProgress"

    .line 93
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-direct {p0}, Lcom/texa/careapp/utils/LocationTracker;->unsubscribeTripForLocationTracker()V

    return-object v2

    .line 97
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
