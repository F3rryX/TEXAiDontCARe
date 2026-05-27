.class public abstract Lcom/texa/carelib/care/vehicle/internal/VehicleBase;
.super Lcom/texa/carelib/profile/ProfileSubModule;
.source "VehicleBase.java"

# interfaces
.implements Lcom/texa/carelib/care/vehicle/Vehicle;
.implements Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;
.implements Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;


# static fields
.field private static final TAG:Ljava/lang/String; = "VehicleBase"


# instance fields
.field private mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

.field private mAccessoryDiagnosisMode:I

.field private mAccessoryStatus:I

.field private mActiveSubscriptionCount:Ljava/lang/Integer;

.field private mDTCResolutionError:Lcom/texa/carelib/core/CareError;

.field private mDTCStore:Lcom/texa/carelib/care/vehicletroubles/internal/DTCStore;

.field private mDTCTranslationProgress:F

.field private mDTCTranslator:Lcom/texa/carelib/care/vehicletroubles/DTCTranslator;

.field private final mDiagnosisScheduler:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

.field private final mECUInTranslations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mECUScanProgress:F

.field private final mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

.field private mMaximumSubscriptionCount:Ljava/lang/Integer;

.field private mReceivedECUs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScanInterval:Ljava/lang/Long;

.field private mSupportedECUs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTripStatus:Lcom/texa/carelib/care/trips/TripStatus;

.field private mValueInfoCache:Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;

.field private final mVehicleListeners:Lcom/texa/carelib/core/internal/ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/internal/ListenerList<",
            "Lcom/texa/carelib/care/vehicle/VehicleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVehicleTroublesListeners:Lcom/texa/carelib/core/internal/ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/internal/ListenerList<",
            "Lcom/texa/carelib/care/vehicletroubles/VehicleTroublesListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/texa/carelib/profile/ProfileSubModule;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    .line 65
    iput-object p2, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    .line 66
    iput-object p3, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mDiagnosisScheduler:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    .line 68
    invoke-virtual {p3, p0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->attachDiagnosticParameterEngine(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;)V

    .line 70
    new-instance p1, Lcom/texa/carelib/core/internal/ListenerList;

    invoke-direct {p1}, Lcom/texa/carelib/core/internal/ListenerList;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mVehicleListeners:Lcom/texa/carelib/core/internal/ListenerList;

    .line 71
    new-instance p1, Lcom/texa/carelib/core/internal/ListenerList;

    invoke-direct {p1}, Lcom/texa/carelib/core/internal/ListenerList;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mVehicleTroublesListeners:Lcom/texa/carelib/core/internal/ListenerList;

    .line 72
    new-instance p1, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;

    invoke-direct {p1}, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mValueInfoCache:Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;

    const/16 p1, 0xff

    .line 74
    iput p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mAccessoryStatus:I

    .line 75
    sget-object p1, Lcom/texa/carelib/care/trips/TripStatus;->Undef:Lcom/texa/carelib/care/trips/TripStatus;

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mTripStatus:Lcom/texa/carelib/care/trips/TripStatus;

    const/4 p1, 0x0

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 76
    iput p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mAccessoryDiagnosisMode:I

    .line 78
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mReceivedECUs:Ljava/util/Map;

    .line 79
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mECUInTranslations:Ljava/util/Map;

    .line 81
    iput-object p2, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mActiveSubscriptionCount:Ljava/lang/Integer;

    .line 82
    iput-object p2, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mMaximumSubscriptionCount:Ljava/lang/Integer;

    return-void
.end method

.method private static calculateECUScanProgress(Ljava/util/Map;)F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)F"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 830
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 836
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    int-to-float p0, v0

    int-to-float v0, v1

    div-float/2addr p0, v0

    return p0
.end method

.method static filterDTCs(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/vehicletroubles/DTC;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/vehicletroubles/DTC;",
            ">;"
        }
    .end annotation

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 668
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 670
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 671
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/care/vehicletroubles/DTC;

    if-eqz v1, :cond_0

    .line 673
    invoke-virtual {v1}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getECU()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 674
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 676
    :cond_0
    sget-object v2, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "Invalid DTC: %s"

    invoke-static {v2, v1, v3}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getSupportedLamps()[Ljava/lang/Long;
    .locals 5

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mValueInfoCache:Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;

    invoke-virtual {v1}, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->getValues()Ljava/util/List;

    move-result-object v1

    .line 318
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    .line 319
    sget-object v3, Lcom/texa/carelib/care/vehicle/ValueDataType;->ENUM:Lcom/texa/carelib/care/vehicle/ValueDataType;

    invoke-virtual {v2}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->getType()Lcom/texa/carelib/care/vehicle/ValueDataType;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 320
    invoke-virtual {v2}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->getID()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 325
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 326
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Long;

    .line 327
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_2
    return-object v1
.end method

.method private isDiagnosisReady(II)Z
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    const/4 p2, 0x4

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFilterUnknownDTCEnabled()Z
    .locals 3

    .line 696
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_FILTER_UNKNOWN_DTC"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addVehicleListener(Lcom/texa/carelib/care/vehicle/VehicleListener;)Lcom/texa/carelib/care/vehicle/VehicleListener;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mVehicleListeners:Lcom/texa/carelib/core/internal/ListenerList;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/core/internal/ListenerList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public addVehicleTroublesListener(Lcom/texa/carelib/care/vehicletroubles/VehicleTroublesListener;)Lcom/texa/carelib/care/vehicletroubles/VehicleTroublesListener;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mVehicleTroublesListeners:Lcom/texa/carelib/core/internal/ListenerList;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/core/internal/ListenerList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public varargs beginUpdateValues(J[Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 230
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->beginUpdateValues(JLjava/util/Set;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 234
    new-instance p2, Lcom/texa/carelib/core/CareLibException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 232
    throw p1
.end method

.method protected calculateTranslationProgress(FLjava/util/Map;I)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;I)F"
        }
    .end annotation

    .line 804
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    return v0

    :cond_0
    int-to-float p2, p2

    const/high16 v1, 0x3f000000    # 0.5f

    div-float p2, v1, p2

    int-to-float p3, p3

    mul-float p3, p3, p2

    mul-float p1, p1, v1

    add-float/2addr p1, p3

    cmpl-float p2, p1, v0

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    return v0
.end method

.method protected clearDTCs()V
    .locals 4

    .line 689
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Clearing DTCs list."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 690
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getDTCs()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 691
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getDTCStore()Lcom/texa/carelib/care/vehicletroubles/internal/DTCStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/care/vehicletroubles/internal/DTCStore;->clear()V

    .line 692
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getDTCs()Ljava/util/List;

    move-result-object v2

    const-string v3, "com.texa.carelib.care.vehicletroubles.VehicleTroubles#PROPERTY_DTCS"

    invoke-direct {v1, p0, v3, v0, v2}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method public didReceiveDTCsForECU(Ljava/lang/Long;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/care/vehicletroubles/DTCDetail;",
            ">;)V"
        }
    .end annotation

    .line 768
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    .line 769
    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mReceivedECUs:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getReceivedECUs()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->calculateECUScanProgress(Ljava/util/Map;)F

    move-result v1

    .line 772
    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->setECUScanProgress(F)V

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v1

    if-nez v3, :cond_0

    .line 774
    sget-object v3, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->TAG:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "ECU scan has been completed."

    invoke-static {v3, v5, v4}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 778
    :cond_0
    iget-object v3, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mReceivedECUs:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getDTCStore()Lcom/texa/carelib/care/vehicletroubles/internal/DTCStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/texa/carelib/care/vehicletroubles/internal/DTCStore;->getECUCount()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->calculateTranslationProgress(FLjava/util/Map;I)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->setDTCTranslationProgress(F)V

    if-lez v0, :cond_1

    .line 781
    sget-object v1, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "Sending %1$d DTCs to translator..."

    invoke-static {v1, v0, v3}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 782
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->waitDTCsTranslationForECU(J)V

    .line 784
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getDTCTranslator()Lcom/texa/carelib/care/vehicletroubles/DTCTranslator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 787
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getDTCTranslator()Lcom/texa/carelib/care/vehicletroubles/DTCTranslator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2, p2}, Lcom/texa/carelib/care/vehicletroubles/DTCTranslator;->translateDTCsForECU(Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;JLjava/util/Map;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 789
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v3, 0x2

    const/4 v4, 0x7

    invoke-direct {p1, v3, v4}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/texa/carelib/core/CareError$Builder;->setException(Ljava/lang/Throwable;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    const-string p2, "Unable to translate DTCs."

    invoke-virtual {p1, p2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->updateDTC(Ljava/util/List;JLcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 794
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->updateDTC(Ljava/util/List;JLcom/texa/carelib/core/CareError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs endUpdateValues([Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 241
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->endUpdateValues(Ljava/util/Set;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 245
    new-instance v0, Lcom/texa/carelib/core/CareLibException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 243
    throw p1
.end method

.method protected varargs fireParametersUpdatedEvent([Ljava/lang/Long;)V
    .locals 2

    .line 487
    invoke-static {}, Lcom/texa/carelib/core/CarelibSchedulers;->mainThread()Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/care/vehicle/internal/VehicleBase;[Ljava/lang/Long;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;->schedule(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected fireSubscriptionStateChangedEvent([Ljava/lang/Long;[Lcom/texa/carelib/care/vehicle/SubscriptionState;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    .line 475
    invoke-static {}, Lcom/texa/carelib/core/CarelibSchedulers;->mainThread()Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda2;-><init>(Lcom/texa/carelib/care/vehicle/internal/VehicleBase;[Ljava/lang/Long;[Lcom/texa/carelib/care/vehicle/SubscriptionState;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;->schedule(Ljava/lang/Runnable;)V

    return-void
.end method

.method getAccessory()Lcom/texa/carelib/care/accessory/Accessory;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    return-object v0
.end method

.method public getAccessoryDiagnosisMode()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mAccessoryDiagnosisMode:I

    return v0
.end method

.method public getAccessoryStatus()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mAccessoryStatus:I

    return v0
.end method

.method public getActiveSubscriptionCount()Ljava/lang/Integer;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mActiveSubscriptionCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAvailableDataIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mValueInfoCache:Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;

    invoke-virtual {v0}, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->getAvailableDataIDs()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getDTCStore()Lcom/texa/carelib/care/vehicletroubles/internal/DTCStore;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mDTCStore:Lcom/texa/carelib/care/vehicletroubles/internal/DTCStore;

    if-nez v0, :cond_0

    .line 644
    new-instance v0, Lcom/texa/carelib/care/vehicletroubles/internal/DTCStore;

    invoke-direct {v0}, Lcom/texa/carelib/care/vehicletroubles/internal/DTCStore;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mDTCStore:Lcom/texa/carelib/care/vehicletroubles/internal/DTCStore;

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mDTCStore:Lcom/texa/carelib/care/vehicletroubles/internal/DTCStore;

    return-object v0
.end method

.method public getDTCTranslationProgress()F
    .locals 1

    .line 92
    iget v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mDTCTranslationProgress:F

    return v0
.end method

.method public getDTCTranslator()Lcom/texa/carelib/care/vehicletroubles/DTCTranslator;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mDTCTranslator:Lcom/texa/carelib/care/vehicletroubles/DTCTranslator;

    return-object v0
.end method

.method public getDTCs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/vehicletroubles/DTC;",
            ">;"
        }
    .end annotation

    .line 651
    invoke-direct {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->isFilterUnknownDTCEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getDTCStore()Lcom/texa/carelib/care/vehicletroubles/internal/DTCStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/care/vehicletroubles/internal/DTCStore;->getDTCList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->filterDTCs(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 655
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getDTCStore()Lcom/texa/carelib/care/vehicletroubles/internal/DTCStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/care/vehicletroubles/internal/DTCStore;->getDTCList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDateLastUpdate(J)Ljava/util/Date;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 447
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getValueInfo(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->getDateLastUpdate()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDateTimeValue(Ljava/lang/Long;)Lcom/texa/carelib/care/DateTime;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 435
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getValueInfo(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->toDateTimeValue()Lcom/texa/carelib/care/DateTime;

    move-result-object p1

    return-object p1
.end method

.method protected getDiagnosisScheduler()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mDiagnosisScheduler:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    return-object v0
.end method

.method public getECUCount()I
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mSupportedECUs:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getECUCount(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method protected getECUCount(Ljava/util/Set;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 153
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    return p1
.end method

.method public getECUScanProgress()F
    .locals 1

    .line 87
    iget v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mECUScanProgress:F

    return v0
.end method

.method public getEnumValue(Ljava/lang/Long;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 422
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getValueInfo(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->toEnumValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    return-object v0
.end method

.method public getFormattedNumericValue(Ljava/lang/Long;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 412
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getValueInfo(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->toFormattedNumericValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMaximumSubscriptionCount()Ljava/lang/Integer;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mMaximumSubscriptionCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNumericValue(Ljava/lang/Long;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 417
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getValueInfo(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->toNumericValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumericValue(Ljava/lang/Long;I)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 403
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getNumericValue(Ljava/lang/Long;)D

    move-result-wide v0

    int-to-double p1, p2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 404
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-int p1, p1

    int-to-double p1, p1

    mul-double v0, v0, p1

    .line 406
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, p1

    return-wide v0
.end method

.method public getPrecision(Ljava/lang/Long;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 391
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getValueInfo(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->getPrecision()I

    move-result p1

    return p1
.end method

.method public getReceivedECUs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mReceivedECUs:Ljava/util/Map;

    return-object v0
.end method

.method public getScanInterval()Ljava/lang/Long;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mScanInterval:Ljava/lang/Long;

    return-object v0
.end method

.method public getSubscriptionInterval(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getDiagnosisScheduler()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->getSubscriptionInterval(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getSubscriptionState(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/SubscriptionState;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getDiagnosisScheduler()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->getSubscriptionState(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/SubscriptionState;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedDataIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mValueInfoCache:Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;

    invoke-virtual {v0}, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->getSupportedDataIDs()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedECUs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mSupportedECUs:Ljava/util/Set;

    return-object v0
.end method

.method public getTextValue(Ljava/lang/Long;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 428
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getValueInfo(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->toTextValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getTripStatus()Lcom/texa/carelib/care/trips/TripStatus;
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mTripStatus:Lcom/texa/carelib/care/trips/TripStatus;

    return-object v0
.end method

.method public bridge synthetic getValueInfo(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/ValueInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getValueInfo(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object p1

    return-object p1
.end method

.method public getValueInfo(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mValueInfoCache:Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;

    invoke-virtual {v0}, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->getSupportedDataIDs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mValueInfoCache:Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->getValue(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    invoke-direct {v0}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;-><init>()V

    .line 348
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setID(J)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mDiagnosisScheduler:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    invoke-virtual {v1, p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->getSubscriptionState(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/SubscriptionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setSubscriptionState(Lcom/texa/carelib/care/vehicle/SubscriptionState;)Lcom/texa/carelib/care/vehicle/ValueInfo;

    .line 351
    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mDiagnosisScheduler:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    invoke-virtual {v1, p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->getSubscriptionInterval(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setSubscriptionInterval(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/ValueInfo;

    .line 354
    new-instance p1, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    invoke-direct {p1, v0}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;-><init>(Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;)V

    return-object p1

    .line 342
    :cond_1
    new-instance p1, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;

    sget-object v0, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;->NotSupported:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    const-string v1, "Parameter is not supported"

    invoke-direct {p1, v0, v1}, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;-><init>(Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method public isAvailable(Ljava/lang/Long;)Z
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mValueInfoCache:Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;

    invoke-virtual {v0}, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->getAvailableDataIDs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$fireParametersUpdatedEvent$1$com-texa-carelib-care-vehicle-internal-VehicleBase([Ljava/lang/Long;)V
    .locals 4

    .line 488
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mVehicleListeners:Lcom/texa/carelib/core/internal/ListenerList;

    invoke-virtual {v0}, Lcom/texa/carelib/core/internal/ListenerList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 489
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 490
    new-instance p1, Lcom/texa/carelib/care/vehicle/events/ParametersUpdatedEvent;

    invoke-direct {p1, p0, v0}, Lcom/texa/carelib/care/vehicle/events/ParametersUpdatedEvent;-><init>(Ljava/lang/Object;Ljava/util/Set;)V

    .line 491
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mVehicleListeners:Lcom/texa/carelib/core/internal/ListenerList;

    invoke-virtual {v0}, Lcom/texa/carelib/core/internal/ListenerList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/texa/carelib/care/vehicle/VehicleListener;

    .line 492
    iget-object v2, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mVehicleListeners:Lcom/texa/carelib/core/internal/ListenerList;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/internal/ListenerList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 494
    aget-object v3, v1, v2

    .line 495
    invoke-virtual {v3, p1}, Lcom/texa/carelib/care/vehicle/VehicleListener;->onParametersUpdated(Lcom/texa/carelib/care/vehicle/events/ParametersUpdatedEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$fireSubscriptionStateChangedEvent$0$com-texa-carelib-care-vehicle-internal-VehicleBase([Ljava/lang/Long;[Lcom/texa/carelib/care/vehicle/SubscriptionState;Lcom/texa/carelib/core/CareError;)V
    .locals 5

    .line 476
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mVehicleListeners:Lcom/texa/carelib/core/internal/ListenerList;

    invoke-virtual {v0}, Lcom/texa/carelib/core/internal/ListenerList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mVehicleListeners:Lcom/texa/carelib/core/internal/ListenerList;

    invoke-virtual {v0}, Lcom/texa/carelib/core/internal/ListenerList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/texa/carelib/care/vehicle/VehicleListener;

    .line 478
    iget-object v2, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mVehicleListeners:Lcom/texa/carelib/core/internal/ListenerList;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/internal/ListenerList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 480
    aget-object v3, v1, v2

    .line 481
    new-instance v4, Lcom/texa/carelib/care/vehicle/events/SubscriptionStateChangedEvent;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/texa/carelib/care/vehicle/events/SubscriptionStateChangedEvent;-><init>(Ljava/lang/Object;[Ljava/lang/Long;[Lcom/texa/carelib/care/vehicle/SubscriptionState;Lcom/texa/carelib/core/CareError;)V

    invoke-virtual {v3, v4}, Lcom/texa/carelib/care/vehicle/VehicleListener;->onSubscriptionStateChanged(Lcom/texa/carelib/care/vehicle/events/SubscriptionStateChangedEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$terminateLoadDTCs$2$com-texa-carelib-care-vehicle-internal-VehicleBase(Lcom/texa/carelib/core/CareError;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 742
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->clearDTCs()V

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mVehicleTroublesListeners:Lcom/texa/carelib/core/internal/ListenerList;

    invoke-virtual {v0}, Lcom/texa/carelib/core/internal/ListenerList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 746
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mVehicleTroublesListeners:Lcom/texa/carelib/core/internal/ListenerList;

    invoke-virtual {v0}, Lcom/texa/carelib/core/internal/ListenerList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/texa/carelib/care/vehicletroubles/VehicleTroublesListener;

    .line 747
    iget-object v2, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mVehicleTroublesListeners:Lcom/texa/carelib/core/internal/ListenerList;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/internal/ListenerList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 749
    aget-object v3, v1, v2

    .line 750
    new-instance v4, Lcom/texa/carelib/care/vehicletroubles/events/DTCReadCompletedEvent;

    invoke-direct {v4, p0, p1}, Lcom/texa/carelib/care/vehicletroubles/events/DTCReadCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v3, v4}, Lcom/texa/carelib/care/vehicletroubles/VehicleTroublesListener;->onDTCReadCompleted(Lcom/texa/carelib/care/vehicletroubles/events/DTCReadCompletedEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 753
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mDTCResolutionError:Lcom/texa/carelib/core/CareError;

    return-void
.end method

.method public loadInfo()V
    .locals 0

    return-void
.end method

.method public varargs loadValues([Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 252
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->loadValues(Ljava/util/Set;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 256
    new-instance v0, Lcom/texa/carelib/core/CareLibException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 254
    throw p1
.end method

.method protected onAvailableParametersChanged(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 502
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getAvailableDataIDs()Ljava/util/Set;

    move-result-object v0

    .line 504
    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mValueInfoCache:Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;

    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->setAvailableParameters(Ljava/util/Set;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 506
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Long;

    .line 510
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 511
    invoke-interface {p1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    new-array v2, v1, [Ljava/lang/Long;

    .line 515
    :cond_2
    :goto_1
    sget-object p1, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Firing PROPERTY_AVAILABLE_DATA_IDS property change."

    invoke-static {p1, v3, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    const-string v1, "com.texa.carelib.care.vehicle.PROPERTY_AVAILABLE_DATA_IDS"

    invoke-direct {p1, p0, v1, v0, v2}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 1

    .line 539
    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    .line 541
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mDiagnosisScheduler:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->notifyCommunicationStatusChanged(Lcom/texa/carelib/communication/CommunicationStatus;)V

    .line 543
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-virtual {p1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->resetData()V

    :goto_0
    return-void
.end method

.method public onSubscriptionStateChanged(Ljava/lang/Long;Lcom/texa/carelib/care/vehicle/SubscriptionState;Lcom/texa/carelib/core/CareError;)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Long;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [Lcom/texa/carelib/care/vehicle/SubscriptionState;

    aput-object p2, p1, v2

    .line 619
    invoke-virtual {p0, v1, p1, p3}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->fireSubscriptionStateChangedEvent([Ljava/lang/Long;[Lcom/texa/carelib/care/vehicle/SubscriptionState;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method protected onSupportedParametersChanged(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 521
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getSupportedDataIDs()Ljava/util/Set;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mValueInfoCache:Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;

    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->setSupportedParameters(Ljava/util/Set;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 525
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 528
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Long;

    .line 529
    invoke-interface {p1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    new-array v2, v1, [Ljava/lang/Long;

    .line 532
    :goto_1
    sget-object p1, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Firing PROPERTY_SUPPORTED_DATA_IDS property change."

    invoke-static {p1, v3, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    const-string v1, "com.texa.carelib.care.vehicle.Vehicle#PROPERTY_SUPPORTED_DATA_IDS"

    invoke-direct {p1, p0, v1, v0, v2}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method public removeVehicleListener(Lcom/texa/carelib/care/vehicle/VehicleListener;)V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mVehicleListeners:Lcom/texa/carelib/core/internal/ListenerList;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/core/internal/ListenerList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeVehicleTroublesListener(Lcom/texa/carelib/care/vehicletroubles/VehicleTroublesListener;)V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mVehicleTroublesListeners:Lcom/texa/carelib/core/internal/ListenerList;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/core/internal/ListenerList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected resetData()V
    .locals 2

    .line 560
    sget-object v0, Lcom/texa/carelib/care/trips/TripStatus;->Undef:Lcom/texa/carelib/care/trips/TripStatus;

    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mTripStatus:Lcom/texa/carelib/care/trips/TripStatus;

    const/16 v0, 0xff

    .line 561
    iput v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mAccessoryStatus:I

    const/4 v0, 0x0

    .line 573
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 562
    iput v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mAccessoryDiagnosisMode:I

    .line 563
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mValueInfoCache:Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;

    invoke-virtual {v0}, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->clear()V

    const/4 v0, 0x0

    .line 564
    iput v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mECUScanProgress:F

    .line 565
    iput v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mDTCTranslationProgress:F

    const/4 v0, 0x0

    .line 566
    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mDTCResolutionError:Lcom/texa/carelib/core/CareError;

    .line 570
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->setSupportedECUs(Ljava/util/Set;)V

    .line 571
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getDTCStore()Lcom/texa/carelib/care/vehicletroubles/internal/DTCStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/care/vehicletroubles/internal/DTCStore;->clear()V

    .line 573
    iput-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mActiveSubscriptionCount:Ljava/lang/Integer;

    .line 574
    iput-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mMaximumSubscriptionCount:Ljava/lang/Integer;

    return-void
.end method

.method setAccessoryStatus(I)V
    .locals 1

    .line 296
    iget v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mAccessoryStatus:I

    if-eq v0, p1, :cond_0

    .line 297
    iput p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mAccessoryStatus:I

    .line 298
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mDiagnosisScheduler:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->setAccessoryStatus(I)V

    :cond_0
    return-void
.end method

.method setActiveSubscriptionCount(Ljava/lang/Integer;)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mActiveSubscriptionCount:Ljava/lang/Integer;

    .line 125
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mActiveSubscriptionCount:Ljava/lang/Integer;

    .line 126
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    const-string v2, "com.texa.carelib.care.vehicle.Vehicle#PROPERTY_ACTIVE_SUBSCRIPTION_COUNT"

    invoke-direct {v1, p0, v2, v0, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 127
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    const-string v2, "com.texa.carelib.care.vehicletroubles.VehicleTroubles#PROPERTY_ACTIVE_SUBSCRIPTION_COUNT"

    invoke-direct {v1, p0, v2, v0, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method protected setDTCTranslationProgress(F)V
    .locals 4

    .line 630
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v2, v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "DTC translation progress changed: %d"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    iget v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mDTCTranslationProgress:F

    .line 632
    iput p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mDTCTranslationProgress:F

    .line 633
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v2, "com.texa.carelib.care.vehicletroubles.VehicleTroubles#PROPERTY_DTC_TRANSLATION_PROGRESS"

    invoke-direct {v1, p0, v2, v0, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method public setDTCTranslator(Lcom/texa/carelib/care/vehicletroubles/DTCTranslator;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mDTCTranslator:Lcom/texa/carelib/care/vehicletroubles/DTCTranslator;

    return-void
.end method

.method setDiagnosisMode(I)V
    .locals 1

    .line 283
    iget v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mAccessoryDiagnosisMode:I

    if-eq v0, p1, :cond_0

    .line 284
    iput p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mAccessoryDiagnosisMode:I

    .line 285
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mDiagnosisScheduler:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->setAccessoryDiagnosisMode(I)V

    :cond_0
    return-void
.end method

.method protected setECUScanProgress(F)V
    .locals 4

    .line 623
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v2, v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ECU scan progress changed: %d"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    iget v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mECUScanProgress:F

    .line 625
    iput p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mECUScanProgress:F

    .line 626
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v2, "com.texa.carelib.care.vehicletroubles.VehicleTroubles#PROPERTY_ECU_SCAN_PROGRESS"

    invoke-direct {v1, p0, v2, v0, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method setMaximumSubscriptionCount(Ljava/lang/Integer;)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mMaximumSubscriptionCount:Ljava/lang/Integer;

    .line 138
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mMaximumSubscriptionCount:Ljava/lang/Integer;

    .line 139
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    const-string v2, "com.texa.carelib.care.vehicle.Vehicle#PROPERTY_MAXIMUM_SUBSCRIPTION_COUNT"

    invoke-direct {v1, p0, v2, v0, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 140
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    const-string v2, "com.texa.carelib.care.vehicletroubles.VehicleTroubles#PROPERTY_MAXIMUM_SUBSCRIPTION_COUNT"

    invoke-direct {v1, p0, v2, v0, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method public setReceivedECUs(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 799
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mReceivedECUs:Ljava/util/Map;

    return-void
.end method

.method public setScanInterval(Ljava/lang/Long;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mScanInterval:Ljava/lang/Long;

    return-void
.end method

.method public setSupportedECUs(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mSupportedECUs:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getECUCount(Ljava/util/Set;)I

    move-result v0

    .line 199
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mSupportedECUs:Ljava/util/Set;

    .line 200
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getECUCount(Ljava/util/Set;)I

    move-result v1

    .line 202
    new-instance v2, Ljava/beans/PropertyChangeEvent;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "com.texa.carelib.care.vehicletroubles.VehicleTroubles#PROPERTY_ECU_COUNT"

    invoke-direct {v2, p0, v3, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 204
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mReceivedECUs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_0

    .line 206
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 207
    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mReceivedECUs:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mECUInTranslations:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected setTripStatus(Lcom/texa/carelib/care/trips/TripStatus;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mTripStatus:Lcom/texa/carelib/care/trips/TripStatus;

    if-eq v0, p1, :cond_0

    .line 262
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mTripStatus:Lcom/texa/carelib/care/trips/TripStatus;

    :cond_0
    return-void
.end method

.method protected terminateLoadDTCs(Lcom/texa/carelib/core/CareError;)V
    .locals 2

    .line 740
    invoke-static {}, Lcom/texa/carelib/core/CarelibSchedulers;->mainThread()Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/vehicle/internal/VehicleBase;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;->schedule(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateDTC(Ljava/util/List;JLcom/texa/carelib/core/CareError;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/vehicletroubles/DTC;",
            ">;J",
            "Lcom/texa/carelib/core/CareError;",
            ")V"
        }
    .end annotation

    const-string v0, "Updating DTCs for ECU %d, DTC Count=%2$d"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p4, :cond_0

    .line 702
    sget-object p4, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->TAG:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p4, v0, v4}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 704
    :cond_0
    iput-object p4, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mDTCResolutionError:Lcom/texa/carelib/core/CareError;

    .line 705
    sget-object v4, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->TAG:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, p4, v0, v5}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 710
    :goto_0
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 712
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getDTCs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/carelib/care/vehicletroubles/DTC;

    .line 713
    new-instance v5, Lcom/texa/carelib/care/vehicletroubles/DTC;

    invoke-direct {v5, v4}, Lcom/texa/carelib/care/vehicletroubles/DTC;-><init>(Lcom/texa/carelib/care/vehicletroubles/DTC;)V

    invoke-interface {p4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 717
    :cond_1
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getDTCStore()Lcom/texa/carelib/care/vehicletroubles/internal/DTCStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/texa/carelib/care/vehicletroubles/internal/DTCStore;->updateECUDTC(Ljava/util/List;J)V

    .line 720
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getDTCs()Ljava/util/List;

    move-result-object p1

    .line 721
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v4, "Firing DTC property change Old DTC count: %d, Actual DTC Count=%2$d"

    invoke-static {v0, v4, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 722
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    const-string v4, "com.texa.carelib.care.vehicletroubles.VehicleTroubles#PROPERTY_DTCS"

    invoke-direct {v1, p0, v4, p4, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 724
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mECUInTranslations:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 725
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mECUInTranslations:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 726
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-lez p4, :cond_2

    .line 727
    iget-object p4, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mECUInTranslations:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    :cond_2
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getECUScanProgress()F

    move-result p1

    iget-object p2, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mReceivedECUs:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getDTCStore()Lcom/texa/carelib/care/vehicletroubles/internal/DTCStore;

    move-result-object p3

    invoke-virtual {p3}, Lcom/texa/carelib/care/vehicletroubles/internal/DTCStore;->getECUCount()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->calculateTranslationProgress(FLjava/util/Map;I)F

    move-result p1

    .line 732
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->setDTCTranslationProgress(F)V

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p2, p1

    if-nez p1, :cond_3

    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "DTCs translation has been completed!"

    .line 734
    invoke-static {v0, p2, p1}, Lcom/texa/carelib/core/logging/CareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mDTCResolutionError:Lcom/texa/carelib/core/CareError;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->terminateLoadDTCs(Lcom/texa/carelib/core/CareError;)V

    :cond_3
    return-void
.end method

.method protected updateParameters(Ljava/util/List;Lcom/texa/carelib/care/trips/TripStatus;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;",
            ">;",
            "Lcom/texa/carelib/care/trips/TripStatus;",
            ")V"
        }
    .end annotation

    .line 583
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Received %1$d parameters"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Long;

    .line 586
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 588
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    .line 589
    invoke-virtual {v3}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->getID()J

    move-result-wide v5

    .line 590
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v0, v2

    add-int/2addr v2, v1

    .line 593
    sget-object v7, Lcom/texa/carelib/care/vehicle/ValueDataType;->ENUM:Lcom/texa/carelib/care/vehicle/ValueDataType;

    invoke-virtual {v3}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->getType()Lcom/texa/carelib/care/vehicle/ValueDataType;

    move-result-object v8

    if-ne v7, v8, :cond_0

    sget-object v7, Lcom/texa/carelib/care/trips/TripStatus;->InProgress:Lcom/texa/carelib/care/trips/TripStatus;

    if-eq v7, p2, :cond_0

    .line 594
    sget-object v7, Lcom/texa/carelib/diagresources/DataID$Enum;->MIL_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v7}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-eqz v9, :cond_0

    .line 595
    invoke-virtual {v3}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->hasData()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 597
    :try_start_0
    invoke-virtual {v3}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->getDataStatus()B

    move-result v7

    if-nez v7, :cond_0

    .line 598
    invoke-virtual {v3, v1}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setDataStatus(B)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    .line 601
    :goto_1
    sget-object v8, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->TAG:Ljava/lang/String;

    new-array v9, v4, [Ljava/lang/Object;

    const-string v10, "Could not change current parameter data status."

    invoke-static {v8, v7, v10, v9}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getDiagnosisScheduler()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    move-result-object v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->getSubscriptionState(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/SubscriptionState;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setSubscriptionState(Lcom/texa/carelib/care/vehicle/SubscriptionState;)Lcom/texa/carelib/care/vehicle/ValueInfo;

    .line 608
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getDiagnosisScheduler()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    move-result-object v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->getSubscriptionInterval(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setSubscriptionInterval(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/ValueInfo;

    .line 610
    iget-object v7, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mValueInfoCache:Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v5, v3}, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->putValue(Ljava/lang/Long;Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;)V

    goto :goto_0

    .line 613
    :cond_1
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->fireParametersUpdatedEvent([Ljava/lang/Long;)V

    :cond_2
    return-void
.end method

.method public waitDTCsTranslationForECU(J)V
    .locals 3

    .line 760
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mECUInTranslations:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mECUInTranslations:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->mECUInTranslations:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
