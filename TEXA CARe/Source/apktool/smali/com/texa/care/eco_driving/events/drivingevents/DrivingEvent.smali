.class public abstract Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;
.super Ljava/lang/Object;
.source "DrivingEvent.java"


# static fields
.field public static final UPDATE_LOCATION_DISPOSABLE_KEY:Ljava/lang/String; = "UPDATE_LOCATION_DISPOSABLE_KEY"


# instance fields
.field private final distance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field protected final extra:Ljava/util/HashMap;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final hardwareId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final interval:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private isUpdate:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final locationRequest:Lcom/google/android/gms/location/LocationRequest;

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

.field private final odometer:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private position:Landroid/location/Location;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final readableType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final rideId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final score:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final time:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final tripNumber:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private uuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ZcX_gb6HTUz1WOsZx0v2Ai1K02A(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;Landroid/location/Location;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->filterPosition(Landroid/location/Location;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eOEhZBMnSOw_WICzF6gI5M7baLg(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->updateEvent()V

    return-void
.end method

.method public static synthetic $r8$lambda$xYQ1tQoRUQhcThgw-PlQxoaGrJ8(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->setLocation(Landroid/location/Location;)V

    return-void
.end method

.method public constructor <init>(Lcom/texa/care/eco_driving/score/BaseScore;)V
    .locals 1

    .line 101
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/score/BaseScore;->getContextDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;-><init>(Ljava/util/Date;Lcom/texa/care/eco_driving/score/BaseScore;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;ILjava/lang/Long;FLjava/lang/String;JFLjava/lang/String;)V
    .locals 3

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->extra:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->mDisposableHashMap:Ljava/util/HashMap;

    .line 94
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const/16 v1, 0x64

    .line 97
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 119
    iput-object p1, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->time:Ljava/util/Date;

    .line 120
    iput p2, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->score:I

    .line 121
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->uuid:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->tripNumber:Ljava/lang/Long;

    .line 123
    iput p4, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->odometer:F

    .line 124
    iput-object p5, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->rideId:Ljava/lang/String;

    .line 125
    iput-wide p6, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->interval:J

    .line 126
    iput p8, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->distance:F

    .line 127
    iput-object p9, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->hardwareId:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->readableType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Lcom/texa/care/eco_driving/score/BaseScore;)V
    .locals 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->extra:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->mDisposableHashMap:Ljava/util/HashMap;

    .line 94
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const/16 v1, 0x64

    .line 97
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 105
    iput-object p1, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->time:Ljava/util/Date;

    .line 106
    invoke-virtual {p2}, Lcom/texa/care/eco_driving/score/BaseScore;->getScore()I

    move-result p1

    iput p1, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->score:I

    .line 107
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->uuid:Ljava/lang/String;

    .line 108
    invoke-virtual {p2}, Lcom/texa/care/eco_driving/score/BaseScore;->getTripNumber()Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->tripNumber:Ljava/lang/Long;

    .line 109
    invoke-virtual {p2}, Lcom/texa/care/eco_driving/score/BaseScore;->getOdometer()F

    move-result p1

    iput p1, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->odometer:F

    .line 110
    invoke-virtual {p2}, Lcom/texa/care/eco_driving/score/BaseScore;->getTripId()Lcom/texa/care/eco_driving/TripID;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/texa/care/eco_driving/score/BaseScore;->getTripId()Lcom/texa/care/eco_driving/TripID;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/TripID;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->rideId:Ljava/lang/String;

    .line 111
    invoke-virtual {p2}, Lcom/texa/care/eco_driving/score/BaseScore;->getInterval()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->interval:J

    .line 112
    invoke-virtual {p2}, Lcom/texa/care/eco_driving/score/BaseScore;->getDistance()Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/texa/care/eco_driving/score/BaseScore;->getDistance()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_1

    :cond_1
    const/high16 p1, -0x40800000    # -1.0f

    :goto_1
    iput p1, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->distance:F

    .line 113
    invoke-virtual {p2}, Lcom/texa/care/eco_driving/score/BaseScore;->getTripId()Lcom/texa/care/eco_driving/TripID;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/texa/care/eco_driving/score/BaseScore;->getTripId()Lcom/texa/care/eco_driving/TripID;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/TripID;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->hardwareId:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->readableType:Ljava/lang/String;

    return-void
.end method

.method private filterPosition(Landroid/location/Location;)Ljava/lang/Boolean;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->position:Landroid/location/Location;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    iget-object v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->position:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$acquiredPosition$0(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 166
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "EcoDriving position Error: %s"

    .line 165
    invoke-static {p0, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private setLocation(Landroid/location/Location;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->position:Landroid/location/Location;

    return-void
.end method

.method private updateEvent()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->position:Landroid/location/Location;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->isUpdate:Z

    .line 180
    :try_start_0
    invoke-static {}, Lcom/texa/care/eco_driving/score/BaseScore;->getCallbacks()Ljava/util/Map;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/care/eco_driving/EcoDrivingCallback;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 183
    invoke-interface {v1, p0, v2}, Lcom/texa/care/eco_driving/EcoDrivingCallback;->drivingEventCall(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;Z)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    return-void
.end method


# virtual methods
.method public acquiredPosition(Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->mDisposableHashMap:Ljava/util/HashMap;

    const-string v1, "UPDATE_LOCATION_DISPOSABLE_KEY"

    invoke-static {v0, v1}, Lcom/texa/care/eco_driving/Utils;->safeDispose(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->mDisposableHashMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {p1, v2}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->getUpdatedLocation(Lcom/google/android/gms/location/LocationRequest;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v2, 0x5

    invoke-virtual {p1, v2, v3}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 164
    invoke-virtual {p1, v2, v3, v4}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent$$ExternalSyntheticLambda3;-><init>(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;)V

    invoke-virtual {p1, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent$$ExternalSyntheticLambda1;-><init>(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;)V

    sget-object v3, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent$$ExternalSyntheticLambda2;

    new-instance v4, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent$$ExternalSyntheticLambda0;-><init>(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;)V

    .line 165
    invoke-virtual {p1, v2, v3, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 163
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public addExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->extra:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 5

    .line 143
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->name()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getPosition()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getPosition()Landroid/location/Location;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/care/eco_driving/Utils;->asString(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "---"

    .line 147
    :goto_0
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/care/eco_driving/Utils;->asString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " loc: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " time: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistance()F
    .locals 1

    .line 78
    iget v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->distance:F

    return v0
.end method

.method public getHardwareId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->hardwareId:Ljava/lang/String;

    return-object v0
.end method

.method public getInterval()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->interval:J

    return-wide v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 153
    invoke-static {}, Lcom/texa/care/eco_driving/Utils;->buildGSONInstance()Lcom/google/gson/Gson;

    move-result-object v0

    .line 154
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOdometer()F
    .locals 1

    .line 51
    iget v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->odometer:F

    return v0
.end method

.method public getPosition()Landroid/location/Location;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->position:Landroid/location/Location;

    return-object v0
.end method

.method public getReadableType()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->readableType:Ljava/lang/String;

    return-object v0
.end method

.method public getRideId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->rideId:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->score:I

    return v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->time:Ljava/util/Date;

    return-object v0
.end method

.method public getTripNumber()Ljava/lang/Long;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->tripNumber:Ljava/lang/Long;

    return-object v0
.end method

.method public abstract getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isUpdate()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->isUpdate:Z

    return v0
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->uuid:Ljava/lang/String;

    return-void
.end method
