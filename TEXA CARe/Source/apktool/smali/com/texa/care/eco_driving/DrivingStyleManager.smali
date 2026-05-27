.class public Lcom/texa/care/eco_driving/DrivingStyleManager;
.super Ljava/lang/Object;
.source "DrivingStyleManager.java"

# interfaces
.implements Lcom/texa/care/eco_driving/ScoreContextProvider;
.implements Lcom/texa/care/eco_driving/score/ScoreConfigurationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;,
        Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;
    }
.end annotation


# static fields
.field private static final INTERVAL_TRIP_INFO_UPDATE:I = 0xa

.field private static final INTERVAL_VALUES_UPDATE_HIGH_FREQ:I = 0x1

.field private static final INTERVAL_VALUES_UPDATE_LOW_FREQ:I = 0xa

.field private static final RPM_THRESHOLD_FOR_PARKING:I = 0xc8

.field private static final SPEED_THRESHOLD_FOR_PARKING:I = 0x2


# instance fields
.field private final accelerationsScore:Lcom/texa/care/eco_driving/score/AccelerationsScore;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private accessory:Lcom/texa/carelib/care/accessory/Accessory;

.field private beginInfo:Lcom/texa/carelib/care/trips/TripEndInfo;

.field private final brakesScore:Lcom/texa/care/eco_driving/score/BrakesScore;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private communication:Lcom/texa/carelib/communication/Communication;

.field private communicationDisposable:Lio/reactivex/disposables/Disposable;

.field private currentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

.field private dataManagerConfiguration:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

.field private dataManagerConfigurationDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field private final dataManagerSync:Lcom/texa/care/eco_driving/DataManagerConfigSync;

.field private drivingProfile:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public events:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/texa/care/eco_driving/utils/jsonSerializer/ExcludedFromEventHub;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private featureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

.field private flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

.field private highFrequencyDisposable:Lio/reactivex/disposables/Disposable;

.field private final highRpmEngColdScore:Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final highSpeedScore:Lcom/texa/care/eco_driving/score/HighSpeedScore;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private lowFrequencyDisposable:Lio/reactivex/disposables/Disposable;

.field private mLocationProvider:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

.field private mRxCommunication:Lcom/texa/care/eco_driving/RxCommunication;

.field private mRxCurrentTrip:Lcom/texa/care/eco_driving/RxCurrentTrip;

.field private mRxDataManagerConfiguration:Lcom/texa/care/eco_driving/RxDataManagerConfiguration;

.field private mRxVehicle:Lcom/texa/care/eco_driving/RxVehicle;

.field private mTripPersistentStorage:Lcom/texa/care/eco_driving/TripPersistentStorage;

.field private final overallScore:Lcom/texa/care/eco_driving/score/OverallScore;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private parkedCheck:Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;

.field private final parkedEngOnColdScore:Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final parkedEngOnScore:Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private profile:Lcom/texa/carelib/profile/Profile;

.field private scoreUpdateRate:D

.field private statisticsZero:Lcom/texa/carelib/care/trips/TripStatisticsInfo;

.field private tripDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field private tripID:Lcom/texa/care/eco_driving/TripID;

.field private tripNumber:Ljava/lang/Long;

.field private tripUpdateDisposable:Lio/reactivex/disposables/Disposable;

.field private vehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

.field private vehicleDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public static synthetic $r8$lambda$44Y5UyfFIFUw0LSUKDHnUnK4EUw(Lcom/texa/care/eco_driving/DrivingStyleManager;Lcom/texa/carelib/care/trips/TripStatisticsInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/DrivingStyleManager;->observeTripStatisticsInfo(Lcom/texa/carelib/care/trips/TripStatisticsInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rJ1LLC_sTWdgp-t9s-iSigyxNPM(Lcom/texa/care/eco_driving/DrivingStyleManager;Lcom/texa/carelib/care/trips/TripStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/DrivingStyleManager;->observeTripStatus(Lcom/texa/carelib/care/trips/TripStatus;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->events:Ljava/util/List;

    const-wide v0, 0x3fa999999999999aL    # 0.05

    .line 123
    iput-wide v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->scoreUpdateRate:D

    .line 139
    new-instance v2, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v2}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->tripDisposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 140
    new-instance v2, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v2}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->dataManagerConfigurationDisposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 167
    sget-object v2, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->UNDEFINED:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    iput-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->drivingProfile:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    .line 168
    iput-wide v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->scoreUpdateRate:D

    .line 170
    new-instance v0, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;

    invoke-direct {v0, p0}, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;-><init>(Lcom/texa/care/eco_driving/DrivingStyleManager;)V

    iput-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->parkedCheck:Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;

    .line 171
    new-instance v0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    invoke-direct {v0, p0}, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;-><init>(Lcom/texa/care/eco_driving/DrivingStyleManager;)V

    iput-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    .line 173
    new-instance v0, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;

    invoke-direct {v0}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;-><init>()V

    iput-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->parkedEngOnScore:Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;

    .line 174
    new-instance v1, Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore;

    invoke-direct {v1}, Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore;-><init>()V

    iput-object v1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->parkedEngOnColdScore:Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore;

    .line 175
    new-instance v2, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;

    invoke-direct {v2}, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;-><init>()V

    iput-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->highRpmEngColdScore:Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;

    .line 176
    new-instance v3, Lcom/texa/care/eco_driving/score/AccelerationsScore;

    invoke-direct {v3}, Lcom/texa/care/eco_driving/score/AccelerationsScore;-><init>()V

    iput-object v3, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->accelerationsScore:Lcom/texa/care/eco_driving/score/AccelerationsScore;

    .line 177
    new-instance v4, Lcom/texa/care/eco_driving/score/BrakesScore;

    invoke-direct {v4}, Lcom/texa/care/eco_driving/score/BrakesScore;-><init>()V

    iput-object v4, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->brakesScore:Lcom/texa/care/eco_driving/score/BrakesScore;

    .line 178
    new-instance v5, Lcom/texa/care/eco_driving/score/HighSpeedScore;

    invoke-direct {v5}, Lcom/texa/care/eco_driving/score/HighSpeedScore;-><init>()V

    iput-object v5, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->highSpeedScore:Lcom/texa/care/eco_driving/score/HighSpeedScore;

    .line 179
    new-instance v6, Lcom/texa/care/eco_driving/score/OverallScore;

    invoke-direct {v6}, Lcom/texa/care/eco_driving/score/OverallScore;-><init>()V

    iput-object v6, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->overallScore:Lcom/texa/care/eco_driving/score/OverallScore;

    const/16 v7, 0x9

    .line 181
    invoke-virtual {v6, v0, v7}, Lcom/texa/care/eco_driving/score/OverallScore;->addComponent(Lcom/texa/care/eco_driving/score/BaseScore;I)Lcom/texa/care/eco_driving/score/OverallScore;

    move-result-object v0

    const/16 v6, 0xc

    invoke-virtual {v0, v1, v6}, Lcom/texa/care/eco_driving/score/OverallScore;->addComponent(Lcom/texa/care/eco_driving/score/BaseScore;I)Lcom/texa/care/eco_driving/score/OverallScore;

    move-result-object v0

    const/16 v1, 0x13

    .line 182
    invoke-virtual {v0, v2, v1}, Lcom/texa/care/eco_driving/score/OverallScore;->addComponent(Lcom/texa/care/eco_driving/score/BaseScore;I)Lcom/texa/care/eco_driving/score/OverallScore;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v5, v1}, Lcom/texa/care/eco_driving/score/OverallScore;->addComponent(Lcom/texa/care/eco_driving/score/BaseScore;I)Lcom/texa/care/eco_driving/score/OverallScore;

    move-result-object v0

    .line 183
    invoke-virtual {v0, v4, v1}, Lcom/texa/care/eco_driving/score/OverallScore;->addComponent(Lcom/texa/care/eco_driving/score/BaseScore;I)Lcom/texa/care/eco_driving/score/OverallScore;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/texa/care/eco_driving/score/OverallScore;->addComponent(Lcom/texa/care/eco_driving/score/BaseScore;I)Lcom/texa/care/eco_driving/score/OverallScore;

    .line 185
    new-instance v0, Lcom/texa/care/eco_driving/DataManagerConfigSync;

    invoke-direct {v0}, Lcom/texa/care/eco_driving/DataManagerConfigSync;-><init>()V

    iput-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->dataManagerSync:Lcom/texa/care/eco_driving/DataManagerConfigSync;

    .line 186
    iput-object p0, v0, Lcom/texa/care/eco_driving/DataManagerConfigSync;->dataProvider:Lcom/texa/care/eco_driving/DrivingStyleManager;

    .line 188
    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->getAllScores()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/care/eco_driving/score/BaseScore;

    .line 189
    invoke-virtual {v1, p0}, Lcom/texa/care/eco_driving/score/BaseScore;->setScoreContextProvider(Lcom/texa/care/eco_driving/ScoreContextProvider;)V

    .line 190
    invoke-virtual {v1, p0}, Lcom/texa/care/eco_driving/score/BaseScore;->setScoreConfigurationProvider(Lcom/texa/care/eco_driving/score/ScoreConfigurationProvider;)V

    goto :goto_0

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->registerForEarlyNotifications()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/carelib/communication/Communication;Lcom/texa/care/eco_driving/RxVehicle;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;-><init>()V

    .line 148
    invoke-virtual {p0, p8}, Lcom/texa/care/eco_driving/DrivingStyleManager;->setCommunication(Lcom/texa/carelib/communication/Communication;)V

    .line 150
    iput-object p2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->profile:Lcom/texa/carelib/profile/Profile;

    .line 151
    iput-object p3, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->dataManagerConfiguration:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    .line 152
    iput-object p4, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->currentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    .line 153
    iput-object p5, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->vehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    .line 154
    iput-object p6, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->accessory:Lcom/texa/carelib/care/accessory/Accessory;

    .line 155
    iput-object p7, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->featureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    .line 156
    iput-object p9, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mRxVehicle:Lcom/texa/care/eco_driving/RxVehicle;

    .line 158
    new-instance p2, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    invoke-direct {p2, p1}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mLocationProvider:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    .line 159
    new-instance p2, Lcom/texa/care/eco_driving/TripPersistentStorage;

    invoke-direct {p2, p1}, Lcom/texa/care/eco_driving/TripPersistentStorage;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mTripPersistentStorage:Lcom/texa/care/eco_driving/TripPersistentStorage;

    .line 161
    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->getAllScores()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/care/eco_driving/score/BaseScore;

    .line 162
    iget-object p3, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mLocationProvider:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    invoke-virtual {p2, p3}, Lcom/texa/care/eco_driving/score/BaseScore;->setLocationProvider(Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addEvent(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;)Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->events:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/DrivingStyleManager;->notifyEvent(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;)V

    return-object p1
.end method

.method private beginTripPolling()V
    .locals 3

    .line 584
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldProcessTripInfo:Z

    .line 585
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->tripUpdateDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/care/eco_driving/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 586
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 587
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 588
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda15;-><init>(Lcom/texa/care/eco_driving/DrivingStyleManager;)V

    sget-object v2, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda17;->INSTANCE:Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda17;

    .line 589
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->tripUpdateDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private beginValuesPolling()V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldProcessValueUpdates:Z

    return-void
.end method

.method private endTripPolling()V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldProcessTripInfo:Z

    .line 516
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->tripUpdateDisposable:Lio/reactivex/disposables/Disposable;

    invoke-direct {p0, v0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private endValuesPolling()V
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldProcessValueUpdates:Z

    .line 510
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->highFrequencyDisposable:Lio/reactivex/disposables/Disposable;

    invoke-direct {p0, v0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 511
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->lowFrequencyDisposable:Lio/reactivex/disposables/Disposable;

    invoke-direct {p0, v0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private getAllScores()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/care/eco_driving/score/BaseScore;",
            ">;"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/texa/care/eco_driving/score/BaseScore;

    iget-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->parkedEngOnScore:Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->parkedEngOnColdScore:Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->highRpmEngColdScore:Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->accelerationsScore:Lcom/texa/care/eco_driving/score/AccelerationsScore;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->brakesScore:Lcom/texa/care/eco_driving/score/BrakesScore;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->highSpeedScore:Lcom/texa/care/eco_driving/score/HighSpeedScore;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->overallScore:Lcom/texa/care/eco_driving/score/OverallScore;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private highFreqValuesUpdate()V
    .locals 5

    .line 562
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->featureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    if-nez v0, :cond_0

    return-void

    .line 563
    :cond_0
    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isParametersAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->vehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    .line 565
    sget-object v3, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v3}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/texa/carelib/diagresources/DataID$Parameter;->VEHICLE_SPEED:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v3}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/vehicle/Vehicle;->loadValues([Ljava/lang/Long;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 567
    invoke-virtual {v0}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$beginTripPolling$15(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error beginning trip polling"

    .line 589
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$registerForCommunicationNotification$1(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ON ERROR registerForCommunicationNotification"

    .line 268
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$registerForNotifications$11(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error onTemperatureThreshold"

    .line 296
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$registerForNotifications$13(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error onParametersUpdates"

    .line 313
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$registerForNotifications$2(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error onTripStatus"

    .line 274
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$registerForNotifications$3(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error onTripStatisticsInfo"

    .line 277
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$registerForNotifications$5(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error onTripStopInfo"

    .line 281
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$registerForNotifications$7(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error onAccelerationThreshold"

    .line 288
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$registerForNotifications$9(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error onBrakeThreshold"

    .line 292
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private lowFreqValueUpdate()V
    .locals 5

    .line 573
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->featureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    if-nez v0, :cond_0

    return-void

    .line 574
    :cond_0
    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isParametersAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->vehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    .line 576
    sget-object v3, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v3}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/vehicle/Vehicle;->loadValues([Ljava/lang/Long;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 578
    invoke-virtual {v0}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyEvent(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;)V
    .locals 3

    .line 460
    :try_start_0
    invoke-static {}, Lcom/texa/care/eco_driving/score/BaseScore;->getCallbacks()Ljava/util/Map;

    move-result-object v0

    .line 461
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/care/eco_driving/EcoDrivingCallback;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 463
    invoke-interface {v1, p1, v2}, Lcom/texa/care/eco_driving/EcoDrivingCallback;->drivingEventCall(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;Z)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method private observeTripStatisticsInfo(Lcom/texa/carelib/care/trips/TripStatisticsInfo;)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 347
    iget-object v1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->currentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-interface {v1}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripID()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->getTripNumber()Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->getRawData()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "ECO-DRIVING-LIB -> observeTripStatisticsInfo#tripNumber %d %d ----> %s"

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iget-boolean v0, v0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldProcessTripInfo:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iget-boolean v0, v0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldWaitForTripIDUpdate:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->statisticsZero:Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    if-eqz p1, :cond_9

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 353
    :cond_1
    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->getAccelerationCounters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->getAccelerationCounters()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/texa/care/eco_driving/Utils;->countersByRemoving(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 354
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_3

    .line 356
    iget-object v3, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->brakesScore:Lcom/texa/care/eco_driving/score/BrakesScore;

    invoke-virtual {v3, v1}, Lcom/texa/care/eco_driving/score/BrakesScore;->update(Ljava/util/List;)V

    .line 357
    iget-object v3, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->accelerationsScore:Lcom/texa/care/eco_driving/score/AccelerationsScore;

    invoke-virtual {v3, v1}, Lcom/texa/care/eco_driving/score/AccelerationsScore;->update(Ljava/util/List;)V

    .line 360
    :cond_3
    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->getRPMUnderTempThresholdCounters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->getRPMUnderTempThresholdCounters()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/texa/care/eco_driving/Utils;->countersByRemoving(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 361
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_5

    .line 363
    iget-object v3, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->highRpmEngColdScore:Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;

    invoke-virtual {v3, v1}, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->update(Ljava/util/List;)V

    .line 364
    iget-object v3, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->parkedEngOnColdScore:Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore;

    invoke-virtual {v3, v1}, Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore;->update(Ljava/util/List;)V

    .line 367
    :cond_5
    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->getRPMOverTempThresholdCounters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->getRPMOverTempThresholdCounters()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/texa/care/eco_driving/Utils;->countersByRemoving(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 368
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_7

    .line 370
    iget-object v3, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->parkedEngOnScore:Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;

    invoke-virtual {v3, v1}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->update(Ljava/util/List;)V

    .line 372
    :cond_7
    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->getSpeedCounters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->getSpeedCounters()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/care/eco_driving/Utils;->countersByRemoving(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 373
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :cond_8
    if-eqz v2, :cond_9

    .line 375
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->highSpeedScore:Lcom/texa/care/eco_driving/score/HighSpeedScore;

    invoke-virtual {p1, v2}, Lcom/texa/care/eco_driving/score/HighSpeedScore;->update(Ljava/util/List;)V

    :cond_9
    :goto_3
    return-void
.end method

.method private observeTripStatus(Lcom/texa/carelib/care/trips/TripStatus;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 317
    iget-object v1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->currentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-interface {v1}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripID()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v3, "ECO-DRIVING-LIB -> observeTripStatus %d, %s"

    invoke-static {v3, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    sget-object v0, Lcom/texa/carelib/care/trips/TripStatus;->InProgress:Lcom/texa/carelib/care/trips/TripStatus;

    if-ne p1, v0, :cond_1

    .line 320
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iput-boolean v1, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldProcessTripInfo:Z

    .line 321
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iput-boolean v1, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldProcessValueUpdates:Z

    .line 322
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iput-boolean v1, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->tripInProgress:Z

    .line 323
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iput-boolean v1, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldWaitForTripIDUpdate:Z

    .line 325
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iget-boolean p1, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldPollTripData:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->beginTripPolling()V

    .line 326
    :cond_0
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iget-boolean p1, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldPollValues:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->beginValuesPolling()V

    goto :goto_0

    .line 328
    :cond_1
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iget-boolean p1, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->tripInProgress:Z

    if-eqz p1, :cond_3

    .line 329
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iget-boolean p1, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldNotifyStop:Z

    if-eqz p1, :cond_2

    .line 330
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->overallScore:Lcom/texa/care/eco_driving/score/OverallScore;

    invoke-direct {p0, p1, v2}, Lcom/texa/care/eco_driving/DrivingStyleManager;->sendEndTripEvent(Lcom/texa/care/eco_driving/score/OverallScore;Z)V

    .line 331
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iput-boolean v2, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldNotifyStop:Z

    const/4 p1, 0x0

    .line 332
    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/DrivingStyleManager;->setTripID(Lcom/texa/care/eco_driving/TripID;)V

    .line 334
    :cond_2
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->parkedCheck:Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;

    iput-boolean v2, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;->shouldNotifyTempStop:Z

    .line 337
    :cond_3
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iput-boolean v2, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldProcessValueUpdates:Z

    .line 338
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iput-boolean v2, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldProcessTripInfo:Z

    .line 339
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iput-boolean v2, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->tripInProgress:Z

    .line 341
    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->endTripPolling()V

    .line 342
    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->endValuesPolling()V

    :cond_4
    :goto_0
    return-void
.end method

.method private observeTripStopInfo(Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/carelib/care/trips/TripEndInfo;)V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 379
    invoke-interface {p1}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripID()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p2}, Lcom/texa/carelib/care/trips/TripEndInfo;->getTripNumber()Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p2}, Lcom/texa/carelib/care/trips/TripEndInfo;->getRawData()[B

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "ECO-DRIVING-LIB -> observeTripStopInfo#tripNumber %d %d  ----> %s"

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iget-boolean v0, v0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldProcessTripInfo:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iget-boolean v0, v0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldAcquireZero:Z

    if-eqz v0, :cond_4

    .line 385
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->beginInfo:Lcom/texa/carelib/care/trips/TripEndInfo;

    if-nez v0, :cond_2

    iput-object p2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->beginInfo:Lcom/texa/carelib/care/trips/TripEndInfo;

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->statisticsZero:Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    if-nez v0, :cond_3

    .line 387
    invoke-interface {p1}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripStatisticsInfo()Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->statisticsZero:Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->beginInfo:Lcom/texa/carelib/care/trips/TripEndInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->statisticsZero:Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    if-eqz v0, :cond_4

    .line 389
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iput-boolean v2, v0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldAcquireZero:Z

    .line 393
    :cond_4
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->beginInfo:Lcom/texa/carelib/care/trips/TripEndInfo;

    .line 394
    iget-object v1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->accessory:Lcom/texa/carelib/care/accessory/Accessory;

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 395
    invoke-interface {p1}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripID()Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    new-array v3, v3, [Ljava/lang/Object;

    .line 396
    invoke-interface {p1}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripID()Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "ECO-DRIVING-LIB -> careLib#tripId %s"

    invoke-static {v4, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    invoke-interface {p1}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripID()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/care/eco_driving/Utils;->asString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/texa/carelib/care/trips/TripEndInfo;->getTripNumber()Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v1, p1, v3}, Lcom/texa/care/eco_driving/DrivingStyleManager;->update(Lcom/texa/carelib/care/accessory/Accessory;Ljava/lang/String;Ljava/lang/Long;)V

    .line 400
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iget-boolean p1, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldWaitForTripIDUpdate:Z

    if-eqz p1, :cond_5

    .line 402
    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->setupStartValues()V

    .line 403
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iput-boolean v2, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldWaitForTripIDUpdate:Z

    .line 406
    :cond_5
    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/TripEndInfo;->getOdometer()Ljava/lang/Float;

    move-result-object p1

    .line 407
    invoke-virtual {p2}, Lcom/texa/carelib/care/trips/TripEndInfo;->getOdometer()Ljava/lang/Float;

    move-result-object v1

    if-eqz p1, :cond_6

    if-eqz v1, :cond_6

    .line 409
    iget-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->overallScore:Lcom/texa/care/eco_driving/score/OverallScore;

    invoke-static {p1, v1}, Lcom/texa/care/eco_driving/Utils;->odoDifference(Ljava/lang/Float;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/texa/care/eco_driving/score/OverallScore;->setDistance(Ljava/lang/Float;)V

    .line 412
    :cond_6
    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/TripEndInfo;->getTimeStamp()Ljava/util/Date;

    move-result-object p1

    .line 413
    invoke-virtual {p2}, Lcom/texa/carelib/care/trips/TripEndInfo;->getTimeStamp()Ljava/util/Date;

    move-result-object p2

    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    .line 415
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->overallScore:Lcom/texa/care/eco_driving/score/OverallScore;

    invoke-static {p1, p2}, Lcom/texa/care/eco_driving/Utils;->dateDifference(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/care/eco_driving/score/OverallScore;->setInterval(J)V

    :cond_7
    return-void
.end method

.method private onVehicleParked(Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;)V
    .locals 2

    .line 744
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iget-boolean v0, v0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->tripInProgress:Z

    if-eqz v0, :cond_1

    .line 745
    iget-boolean v0, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;->shouldNotifyTempStop:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;->isParked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 746
    iput-boolean v0, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;->shouldNotifyTempStop:Z

    .line 747
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->overallScore:Lcom/texa/care/eco_driving/score/OverallScore;

    invoke-direct {p0, p1, v1}, Lcom/texa/care/eco_driving/DrivingStyleManager;->sendEndTripEvent(Lcom/texa/care/eco_driving/score/OverallScore;Z)V

    goto :goto_0

    .line 748
    :cond_0
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    iput-boolean v1, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;->shouldNotifyTempStop:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private registerForCommunicationNotification()V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mRxCommunication:Lcom/texa/care/eco_driving/RxCommunication;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/RxCommunication;->observeCommunicationStatus()Lio/reactivex/Observable;

    move-result-object v0

    .line 264
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda11;-><init>(Lcom/texa/care/eco_driving/DrivingStyleManager;)V

    sget-object v2, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda1;

    .line 265
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->communicationDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private registerForEarlyNotifications()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->communication:Lcom/texa/carelib/communication/Communication;

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Lcom/texa/care/eco_driving/RxCommunication;

    iget-object v1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->communication:Lcom/texa/carelib/communication/Communication;

    invoke-direct {v0, v1}, Lcom/texa/care/eco_driving/RxCommunication;-><init>(Lcom/texa/carelib/communication/Communication;)V

    iput-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mRxCommunication:Lcom/texa/care/eco_driving/RxCommunication;

    .line 258
    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->registerForCommunicationNotification()V

    :cond_0
    return-void
.end method

.method private registerForNotifications()V
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->tripDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mRxCurrentTrip:Lcom/texa/care/eco_driving/RxCurrentTrip;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/RxCurrentTrip;->observeTripStatus()Lio/reactivex/Observable;

    move-result-object v1

    .line 273
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda10;-><init>(Lcom/texa/care/eco_driving/DrivingStyleManager;)V

    sget-object v3, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda4;->INSTANCE:Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda4;

    .line 274
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 272
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 275
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->tripDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mRxCurrentTrip:Lcom/texa/care/eco_driving/RxCurrentTrip;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/RxCurrentTrip;->observeTripStatisticsInfo()Lio/reactivex/Observable;

    move-result-object v1

    .line 276
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda9;-><init>(Lcom/texa/care/eco_driving/DrivingStyleManager;)V

    sget-object v3, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda5;->INSTANCE:Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda5;

    .line 277
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 275
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 278
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->tripDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mRxCurrentTrip:Lcom/texa/care/eco_driving/RxCurrentTrip;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/RxCurrentTrip;->observeTripStopInfo()Lio/reactivex/Observable;

    move-result-object v1

    .line 279
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda0;-><init>(Lcom/texa/care/eco_driving/DrivingStyleManager;)V

    sget-object v3, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda6;->INSTANCE:Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda6;

    .line 280
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 278
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 284
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->dataManagerSync:Lcom/texa/care/eco_driving/DataManagerConfigSync;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->dataManagerConfigurationDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mRxDataManagerConfiguration:Lcom/texa/care/eco_driving/RxDataManagerConfiguration;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/RxDataManagerConfiguration;->observeAccelerationThreshold()Lio/reactivex/Observable;

    move-result-object v1

    .line 286
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda12;-><init>(Lcom/texa/care/eco_driving/DrivingStyleManager;)V

    sget-object v3, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda7;->INSTANCE:Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda7;

    .line 287
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 285
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 289
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->dataManagerConfigurationDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mRxDataManagerConfiguration:Lcom/texa/care/eco_driving/RxDataManagerConfiguration;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/RxDataManagerConfiguration;->observeBrakeThreshold()Lio/reactivex/Observable;

    move-result-object v1

    .line 290
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda13;-><init>(Lcom/texa/care/eco_driving/DrivingStyleManager;)V

    sget-object v3, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda8;->INSTANCE:Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda8;

    .line 291
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 289
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 293
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->dataManagerConfigurationDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mRxDataManagerConfiguration:Lcom/texa/care/eco_driving/RxDataManagerConfiguration;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/RxDataManagerConfiguration;->observeTemperatureThreshold()Lio/reactivex/Observable;

    move-result-object v1

    .line 294
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda14;-><init>(Lcom/texa/care/eco_driving/DrivingStyleManager;)V

    sget-object v3, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda2;

    .line 295
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 293
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mRxVehicle:Lcom/texa/care/eco_driving/RxVehicle;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/RxVehicle;->observeParameterUpdates()Lio/reactivex/Observable;

    move-result-object v0

    .line 300
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda16;-><init>(Lcom/texa/care/eco_driving/DrivingStyleManager;)V

    sget-object v2, Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/care/eco_driving/DrivingStyleManager$$ExternalSyntheticLambda3;

    .line 301
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->vehicleDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private reset()V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->reset()V

    .line 436
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->parkedCheck:Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;->reset()V

    const/4 v0, 0x0

    .line 437
    iput-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->beginInfo:Lcom/texa/carelib/care/trips/TripEndInfo;

    .line 438
    iput-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->statisticsZero:Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    .line 439
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private safeDispose(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 755
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method private sendEndTripEvent(Lcom/texa/care/eco_driving/score/OverallScore;Z)V
    .locals 5

    .line 472
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->getOdometer()F

    move-result v0

    .line 473
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->getDate()Ljava/util/Date;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 476
    iget-object p2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mTripPersistentStorage:Lcom/texa/care/eco_driving/TripPersistentStorage;

    if-eqz p2, :cond_0

    .line 477
    invoke-virtual {p2, v1}, Lcom/texa/care/eco_driving/TripPersistentStorage;->setTempStopDate(Ljava/util/Date;)V

    .line 478
    iget-object p2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mTripPersistentStorage:Lcom/texa/care/eco_driving/TripPersistentStorage;

    invoke-virtual {p2, v0}, Lcom/texa/care/eco_driving/TripPersistentStorage;->setTempStopOdo(F)V

    .line 480
    :cond_0
    new-instance p2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingStopTempEvent;

    invoke-direct {p2, p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingStopTempEvent;-><init>(Lcom/texa/care/eco_driving/score/BaseScore;)V

    goto :goto_0

    .line 482
    :cond_1
    iget-object p2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mTripPersistentStorage:Lcom/texa/care/eco_driving/TripPersistentStorage;

    if-eqz p2, :cond_2

    .line 483
    invoke-virtual {p2}, Lcom/texa/care/eco_driving/TripPersistentStorage;->getTempStopOdo()F

    move-result p2

    .line 484
    iget-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mTripPersistentStorage:Lcom/texa/care/eco_driving/TripPersistentStorage;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/TripPersistentStorage;->getTempStopDate()Ljava/util/Date;

    move-result-object v2

    .line 485
    iget-object v3, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mTripPersistentStorage:Lcom/texa/care/eco_driving/TripPersistentStorage;

    invoke-virtual {v3}, Lcom/texa/care/eco_driving/TripPersistentStorage;->getTripStartDate()Ljava/util/Date;

    move-result-object v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, p2, v4

    if-eqz v4, :cond_2

    cmpl-float p2, p2, v0

    if-nez p2, :cond_2

    .line 486
    invoke-virtual {v2, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_2

    move-object v1, v2

    .line 490
    :cond_2
    new-instance p2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingStopEvent;

    invoke-direct {p2, v1, p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingStopEvent;-><init>(Ljava/util/Date;Lcom/texa/care/eco_driving/score/BaseScore;)V

    .line 493
    :goto_0
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mTripPersistentStorage:Lcom/texa/care/eco_driving/TripPersistentStorage;

    invoke-virtual {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->getTripID()Lcom/texa/care/eco_driving/TripID;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->getTripID()Lcom/texa/care/eco_driving/TripID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/TripID;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/texa/care/eco_driving/TripPersistentStorage;->setLastTripID(Ljava/lang/String;)V

    .line 494
    invoke-direct {p0, p2}, Lcom/texa/care/eco_driving/DrivingStyleManager;->addEvent(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;)Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;

    .line 495
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/score/OverallScore;->getLocationProvider()Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->acquiredPosition(Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;)V

    return-void
.end method

.method private sendStartTripEvent(Lcom/texa/care/eco_driving/score/OverallScore;)V
    .locals 3

    .line 443
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->getTripID()Lcom/texa/care/eco_driving/TripID;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->getTripID()Lcom/texa/care/eco_driving/TripID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/TripID;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    new-instance v0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingStartEvent;

    invoke-direct {v0, p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingStartEvent;-><init>(Lcom/texa/care/eco_driving/score/BaseScore;)V

    .line 445
    iget-object v1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mTripPersistentStorage:Lcom/texa/care/eco_driving/TripPersistentStorage;

    if-eqz v1, :cond_1

    .line 446
    invoke-virtual {v0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingStartEvent;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/care/eco_driving/TripPersistentStorage;->setTripStartDate(Ljava/util/Date;)V

    .line 448
    :cond_1
    invoke-direct {p0, v0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->addEvent(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;)Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;

    .line 449
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/score/OverallScore;->getLocationProvider()Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingStartEvent;->acquiredPosition(Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setEngineSpeed()V
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->vehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    if-nez v0, :cond_0

    return-void

    .line 624
    :cond_0
    :try_start_0
    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/vehicle/Vehicle;->getNumericValue(Ljava/lang/Long;)D

    move-result-wide v0

    .line 625
    iget-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->parkedCheck:Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;

    iput-wide v0, v2, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;->engineSpeed:D

    .line 626
    iget-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->parkedCheck:Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;

    invoke-direct {p0, v2}, Lcom/texa/care/eco_driving/DrivingStyleManager;->onVehicleParked(Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;)V

    .line 627
    iget-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->parkedEngOnScore:Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;

    invoke-virtual {v2, v0, v1}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->updateRpm(D)V

    .line 628
    iget-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->parkedEngOnColdScore:Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore;

    invoke-virtual {v2, v0, v1}, Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore;->updateRpm(D)V
    :try_end_0
    .catch Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 630
    invoke-virtual {v0}, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setEngineTemp()V
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->vehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    if-nez v0, :cond_0

    return-void

    .line 612
    :cond_0
    :try_start_0
    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/vehicle/Vehicle;->getNumericValue(Ljava/lang/Long;)D

    move-result-wide v0

    .line 613
    iget-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->parkedEngOnScore:Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;

    invoke-virtual {v2, v0, v1}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->updateEngineTemp(D)V

    .line 614
    iget-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->parkedEngOnColdScore:Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore;

    invoke-virtual {v2, v0, v1}, Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore;->updateEngineTemp(D)V
    :try_end_0
    .catch Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 616
    invoke-virtual {v0}, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setTripID(Lcom/texa/care/eco_driving/TripID;)V
    .locals 2

    .line 670
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mTripPersistentStorage:Lcom/texa/care/eco_driving/TripPersistentStorage;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 672
    invoke-virtual {v0, v1}, Lcom/texa/care/eco_driving/TripPersistentStorage;->setTripID(Ljava/lang/String;)V

    goto :goto_0

    .line 674
    :cond_0
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/TripID;->getTripNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/care/eco_driving/TripPersistentStorage;->setTripID(Ljava/lang/String;)V

    .line 677
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->tripID:Lcom/texa/care/eco_driving/TripID;

    return-void
.end method

.method private setVehicleSpeed()V
    .locals 3

    .line 635
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->vehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    if-nez v0, :cond_0

    return-void

    .line 638
    :cond_0
    :try_start_0
    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->VEHICLE_SPEED:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/vehicle/Vehicle;->getNumericValue(Ljava/lang/Long;)D

    move-result-wide v0

    .line 639
    iget-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->parkedCheck:Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;

    iput-wide v0, v2, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;->vehicleSpeed:D

    .line 640
    iget-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->parkedCheck:Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;

    invoke-direct {p0, v2}, Lcom/texa/care/eco_driving/DrivingStyleManager;->onVehicleParked(Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;)V

    .line 641
    iget-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->parkedEngOnScore:Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;

    invoke-virtual {v2, v0, v1}, Lcom/texa/care/eco_driving/score/ParkedEngineOnScore;->updateSpeed(D)V

    .line 642
    iget-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->parkedEngOnColdScore:Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore;

    invoke-virtual {v2, v0, v1}, Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore;->updateSpeed(D)V

    .line 643
    iget-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->accelerationsScore:Lcom/texa/care/eco_driving/score/AccelerationsScore;

    invoke-virtual {v2, v0, v1}, Lcom/texa/care/eco_driving/score/AccelerationsScore;->updateSpeed(D)V

    .line 644
    iget-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->brakesScore:Lcom/texa/care/eco_driving/score/BrakesScore;

    invoke-virtual {v2, v0, v1}, Lcom/texa/care/eco_driving/score/BrakesScore;->updateSpeed(D)V
    :try_end_0
    .catch Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 646
    invoke-virtual {v0}, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setupStartValues()V
    .locals 0

    .line 604
    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->setVehicleSpeed()V

    .line 605
    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->setEngineSpeed()V

    .line 606
    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->setEngineTemp()V

    return-void
.end method

.method private tripInfoUpdate()V
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->featureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    if-nez v0, :cond_0

    return-void

    .line 594
    :cond_0
    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isCurrentTripAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->currentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    if-eqz v0, :cond_1

    .line 596
    :try_start_0
    invoke-interface {v0}, Lcom/texa/carelib/care/trips/CurrentTrip;->loadTripInfo()V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 598
    invoke-virtual {v0}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private unregisterForNotifications()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->tripDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 247
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->dataManagerConfigurationDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 248
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->vehicleDisposable:Lio/reactivex/disposables/Disposable;

    invoke-direct {p0, v0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private update(Lcom/texa/carelib/care/accessory/Accessory;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3

    .line 421
    new-instance v0, Lcom/texa/care/eco_driving/TripID;

    invoke-interface {p1}, Lcom/texa/carelib/care/accessory/Accessory;->getSerialNumber()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/texa/care/eco_driving/TripID;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->getTripID()Lcom/texa/care/eco_driving/TripID;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 423
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/TripID;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    const/4 v2, 0x0

    aput-object v1, p2, v2

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const-string v1, "ECO-DRIVING-LIB update TripID --> old %s / new %s"

    invoke-static {v1, p2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    invoke-virtual {v0}, Lcom/texa/care/eco_driving/TripID;->isValid()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v0, p1}, Lcom/texa/care/eco_driving/TripID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 426
    invoke-direct {p0, v0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->setTripID(Lcom/texa/care/eco_driving/TripID;)V

    .line 427
    iput-object p3, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->tripNumber:Ljava/lang/Long;

    .line 428
    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->reset()V

    .line 429
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->overallScore:Lcom/texa/care/eco_driving/score/OverallScore;

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/score/OverallScore;->reset()V

    .line 430
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->overallScore:Lcom/texa/care/eco_driving/score/OverallScore;

    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/DrivingStyleManager;->sendStartTripEvent(Lcom/texa/care/eco_driving/score/OverallScore;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 229
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 230
    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->unregisterForNotifications()V

    return-void
.end method

.method getAccThr()D
    .locals 2

    const-wide v0, 0x3fd3333333333333L    # 0.3

    return-wide v0
.end method

.method getBrakeThr()D
    .locals 2

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    return-wide v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->profile:Lcom/texa/carelib/profile/Profile;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/profile/ProfileDelegate;->getDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->profile:Lcom/texa/carelib/profile/Profile;

    invoke-interface {v0}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/profile/ProfileDelegate;->getDate()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getDrivingProfile()Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->drivingProfile:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    return-object v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 212
    invoke-static {}, Lcom/texa/care/eco_driving/Utils;->buildGSONInstance()Lcom/google/gson/Gson;

    move-result-object v0

    .line 213
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJsonForEventHub()Ljava/lang/String;
    .locals 1

    .line 218
    invoke-static {}, Lcom/texa/care/eco_driving/Utils;->buildGSONInstanceForEventHub()Lcom/google/gson/Gson;

    move-result-object v0

    .line 219
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOdometer()F
    .locals 2

    .line 691
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->currentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripEndInfo()Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->currentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-interface {v0}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripEndInfo()Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/TripEndInfo;->getOdometer()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->currentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-interface {v0}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripEndInfo()Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/TripEndInfo;->getOdometer()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->currentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-interface {v0}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripEndInfo()Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/TripEndInfo;->getOdometer()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0
.end method

.method public getScoreUpdateRate()D
    .locals 2

    .line 736
    iget-wide v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->scoreUpdateRate:D

    return-wide v0
.end method

.method getTempThr()D
    .locals 2

    .line 242
    sget-wide v0, Lcom/texa/care/eco_driving/score/HighRpmEngineColdScore;->TEMP_THRESHOLD_DEG_C:D

    return-wide v0
.end method

.method public getTripID()Lcom/texa/care/eco_driving/TripID;
    .locals 3

    .line 654
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mTripPersistentStorage:Lcom/texa/care/eco_driving/TripPersistentStorage;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->accessory:Lcom/texa/carelib/care/accessory/Accessory;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mTripPersistentStorage:Lcom/texa/care/eco_driving/TripPersistentStorage;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/TripPersistentStorage;->getTripID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 659
    new-instance v1, Lcom/texa/care/eco_driving/TripID;

    iget-object v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->accessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v2}, Lcom/texa/carelib/care/accessory/Accessory;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/texa/care/eco_driving/TripID;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mTripPersistentStorage:Lcom/texa/care/eco_driving/TripPersistentStorage;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/TripID;->getTripNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/texa/care/eco_driving/TripPersistentStorage;->setTripID(Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public getTripNumber()Ljava/lang/Long;
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->tripNumber:Ljava/lang/Long;

    return-object v0
.end method

.method public synthetic lambda$beginTripPolling$14$com-texa-care-eco_driving-DrivingStyleManager(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 589
    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->tripInfoUpdate()V

    return-void
.end method

.method public synthetic lambda$registerForCommunicationNotification$0$com-texa-care-eco_driving-DrivingStyleManager(Lcom/texa/carelib/communication/CommunicationStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->parkedCheck:Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;->dongleConnected:Ljava/lang/Boolean;

    .line 267
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->parkedCheck:Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;

    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/DrivingStyleManager;->onVehicleParked(Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;)V

    return-void
.end method

.method public synthetic lambda$registerForNotifications$10$com-texa-care-eco_driving-DrivingStyleManager(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 295
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->dataManagerSync:Lcom/texa/care/eco_driving/DataManagerConfigSync;

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/DataManagerConfigSync;->syncTempThr()V

    return-void
.end method

.method public synthetic lambda$registerForNotifications$12$com-texa-care-eco_driving-DrivingStyleManager(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iget-boolean v0, v0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldProcessValueUpdates:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->getTripID()Lcom/texa/care/eco_driving/TripID;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iget-boolean v0, v0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldWaitForTripIDUpdate:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->VEHICLE_SPEED:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->setVehicleSpeed()V

    .line 307
    :cond_1
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->setEngineSpeed()V

    .line 310
    :cond_2
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 311
    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->setEngineTemp()V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic lambda$registerForNotifications$4$com-texa-care-eco_driving-DrivingStyleManager(Lcom/texa/carelib/care/trips/TripEndInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mRxCurrentTrip:Lcom/texa/care/eco_driving/RxCurrentTrip;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/RxCurrentTrip;->getCurrentTrip()Lcom/texa/carelib/care/trips/CurrentTrip;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/texa/care/eco_driving/DrivingStyleManager;->observeTripStopInfo(Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/carelib/care/trips/TripEndInfo;)V

    return-void
.end method

.method public synthetic lambda$registerForNotifications$6$com-texa-care-eco_driving-DrivingStyleManager(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 287
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->dataManagerSync:Lcom/texa/care/eco_driving/DataManagerConfigSync;

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/DataManagerConfigSync;->syncAccThr()V

    return-void
.end method

.method public synthetic lambda$registerForNotifications$8$com-texa-care-eco_driving-DrivingStyleManager(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 291
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->dataManagerSync:Lcom/texa/care/eco_driving/DataManagerConfigSync;

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/DataManagerConfigSync;->syncBrakeThr()V

    return-void
.end method

.method public setCommunication(Lcom/texa/carelib/communication/Communication;)V
    .locals 1

    .line 203
    iput-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->communication:Lcom/texa/carelib/communication/Communication;

    if-eqz p1, :cond_0

    .line 205
    new-instance v0, Lcom/texa/care/eco_driving/RxCommunication;

    invoke-direct {v0, p1}, Lcom/texa/care/eco_driving/RxCommunication;-><init>(Lcom/texa/carelib/communication/Communication;)V

    iput-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mRxCommunication:Lcom/texa/care/eco_driving/RxCommunication;

    .line 206
    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->registerForCommunicationNotification()V

    goto :goto_0

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->communicationDisposable:Lio/reactivex/disposables/Disposable;

    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/DrivingStyleManager;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    :goto_0
    return-void
.end method

.method public setDrivingProfile(Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->drivingProfile:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    return-void
.end method

.method public setScoreUpdateRate(D)V
    .locals 0

    .line 740
    iput-wide p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->scoreUpdateRate:D

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 546
    invoke-virtual {p0, v0, v0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->start(ZZ)V

    return-void
.end method

.method public start(ZZ)V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iget-boolean v0, v0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->hasStarted:Z

    if-eqz v0, :cond_0

    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->hasStarted:Z

    .line 523
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iput-boolean p1, v0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldPollTripData:Z

    .line 524
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iput-boolean p2, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldPollValues:Z

    .line 526
    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->setupStartValues()V

    .line 528
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->currentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->dataManagerConfiguration:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->vehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    if-eqz p1, :cond_2

    .line 529
    new-instance p1, Lcom/texa/care/eco_driving/RxCurrentTrip;

    iget-object p2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->currentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-direct {p1, p2}, Lcom/texa/care/eco_driving/RxCurrentTrip;-><init>(Lcom/texa/carelib/care/trips/CurrentTrip;)V

    iput-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mRxCurrentTrip:Lcom/texa/care/eco_driving/RxCurrentTrip;

    .line 530
    new-instance p1, Lcom/texa/care/eco_driving/RxDataManagerConfiguration;

    iget-object p2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->dataManagerConfiguration:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    invoke-direct {p1, p2}, Lcom/texa/care/eco_driving/RxDataManagerConfiguration;-><init>(Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;)V

    iput-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->mRxDataManagerConfiguration:Lcom/texa/care/eco_driving/RxDataManagerConfiguration;

    .line 531
    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->registerForNotifications()V

    .line 533
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->currentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-interface {p1}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripStatus()Lcom/texa/carelib/care/trips/TripStatus;

    move-result-object p1

    sget-object p2, Lcom/texa/carelib/care/trips/TripStatus;->InProgress:Lcom/texa/carelib/care/trips/TripStatus;

    if-ne p1, p2, :cond_2

    .line 534
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iput-boolean v1, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldProcessValueUpdates:Z

    .line 535
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iput-boolean v1, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldProcessTripInfo:Z

    .line 536
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iput-boolean v1, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldWaitForTripIDUpdate:Z

    .line 537
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iput-boolean v1, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->tripInProgress:Z

    .line 539
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iget-boolean p1, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldPollTripData:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->beginTripPolling()V

    .line 540
    :cond_1
    iget-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iget-boolean p1, p1, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldPollValues:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->beginValuesPolling()V

    :cond_2
    return-void
.end method

.method public stop()V
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iget-boolean v0, v0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->hasStarted:Z

    if-nez v0, :cond_0

    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->hasStarted:Z

    .line 501
    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->unregisterForNotifications()V

    .line 502
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iput-boolean v1, v0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldProcessValueUpdates:Z

    .line 503
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager;->flags:Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;

    iput-boolean v1, v0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldProcessTripInfo:Z

    .line 504
    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->endTripPolling()V

    .line 505
    invoke-direct {p0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->endValuesPolling()V

    return-void
.end method
