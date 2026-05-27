.class public Lcom/texa/carelib/care/trips/TripInfo;
.super Lcom/texa/carelib/core/ObservableObjectBase;
.source "TripInfo.java"

# interfaces
.implements Lcom/texa/carelib/core/ObservableObject;


# static fields
.field public static final PROPERTY_TRIP_BEGIN_INFO:Ljava/lang/String; = "com.texa.carelib.care.trips.TripInfo#PROPERTY_TRIP_BEGIN_INFO"

.field public static final PROPERTY_TRIP_END_INFO:Ljava/lang/String; = "com.texa.carelib.care.trips.TripInfo#PROPERTY_TRIP_END_INFO"

.field public static final PROPERTY_TRIP_ERROR_INFO:Ljava/lang/String; = "com.texa.carelib.care.trips.TripInfo#PROPERTY_TRIP_ERROR_INFO"

.field public static final PROPERTY_TRIP_STATISTICS_INFO:Ljava/lang/String; = "com.texa.carelib.care.trips.TripInfo#PROPERTY_TRIP_STATISTICS_INFO"


# instance fields
.field private mTripBeginInfo:Lcom/texa/carelib/care/trips/TripBeginInfo;

.field private mTripEndInfo:Lcom/texa/carelib/care/trips/TripEndInfo;

.field private mTripID:Ljava/math/BigInteger;

.field private mTripStatisticsInfo:Lcom/texa/carelib/care/trips/TripStatisticsInfo;

.field private mTripStatus:Lcom/texa/carelib/care/trips/TripStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/texa/carelib/core/ObservableObjectBase;-><init>()V

    .line 51
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/texa/carelib/care/trips/TripInfo;->mTripID:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getRawData()[B
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/texa/carelib/core/utils/CareStruct;

    .line 147
    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripInfo;->mTripBeginInfo:Lcom/texa/carelib/care/trips/TripBeginInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripInfo;->mTripEndInfo:Lcom/texa/carelib/care/trips/TripEndInfo;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripInfo;->mTripStatisticsInfo:Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/texa/carelib/utils/internal/CareStructJoiner;->join([Lcom/texa/carelib/core/utils/CareStruct;)[B

    move-result-object v0

    return-object v0
.end method

.method public getTripBeginInfo()Lcom/texa/carelib/care/trips/TripBeginInfo;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripInfo;->mTripBeginInfo:Lcom/texa/carelib/care/trips/TripBeginInfo;

    return-object v0
.end method

.method public getTripEndInfo()Lcom/texa/carelib/care/trips/TripEndInfo;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripInfo;->mTripEndInfo:Lcom/texa/carelib/care/trips/TripEndInfo;

    return-object v0
.end method

.method public getTripID()Ljava/math/BigInteger;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripInfo;->mTripID:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getTripStatisticsInfo()Lcom/texa/carelib/care/trips/TripStatisticsInfo;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripInfo;->mTripStatisticsInfo:Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    return-object v0
.end method

.method public getTripStatus()Lcom/texa/carelib/care/trips/TripStatus;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripInfo;->mTripStatus:Lcom/texa/carelib/care/trips/TripStatus;

    return-object v0
.end method

.method public setTripBeginInfo(Lcom/texa/carelib/care/trips/TripBeginInfo;)Lcom/texa/carelib/care/trips/TripInfo;
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripInfo;->mTripBeginInfo:Lcom/texa/carelib/care/trips/TripBeginInfo;

    .line 88
    iput-object p1, p0, Lcom/texa/carelib/care/trips/TripInfo;->mTripBeginInfo:Lcom/texa/carelib/care/trips/TripBeginInfo;

    .line 89
    invoke-static {p1}, Lcom/texa/carelib/care/trips/internal/TripIDProvider;->getTripID(Lcom/texa/carelib/care/trips/TripBeginInfo;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/trips/TripInfo;->mTripID:Ljava/math/BigInteger;

    .line 90
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripInfo;->mTripBeginInfo:Lcom/texa/carelib/care/trips/TripBeginInfo;

    const-string v2, "com.texa.carelib.care.trips.TripInfo#PROPERTY_TRIP_BEGIN_INFO"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/TripInfo;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-object p0
.end method

.method public setTripEndInfo(Lcom/texa/carelib/care/trips/TripEndInfo;)Lcom/texa/carelib/care/trips/TripInfo;
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripInfo;->mTripEndInfo:Lcom/texa/carelib/care/trips/TripEndInfo;

    .line 115
    iput-object p1, p0, Lcom/texa/carelib/care/trips/TripInfo;->mTripEndInfo:Lcom/texa/carelib/care/trips/TripEndInfo;

    .line 116
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripInfo;->mTripEndInfo:Lcom/texa/carelib/care/trips/TripEndInfo;

    const-string v2, "com.texa.carelib.care.trips.TripInfo#PROPERTY_TRIP_END_INFO"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/TripInfo;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-object p0
.end method

.method public setTripStatisticsInfo(Lcom/texa/carelib/care/trips/TripStatisticsInfo;)Lcom/texa/carelib/care/trips/TripInfo;
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/texa/carelib/care/trips/TripInfo;->mTripStatisticsInfo:Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    .line 141
    iput-object p1, p0, Lcom/texa/carelib/care/trips/TripInfo;->mTripStatisticsInfo:Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    .line 142
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/trips/TripInfo;->mTripStatisticsInfo:Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    const-string v2, "com.texa.carelib.care.trips.TripInfo#PROPERTY_TRIP_STATISTICS_INFO"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/TripInfo;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-object p0
.end method

.method public setTripStatus(Lcom/texa/carelib/care/trips/TripStatus;)Lcom/texa/carelib/care/trips/TripInfo;
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/texa/carelib/care/trips/TripInfo;->mTripStatus:Lcom/texa/carelib/care/trips/TripStatus;

    return-object p0
.end method
