.class public abstract Lcom/texa/care/eco_driving/score/BaseScore;
.super Ljava/lang/Object;
.source "BaseScore.java"

# interfaces
.implements Lcom/texa/care/eco_driving/score/IScore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;,
        Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;
    }
.end annotation


# static fields
.field private static callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/texa/care/eco_driving/EcoDrivingCallback;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final MAX_SCORE:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max_score"
    .end annotation
.end field

.field private distance:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field protected events:Ljava/util/List;
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

.field private interval:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field protected lastNotifiedScore:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/care/eco_driving/ScoreListener;",
            ">;"
        }
    .end annotation
.end field

.field private locationProvider:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

.field private final name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private score:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private scoreConfigurationProvider:Lcom/texa/care/eco_driving/score/ScoreConfigurationProvider;

.field private scoreContextProvider:Lcom/texa/care/eco_driving/ScoreContextProvider;

.field protected scoreUpdates:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/texa/care/eco_driving/utils/jsonSerializer/ExcludedFromEventHub;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/texa/care/eco_driving/score/BaseScore;->callbacks:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/care/eco_driving/score/BaseScore;->events:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/care/eco_driving/score/BaseScore;->scoreUpdates:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/care/eco_driving/score/BaseScore;->listeners:Ljava/util/List;

    .line 83
    iput-object p1, p0, Lcom/texa/care/eco_driving/score/BaseScore;->name:Ljava/lang/String;

    .line 84
    iput p2, p0, Lcom/texa/care/eco_driving/score/BaseScore;->MAX_SCORE:I

    const/4 p1, -0x1

    .line 85
    iput p1, p0, Lcom/texa/care/eco_driving/score/BaseScore;->score:I

    .line 86
    iput p1, p0, Lcom/texa/care/eco_driving/score/BaseScore;->lastNotifiedScore:I

    const-wide/16 p1, 0x0

    .line 87
    iput-wide p1, p0, Lcom/texa/care/eco_driving/score/BaseScore;->interval:J

    const/4 p1, 0x0

    .line 88
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/care/eco_driving/score/BaseScore;->distance:Ljava/lang/Float;

    return-void
.end method

.method public static getCallbacks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/texa/care/eco_driving/EcoDrivingCallback;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 118
    sget-object v0, Lcom/texa/care/eco_driving/score/BaseScore;->callbacks:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static registerCallback(Lcom/texa/care/eco_driving/EcoDrivingCallback;)V
    .locals 2

    .line 110
    sget-object v0, Lcom/texa/care/eco_driving/score/BaseScore;->callbacks:Ljava/util/Map;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static unRegisterCallback(Lcom/texa/care/eco_driving/EcoDrivingCallback;)V
    .locals 1

    .line 114
    sget-object v0, Lcom/texa/care/eco_driving/score/BaseScore;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method addEvent(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;)Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/BaseScore;->events:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {p0, p1}, Lcom/texa/care/eco_driving/score/BaseScore;->notifyEvent(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;)V

    return-object p1
.end method

.method protected abstract createScoreUpdateEvent()Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;
.end method

.method public getContextDate()Ljava/util/Date;
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->getScoreContextProvider()Lcom/texa/care/eco_driving/ScoreContextProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->getScoreContextProvider()Lcom/texa/care/eco_driving/ScoreContextProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/care/eco_driving/ScoreContextProvider;->getDate()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getDistance()Ljava/lang/Float;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/BaseScore;->distance:Ljava/lang/Float;

    return-object v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/BaseScore;->events:Ljava/util/List;

    return-object v0
.end method

.method public getInterval()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/texa/care/eco_driving/score/BaseScore;->interval:J

    return-wide v0
.end method

.method public getLastNotifiedScore()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/texa/care/eco_driving/score/BaseScore;->lastNotifiedScore:I

    return v0
.end method

.method public getLocationProvider()Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/BaseScore;->locationProvider:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/BaseScore;->name:Ljava/lang/String;

    return-object v0
.end method

.method getNormScore()D
    .locals 4

    .line 96
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->getScore()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/texa/care/eco_driving/score/BaseScore;->MAX_SCORE:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getOdometer()F
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->getScoreContextProvider()Lcom/texa/care/eco_driving/ScoreContextProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->getScoreContextProvider()Lcom/texa/care/eco_driving/ScoreContextProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/care/eco_driving/ScoreContextProvider;->getOdometer()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0
.end method

.method public getScore()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/texa/care/eco_driving/score/BaseScore;->score:I

    return v0
.end method

.method public getScoreConfigurationProvider()Lcom/texa/care/eco_driving/score/ScoreConfigurationProvider;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/BaseScore;->scoreConfigurationProvider:Lcom/texa/care/eco_driving/score/ScoreConfigurationProvider;

    return-object v0
.end method

.method public getScoreContextProvider()Lcom/texa/care/eco_driving/ScoreContextProvider;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/BaseScore;->scoreContextProvider:Lcom/texa/care/eco_driving/ScoreContextProvider;

    return-object v0
.end method

.method public getScoreUpdates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/BaseScore;->scoreUpdates:Ljava/util/List;

    return-object v0
.end method

.method public getTripId()Lcom/texa/care/eco_driving/TripID;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->getScoreContextProvider()Lcom/texa/care/eco_driving/ScoreContextProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->getScoreContextProvider()Lcom/texa/care/eco_driving/ScoreContextProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/care/eco_driving/ScoreContextProvider;->getTripID()Lcom/texa/care/eco_driving/TripID;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTripNumber()Ljava/lang/Long;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->getScoreContextProvider()Lcom/texa/care/eco_driving/ScoreContextProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->getScoreContextProvider()Lcom/texa/care/eco_driving/ScoreContextProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/care/eco_driving/ScoreContextProvider;->getTripNumber()Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->getScore()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method manageScoreUpdate()Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;
    .locals 9

    .line 145
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->getScore()I

    move-result v0

    .line 148
    iget v1, p0, Lcom/texa/care/eco_driving/score/BaseScore;->lastNotifiedScore:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    if-eq v0, v3, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_0
    int-to-double v3, v0

    int-to-double v5, v1

    sub-double/2addr v3, v5

    .line 151
    iget v1, p0, Lcom/texa/care/eco_driving/score/BaseScore;->MAX_SCORE:I

    int-to-double v5, v1

    div-double/2addr v3, v5

    .line 152
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->getScoreConfigurationProvider()Lcom/texa/care/eco_driving/score/ScoreConfigurationProvider;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->getScoreConfigurationProvider()Lcom/texa/care/eco_driving/score/ScoreConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/care/eco_driving/score/ScoreConfigurationProvider;->getScoreUpdateRate()D

    move-result-wide v5

    goto :goto_0

    :cond_1
    const-wide v5, 0x3fa999999999999aL    # 0.05

    .line 153
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v1, v7, v5

    if-ltz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->createScoreUpdateEvent()Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;

    move-result-object v1

    .line 158
    iput v0, p0, Lcom/texa/care/eco_driving/score/BaseScore;->lastNotifiedScore:I

    .line 159
    iget-object v2, p0, Lcom/texa/care/eco_driving/score/BaseScore;->scoreUpdates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {p0, v1}, Lcom/texa/care/eco_driving/score/BaseScore;->notifyScoreUpdate(Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v2, v3, v5

    if-ltz v2, :cond_4

    .line 169
    iget-object v2, p0, Lcom/texa/care/eco_driving/score/BaseScore;->listeners:Ljava/util/List;

    .line 170
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/care/eco_driving/ScoreListener;

    .line 171
    iget v4, p0, Lcom/texa/care/eco_driving/score/BaseScore;->lastNotifiedScore:I

    iget v5, p0, Lcom/texa/care/eco_driving/score/BaseScore;->MAX_SCORE:I

    invoke-interface {v3, p0, v4, v0, v5}, Lcom/texa/care/eco_driving/ScoreListener;->update(Lcom/texa/care/eco_driving/score/BaseScore;III)V

    goto :goto_3

    :cond_4
    return-object v1
.end method

.method notifyEvent(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;)V
    .locals 3

    .line 194
    sget-object v0, Lcom/texa/care/eco_driving/score/BaseScore;->callbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    check-cast v1, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 196
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/care/eco_driving/EcoDrivingCallback;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/texa/care/eco_driving/EcoDrivingCallback;->drivingEventCall(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method notifyScoreUpdate(Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;)V
    .locals 3

    .line 185
    sget-object v0, Lcom/texa/care/eco_driving/score/BaseScore;->callbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    check-cast v1, Ljava/util/Map$Entry;

    .line 186
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 187
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/care/eco_driving/EcoDrivingCallback;

    invoke-interface {v1, p1}, Lcom/texa/care/eco_driving/EcoDrivingCallback;->scoreUpdateCall(Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lcom/texa/care/eco_driving/score/BaseScore;->score:I

    const-wide/16 v1, 0x0

    .line 125
    iput-wide v1, p0, Lcom/texa/care/eco_driving/score/BaseScore;->interval:J

    .line 126
    iget-object v1, p0, Lcom/texa/care/eco_driving/score/BaseScore;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 127
    iget-object v1, p0, Lcom/texa/care/eco_driving/score/BaseScore;->scoreUpdates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 128
    iput v0, p0, Lcom/texa/care/eco_driving/score/BaseScore;->lastNotifiedScore:I

    .line 129
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->manageScoreUpdate()Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;

    return-void
.end method

.method public setDistance(Ljava/lang/Float;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/texa/care/eco_driving/score/BaseScore;->distance:Ljava/lang/Float;

    return-void
.end method

.method public setInterval(J)V
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/texa/care/eco_driving/score/BaseScore;->interval:J

    return-void
.end method

.method public setLocationProvider(Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/texa/care/eco_driving/score/BaseScore;->locationProvider:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    return-void
.end method

.method public setScore(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/texa/care/eco_driving/score/BaseScore;->score:I

    return-void
.end method

.method public setScoreConfigurationProvider(Lcom/texa/care/eco_driving/score/ScoreConfigurationProvider;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/texa/care/eco_driving/score/BaseScore;->scoreConfigurationProvider:Lcom/texa/care/eco_driving/score/ScoreConfigurationProvider;

    return-void
.end method

.method public setScoreContextProvider(Lcom/texa/care/eco_driving/ScoreContextProvider;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/texa/care/eco_driving/score/BaseScore;->scoreContextProvider:Lcom/texa/care/eco_driving/ScoreContextProvider;

    return-void
.end method
