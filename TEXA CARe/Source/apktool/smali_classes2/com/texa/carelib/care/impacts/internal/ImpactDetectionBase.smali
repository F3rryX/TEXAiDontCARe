.class public abstract Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;
.super Lcom/texa/carelib/profile/ProfileSubModule;
.source "ImpactDetectionBase.java"

# interfaces
.implements Lcom/texa/carelib/care/impacts/ImpactDetection;
.implements Lcom/texa/carelib/care/impacts/ImpactDetectionConfiguration;


# static fields
.field public static final TAG:Ljava/lang/String; = "ImpactDetectionBase"


# instance fields
.field private mAccelerationEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/CrashReport;",
            ">;"
        }
    .end annotation
.end field

.field private mAccelerationEventsLPM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/CrashReport;",
            ">;"
        }
    .end annotation
.end field

.field private mAccelerationThreshold:Ljava/lang/Float;

.field private mDetectedImpacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/Impact;",
            ">;"
        }
    .end annotation
.end field

.field private final mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

.field private final mImpactDetectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/ImpactDetectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEnabled:Z

.field private mLastImpact:Lcom/texa/carelib/care/impacts/Impact;

.field private final mProfile:Lcom/texa/carelib/profile/Profile;

.field private mSpeedTimeout:Ljava/lang/Float;

.field private mSupportedFrequencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeOverThreshold:Ljava/lang/Float;

.field private mVerboseSamplesCount:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/texa/carelib/profile/ProfileSubModule;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mProfile:Lcom/texa/carelib/profile/Profile;

    .line 35
    iput-object p2, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mImpactDetectionListeners:Ljava/util/List;

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->resetData(Z)V

    return-void
.end method


# virtual methods
.method protected addAccelerationEvents(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/CrashReport;",
            ">;)V"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->getAccelerationEvents()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 199
    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mAccelerationEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 200
    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mAccelerationEvents:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 201
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->getAccelerationEvents()Ljava/util/List;

    move-result-object v1

    const-string v2, "com.texa.carelib.care.impacts.ImpactDetection#PROPERTY_ACCELERATION_EVENTS"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method protected addAccelerationEventsLPM(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/CrashReport;",
            ">;)V"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->getAccelerationEventsLPM()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 206
    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mAccelerationEventsLPM:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 207
    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mAccelerationEventsLPM:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->getAccelerationEventsLPM()Ljava/util/List;

    move-result-object v1

    const-string v2, "com.texa.carelib.care.impacts.ImpactDetection#PROPERTY_ACCELERATION_EVENTS_LPM"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method public addImpactDetectionListener(Lcom/texa/carelib/care/impacts/ImpactDetectionListener;)Lcom/texa/carelib/care/impacts/ImpactDetectionListener;
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mImpactDetectionListeners:Ljava/util/List;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mImpactDetectionListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected addImpacts(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/Impact;",
            ">;)V"
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->getImpacts()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 213
    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mDetectedImpacts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 214
    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mDetectedImpacts:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 215
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->getImpacts()Ljava/util/List;

    move-result-object v1

    const-string v2, "com.texa.carelib.care.impacts.ImpactDetection#PROPERTY_IMPACTS"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method protected clearAccelerationEvents()V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mAccelerationEvents:Ljava/util/List;

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mAccelerationEvents:Ljava/util/List;

    .line 221
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    iget-object v2, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mAccelerationEvents:Ljava/util/List;

    const-string v3, "com.texa.carelib.care.impacts.ImpactDetection#PROPERTY_ACCELERATION_EVENTS"

    invoke-direct {v1, p0, v3, v0, v2}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method protected clearAccelerationEventsLPM()V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mAccelerationEventsLPM:Ljava/util/List;

    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mAccelerationEventsLPM:Ljava/util/List;

    .line 227
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    iget-object v2, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mAccelerationEventsLPM:Ljava/util/List;

    const-string v3, "com.texa.carelib.care.impacts.ImpactDetection#PROPERTY_ACCELERATION_EVENTS_LPM"

    invoke-direct {v1, p0, v3, v0, v2}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method protected clearImpacts()V
    .locals 4

    .line 231
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mDetectedImpacts:Ljava/util/List;

    .line 232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mDetectedImpacts:Ljava/util/List;

    .line 233
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    iget-object v2, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mDetectedImpacts:Ljava/util/List;

    const-string v3, "com.texa.carelib.care.impacts.ImpactDetection#PROPERTY_IMPACTS"

    invoke-direct {v1, p0, v3, v0, v2}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method protected fireCrashDetected(Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;)V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mImpactDetectionListeners:Ljava/util/List;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mImpactDetectionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Lcom/texa/carelib/care/impacts/ImpactDetectionListener;

    .line 148
    iget-object v3, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mImpactDetectionListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 149
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 151
    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    .line 153
    invoke-virtual {v3, p1}, Lcom/texa/carelib/care/impacts/ImpactDetectionListener;->onImpactDetected(Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 149
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getAccelerationEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/CrashReport;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mAccelerationEvents:Ljava/util/List;

    return-object v0
.end method

.method public getAccelerationEventsLPM()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/CrashReport;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mAccelerationEventsLPM:Ljava/util/List;

    return-object v0
.end method

.method public getAccelerationThreshold()Ljava/lang/Float;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mAccelerationThreshold:Ljava/lang/Float;

    return-object v0
.end method

.method protected getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    return-object v0
.end method

.method public getImpacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/Impact;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mDetectedImpacts:Ljava/util/List;

    return-object v0
.end method

.method public getLastImpact()Lcom/texa/carelib/care/impacts/Impact;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mLastImpact:Lcom/texa/carelib/care/impacts/Impact;

    return-object v0
.end method

.method public getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-object v0
.end method

.method public getSpeedTimeout()Ljava/lang/Float;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mSpeedTimeout:Ljava/lang/Float;

    return-object v0
.end method

.method public getSupportedFrequencies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mSupportedFrequencies:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getTimeOverThreshold()Ljava/lang/Float;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mTimeOverThreshold:Ljava/lang/Float;

    return-object v0
.end method

.method public getVerboseReportSamplesCount()Ljava/lang/Long;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mVerboseSamplesCount:Ljava/lang/Long;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mIsEnabled:Z

    return v0
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 1

    .line 160
    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    .line 162
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 163
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->resetData(Z)V

    :cond_0
    return-void
.end method

.method public removeImpactDetectionListener(Lcom/texa/carelib/care/impacts/ImpactDetectionListener;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mImpactDetectionListeners:Ljava/util/List;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mImpactDetectionListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 141
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected resetData(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 174
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->setSupportedFrequencies(Ljava/util/Set;)V

    .line 175
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->setAccelerationThreshold(Ljava/lang/Float;)V

    const/4 p1, 0x0

    .line 176
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->setEnabled(Z)V

    .line 177
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->setTimeOverThreshold(Ljava/lang/Float;)V

    .line 178
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->setSpeedTimeout(Ljava/lang/Float;)V

    .line 179
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->setLastImpact(Lcom/texa/carelib/care/impacts/Impact;)V

    .line 180
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->clearImpacts()V

    .line 181
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->clearAccelerationEvents()V

    .line 182
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->clearAccelerationEventsLPM()V

    goto :goto_0

    .line 185
    :cond_0
    iput-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mAccelerationThreshold:Ljava/lang/Float;

    const/4 p1, 0x1

    .line 186
    iput-boolean p1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mIsEnabled:Z

    .line 187
    iput-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mTimeOverThreshold:Ljava/lang/Float;

    .line 188
    iput-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mSpeedTimeout:Ljava/lang/Float;

    .line 189
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mDetectedImpacts:Ljava/util/List;

    .line 190
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mAccelerationEvents:Ljava/util/List;

    .line 191
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mAccelerationEventsLPM:Ljava/util/List;

    .line 192
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mSupportedFrequencies:Ljava/util/Set;

    .line 193
    iput-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mLastImpact:Lcom/texa/carelib/care/impacts/Impact;

    :goto_0
    return-void
.end method

.method public setAccelerationThreshold(Ljava/lang/Float;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mAccelerationThreshold:Ljava/lang/Float;

    .line 56
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mAccelerationThreshold:Ljava/lang/Float;

    .line 57
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mAccelerationThreshold:Ljava/lang/Float;

    const-string v2, "com.texa.carelib.care.impacts.ImpactDetectionConfiguration#PROPERTY_ACCELERATION_THRESHOLD"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 102
    iget-boolean v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mIsEnabled:Z

    if-eq v0, p1, :cond_0

    .line 104
    iput-boolean p1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mIsEnabled:Z

    .line 105
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mIsEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "com.texa.carelib.care.impacts.ImpactDetection#PROPERTY_ENABLED"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_0
    return-void
.end method

.method protected setLastImpact(Lcom/texa/carelib/care/impacts/Impact;)V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mLastImpact:Lcom/texa/carelib/care/impacts/Impact;

    .line 249
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mLastImpact:Lcom/texa/carelib/care/impacts/Impact;

    .line 250
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    const-string v2, "com.texa.carelib.care.impacts.ImpactDetection#PROPERTY_LAST_IMPACT"

    invoke-direct {v1, p0, v2, v0, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method public setSpeedTimeout(Ljava/lang/Float;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mSpeedTimeout:Ljava/lang/Float;

    .line 68
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mSpeedTimeout:Ljava/lang/Float;

    .line 69
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mSpeedTimeout:Ljava/lang/Float;

    const-string v2, "com.texa.carelib.care.impacts.ImpactDetectionConfiguration#PROPERTY_SPEED_TIMEOUT"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method public setSupportedFrequencies(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mSupportedFrequencies:Ljava/util/Set;

    if-eq v0, p1, :cond_0

    .line 282
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mSupportedFrequencies:Ljava/util/Set;

    .line 283
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mSupportedFrequencies:Ljava/util/Set;

    const-string v2, "com.texa.carelib.care.impacts.ImpactDetection#PROPERTY_SUPPORTED_FREQUENCIES"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_0
    return-void
.end method

.method public setTimeOverThreshold(Ljava/lang/Float;)V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mTimeOverThreshold:Ljava/lang/Float;

    .line 80
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mTimeOverThreshold:Ljava/lang/Float;

    .line 81
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mTimeOverThreshold:Ljava/lang/Float;

    const-string v2, "com.texa.carelib.care.impacts.ImpactDetectionConfiguration#PROPERTY_TIME_OVER_THRESHOLD"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method protected setVerboseReportSamplesCount(Ljava/lang/Long;)V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mVerboseSamplesCount:Ljava/lang/Long;

    .line 91
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mVerboseSamplesCount:Ljava/lang/Long;

    .line 92
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->mVerboseSamplesCount:Ljava/lang/Long;

    const-string v2, "com.texa.carelib.care.impacts.ImpactDetectionConfiguration#PROPERTY_VERBOSE_REPORT_SAMPLES_COUNT"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method public simulateImpact(ILcom/texa/carelib/core/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/impacts/events/SimulateImpactCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 255
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Impact simulation is not supported."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
