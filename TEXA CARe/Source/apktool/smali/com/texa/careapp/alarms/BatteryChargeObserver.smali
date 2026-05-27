.class public Lcom/texa/careapp/alarms/BatteryChargeObserver;
.super Ljava/lang/Object;
.source "BatteryChargeObserver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BatteryChargeObserver"

.field public static final VOLTAGE_TH1:F = 12.2f

.field public static final VOLTAGE_TH2:F = 12.9f

.field public static final VOLTAGE_TH3:F = 14.7f

.field public static final VOLTAGE_TH4:F = 16.5f


# instance fields
.field private mAlarmStatus:Lcom/texa/careapp/model/AlarmStatus;

.field private mAlarmType:Lcom/texa/careapp/model/AlarmType;

.field private mCareCache:Lcom/texa/careapp/utils/CareCache;

.field private mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

.field private mCurrentVoltage:Ljava/lang/Float;

.field private mDataHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/texa/careapp/model/VehicleAlarm$AlarmData;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxVoltage:D

.field private mMinVoltage:D

.field private mNotifier:Lcom/texa/careapp/alarms/VehicleAlarmNotifier;

.field private final mVoltageObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/careapp/utils/CareCache;Lcom/texa/careapp/alarms/VehicleAlarmNotifier;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mDataHistory:Ljava/util/ArrayList;

    .line 54
    iput-object p1, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    .line 55
    iput-object p2, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mCareCache:Lcom/texa/careapp/utils/CareCache;

    .line 56
    iput-object p3, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mNotifier:Lcom/texa/careapp/alarms/VehicleAlarmNotifier;

    .line 58
    invoke-direct {p0}, Lcom/texa/careapp/alarms/BatteryChargeObserver;->createBatteryObservable()Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/texa/careapp/alarms/BatteryChargeObserver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/texa/careapp/alarms/BatteryChargeObserver$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/alarms/BatteryChargeObserver;)V

    .line 59
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/texa/careapp/alarms/BatteryChargeObserver$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/texa/careapp/alarms/BatteryChargeObserver$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/alarms/BatteryChargeObserver;)V

    .line 60
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mVoltageObservable:Lio/reactivex/Observable;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/alarms/BatteryChargeObserver;)Lcom/texa/carelib/care/trips/CurrentTrip;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createBatteryObservable()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 159
    new-instance v0, Lcom/texa/careapp/alarms/BatteryChargeObserver$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/alarms/BatteryChargeObserver$1;-><init>(Lcom/texa/careapp/alarms/BatteryChargeObserver;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private loadTripInfo()V
    .locals 2

    .line 146
    sget-object v0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->TAG:Ljava/lang/String;

    const-string v1, "loading trip stop infos"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    sget-object v1, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;->End:Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/trips/CurrentTrip;->loadTripInfo(Ljava/util/EnumSet;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateMaxVoltage()V
    .locals 4

    .line 138
    iget-wide v0, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mMaxVoltage:D

    iget-object v2, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mCurrentVoltage:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mMaxVoltage:D

    return-void
.end method

.method private updateMinVoltage()V
    .locals 4

    .line 134
    iget-wide v0, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mMinVoltage:D

    iget-object v2, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mCurrentVoltage:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mMinVoltage:D

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$com-texa-careapp-alarms-BatteryChargeObserver(Ljava/lang/Float;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mDataHistory:Ljava/util/ArrayList;

    new-instance v1, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {v1, p1}, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;-><init>(F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic lambda$observeBatteryLevel$1$com-texa-careapp-alarms-BatteryChargeObserver(Ljava/lang/Float;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    sget-object p1, Lcom/texa/careapp/alarms/BatteryChargeObserver$2;->$SwitchMap$com$texa$careapp$model$AlarmStatus:[I

    iget-object v0, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mAlarmStatus:Lcom/texa/careapp/model/AlarmStatus;

    invoke-virtual {v0}, Lcom/texa/careapp/model/AlarmStatus;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 82
    :cond_0
    sget-object p1, Lcom/texa/careapp/utils/BatteryLevel;->GREEN:Lcom/texa/careapp/utils/BatteryLevel;

    goto :goto_0

    .line 79
    :cond_1
    sget-object p1, Lcom/texa/careapp/utils/BatteryLevel;->YELLOW:Lcom/texa/careapp/utils/BatteryLevel;

    goto :goto_0

    .line 76
    :cond_2
    sget-object p1, Lcom/texa/careapp/utils/BatteryLevel;->RED:Lcom/texa/careapp/utils/BatteryLevel;

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mCareCache:Lcom/texa/careapp/utils/CareCache;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/CareCache;->putBatteryLevel(Lcom/texa/careapp/utils/BatteryLevel;)V

    .line 89
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public observeBatteryLevel()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/utils/BatteryLevel;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mVoltageObservable:Lio/reactivex/Observable;

    new-instance v1, Lcom/texa/careapp/alarms/BatteryChargeObserver$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/alarms/BatteryChargeObserver$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/alarms/BatteryChargeObserver;)V

    .line 71
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mCareCache:Lcom/texa/careapp/utils/CareCache;

    .line 91
    invoke-virtual {v1}, Lcom/texa/careapp/utils/CareCache;->getBatteryLevel()Lcom/texa/careapp/utils/BatteryLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method protected parseNewVoltageValue(Ljava/lang/Float;)V
    .locals 3

    .line 102
    iput-object p1, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mCurrentVoltage:Ljava/lang/Float;

    .line 103
    invoke-direct {p0}, Lcom/texa/careapp/alarms/BatteryChargeObserver;->updateMinVoltage()V

    .line 104
    invoke-direct {p0}, Lcom/texa/careapp/alarms/BatteryChargeObserver;->updateMaxVoltage()V

    .line 106
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v1, 0x41433333    # 12.2f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 107
    sget-object p1, Lcom/texa/careapp/model/AlarmStatus;->RED:Lcom/texa/careapp/model/AlarmStatus;

    iput-object p1, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mAlarmStatus:Lcom/texa/careapp/model/AlarmStatus;

    .line 108
    sget-object p1, Lcom/texa/careapp/model/AlarmType;->ALTERNATOR_LOW:Lcom/texa/careapp/model/AlarmType;

    iput-object p1, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mAlarmType:Lcom/texa/careapp/model/AlarmType;

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v1, 0x414e6666    # 12.9f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 111
    sget-object p1, Lcom/texa/careapp/model/AlarmStatus;->YELLOW:Lcom/texa/careapp/model/AlarmStatus;

    iput-object p1, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mAlarmStatus:Lcom/texa/careapp/model/AlarmStatus;

    .line 112
    sget-object p1, Lcom/texa/careapp/model/AlarmType;->ALTERNATOR_LOW:Lcom/texa/careapp/model/AlarmType;

    iput-object p1, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mAlarmType:Lcom/texa/careapp/model/AlarmType;

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v1, 0x416b3333    # 14.7f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 115
    sget-object p1, Lcom/texa/careapp/model/AlarmStatus;->GREEN:Lcom/texa/careapp/model/AlarmStatus;

    iput-object p1, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mAlarmStatus:Lcom/texa/careapp/model/AlarmStatus;

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x41840000    # 16.5f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    .line 119
    sget-object p1, Lcom/texa/careapp/model/AlarmStatus;->YELLOW:Lcom/texa/careapp/model/AlarmStatus;

    iput-object p1, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mAlarmStatus:Lcom/texa/careapp/model/AlarmStatus;

    .line 120
    sget-object p1, Lcom/texa/careapp/model/AlarmType;->ALTERNATOR_HIGH:Lcom/texa/careapp/model/AlarmType;

    iput-object p1, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mAlarmType:Lcom/texa/careapp/model/AlarmType;

    goto :goto_0

    .line 123
    :cond_3
    sget-object p1, Lcom/texa/careapp/model/AlarmStatus;->RED:Lcom/texa/careapp/model/AlarmStatus;

    iput-object p1, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mAlarmStatus:Lcom/texa/careapp/model/AlarmStatus;

    .line 124
    sget-object p1, Lcom/texa/careapp/model/AlarmType;->ALTERNATOR_HIGH:Lcom/texa/careapp/model/AlarmType;

    iput-object p1, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mAlarmType:Lcom/texa/careapp/model/AlarmType;

    .line 128
    :goto_0
    iget-object p1, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mAlarmType:Lcom/texa/careapp/model/AlarmType;

    if-eqz p1, :cond_4

    .line 129
    iget-object v0, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mNotifier:Lcom/texa/careapp/alarms/VehicleAlarmNotifier;

    iget-object v1, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mAlarmStatus:Lcom/texa/careapp/model/AlarmStatus;

    iget-object v2, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mDataHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1, v2}, Lcom/texa/careapp/alarms/VehicleAlarmNotifier;->notifyAlternatorAlarm(Lcom/texa/careapp/model/AlarmType;Lcom/texa/careapp/model/AlarmStatus;Ljava/util/ArrayList;)V

    :cond_4
    return-void
.end method

.method public start()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/texa/careapp/alarms/BatteryChargeObserver;->mVoltageObservable:Lio/reactivex/Observable;

    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method
