.class abstract Lcom/texa/carelib/care/trips/internal/CurrentTripBase;
.super Lcom/texa/carelib/profile/ProfileSubModule;
.source "CurrentTripBase.java"

# interfaces
.implements Lcom/texa/carelib/care/trips/CurrentTrip;


# instance fields
.field private mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

.field private mProfile:Lcom/texa/carelib/profile/Profile;

.field private mTripBeginInfo:Lcom/texa/carelib/care/trips/TripBeginInfo;

.field private mTripEndInfo:Lcom/texa/carelib/care/trips/TripEndInfo;

.field private mTripID:Ljava/math/BigInteger;

.field private mTripStatisticsInfo:Lcom/texa/carelib/care/trips/TripStatisticsInfo;

.field private mTripStatus:Lcom/texa/carelib/care/trips/TripStatus;


# direct methods
.method constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/texa/carelib/profile/ProfileSubModule;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mProfile:Lcom/texa/carelib/profile/Profile;

    .line 52
    iput-object p2, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    const/4 p1, 0x0

    .line 53
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->resetData(Z)V

    return-void
.end method

.method private resetData(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 146
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->setTripID(Ljava/math/BigInteger;)V

    .line 147
    sget-object p1, Lcom/texa/carelib/care/trips/TripStatus;->Undef:Lcom/texa/carelib/care/trips/TripStatus;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->setTripStatus(Lcom/texa/carelib/care/trips/TripStatus;)V

    .line 148
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->setTripBeginInfo(Lcom/texa/carelib/care/trips/TripBeginInfo;)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->setTripEndInfo(Lcom/texa/carelib/care/trips/TripEndInfo;)V

    .line 150
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->setTripStatisticsInfo(Lcom/texa/carelib/care/trips/TripStatisticsInfo;)V

    goto :goto_0

    .line 152
    :cond_0
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripID:Ljava/math/BigInteger;

    .line 153
    sget-object p1, Lcom/texa/carelib/care/trips/TripStatus;->Undef:Lcom/texa/carelib/care/trips/TripStatus;

    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripStatus:Lcom/texa/carelib/care/trips/TripStatus;

    .line 154
    iput-object v0, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripBeginInfo:Lcom/texa/carelib/care/trips/TripBeginInfo;

    .line 155
    iput-object v0, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripEndInfo:Lcom/texa/carelib/care/trips/TripEndInfo;

    .line 156
    iput-object v0, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripStatisticsInfo:Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    :goto_0
    return-void
.end method


# virtual methods
.method protected getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    return-object v0
.end method

.method public getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-object v0
.end method

.method public getRawData()[B
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/texa/carelib/core/utils/CareStruct;

    .line 163
    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripBeginInfo:Lcom/texa/carelib/care/trips/TripBeginInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripEndInfo:Lcom/texa/carelib/care/trips/TripEndInfo;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripStatisticsInfo:Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/texa/carelib/utils/internal/CareStructJoiner;->join([Lcom/texa/carelib/core/utils/CareStruct;)[B

    move-result-object v0

    return-object v0
.end method

.method public getTripBeginInfo()Lcom/texa/carelib/care/trips/TripBeginInfo;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripBeginInfo:Lcom/texa/carelib/care/trips/TripBeginInfo;

    return-object v0
.end method

.method public getTripEndInfo()Lcom/texa/carelib/care/trips/TripEndInfo;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripEndInfo:Lcom/texa/carelib/care/trips/TripEndInfo;

    return-object v0
.end method

.method public getTripID()Ljava/math/BigInteger;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripID:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getTripStatisticsInfo()Lcom/texa/carelib/care/trips/TripStatisticsInfo;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripStatisticsInfo:Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    return-object v0
.end method

.method public final getTripStatus()Lcom/texa/carelib/care/trips/TripStatus;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripStatus:Lcom/texa/carelib/care/trips/TripStatus;

    return-object v0
.end method

.method public loadTripInfo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;->Begin:Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    sget-object v1, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;->End:Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    sget-object v2, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;->Statistics:Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->loadTripInfo(Ljava/util/EnumSet;)V

    return-void
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 1

    .line 135
    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    .line 136
    sget-object v0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-virtual {p1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 138
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->resetData(Z)V

    :goto_0
    return-void
.end method

.method public setTripBeginInfo(Lcom/texa/carelib/care/trips/TripBeginInfo;)V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripBeginInfo:Lcom/texa/carelib/care/trips/TripBeginInfo;

    .line 105
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripBeginInfo:Lcom/texa/carelib/care/trips/TripBeginInfo;

    .line 106
    invoke-static {p1}, Lcom/texa/carelib/care/trips/internal/TripIDProvider;->getTripID(Lcom/texa/carelib/care/trips/TripBeginInfo;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->setTripID(Ljava/math/BigInteger;)V

    .line 107
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripBeginInfo:Lcom/texa/carelib/care/trips/TripBeginInfo;

    const-string v2, "com.texa.carelib.care.trips.CurrentTrip#TRIP_BEGIN_INFO"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method public setTripEndInfo(Lcom/texa/carelib/care/trips/TripEndInfo;)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripEndInfo:Lcom/texa/carelib/care/trips/TripEndInfo;

    .line 118
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripEndInfo:Lcom/texa/carelib/care/trips/TripEndInfo;

    .line 119
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripEndInfo:Lcom/texa/carelib/care/trips/TripEndInfo;

    const-string v2, "com.texa.carelib.care.trips.CurrentTrip#TRIP_END_INFO"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method public setTripID(Ljava/math/BigInteger;)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripID:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripID:Ljava/math/BigInteger;

    .line 90
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripID:Ljava/math/BigInteger;

    .line 91
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripID:Ljava/math/BigInteger;

    const-string v2, "com.texa.carelib.care.trips.CurrentTrip#TRIP_ID"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_0
    return-void
.end method

.method public setTripStatisticsInfo(Lcom/texa/carelib/care/trips/TripStatisticsInfo;)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripStatisticsInfo:Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    .line 129
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripStatisticsInfo:Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    .line 130
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripStatisticsInfo:Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    const-string v2, "com.texa.carelib.care.trips.CurrentTrip#TRIP_STATISTICS_INFO"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method public setTripStatus(Lcom/texa/carelib/care/trips/TripStatus;)V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripStatus:Lcom/texa/carelib/care/trips/TripStatus;

    if-eq v0, p1, :cond_0

    .line 82
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripStatus:Lcom/texa/carelib/care/trips/TripStatus;

    .line 83
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->mTripStatus:Lcom/texa/carelib/care/trips/TripStatus;

    const-string v2, "com.texa.carelib.care.trips.CurrentTrip#TRIP_STATUS"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_0
    return-void
.end method
