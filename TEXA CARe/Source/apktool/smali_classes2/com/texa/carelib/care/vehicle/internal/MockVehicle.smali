.class public Lcom/texa/carelib/care/vehicle/internal/MockVehicle;
.super Lcom/texa/carelib/care/vehicle/internal/VehicleBase;
.source "MockVehicle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/vehicle/internal/MockVehicle$SubscriptionInfo;
    }
.end annotation


# static fields
.field private static final DELAY_DATA_UPDATE:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "MockVehicle"

.field private static final UPDATE_PARAMETERS_INTERVAL:I = 0x3e8

.field public static final VIN:Ljava/lang/String; = "WF6AXXGCASRY00667"


# instance fields
.field private mAbsoluteFuelLevel:I

.field private mAvailableIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEngineSpeed:I

.field private mIsLoadAvailableDataIDsCalled:Z

.field private mParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfile:Lcom/texa/carelib/profile/internal/MockProfile;

.field private mRelativeFuelLevel:I

.field private final mSubscribedIDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/texa/carelib/care/vehicle/internal/MockVehicle$SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscribedIDsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

.field private mSupportedIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTimerUpdateValues:Ljava/util/Timer;

.field private mVehicleSpeed:I

.field private mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;)V
    .locals 0

    .line 74
    invoke-direct {p0, p2, p3, p4}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;-><init>(Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;)V

    .line 62
    new-instance p2, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    sget-object p3, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->TAG:Ljava/lang/String;

    const-string p4, "mSubscribedIDsLock"

    invoke-direct {p2, p3, p4}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSubscribedIDsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    .line 76
    check-cast p1, Lcom/texa/carelib/profile/internal/MockProfile;

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mProfile:Lcom/texa/carelib/profile/internal/MockProfile;

    .line 78
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSubscribedIDs:Ljava/util/Map;

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mRelativeFuelLevel:I

    .line 81
    iput p1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mRelativeFuelLevel:I

    .line 82
    iput p1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mAbsoluteFuelLevel:I

    .line 83
    iput p1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleSpeed:I

    .line 84
    iput p1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mEngineSpeed:I

    .line 86
    iput-boolean p1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mIsLoadAvailableDataIDsCalled:Z

    .line 87
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    .line 88
    new-instance p1, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserLegacy;

    invoke-direct {p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserLegacy;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    .line 90
    sget-object p1, Lcom/texa/carelib/care/trips/TripStatus;->InProgress:Lcom/texa/carelib/care/trips/TripStatus;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->setTripStatus(Lcom/texa/carelib/care/trips/TripStatus;)V

    .line 92
    invoke-direct {p0}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->initAvailableIDs()V

    .line 93
    invoke-direct {p0}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->initSupportedIDs()V

    .line 94
    invoke-direct {p0}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->initValues()V

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mRelativeFuelLevel:I

    return p0
.end method

.method static synthetic access$002(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mRelativeFuelLevel:I

    return p1
.end method

.method static synthetic access$100(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;Ljava/lang/Long;)Z
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->isSubscribed(Ljava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)Ljava/util/Map;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSubscribedIDs:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;F)[B
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataArray(F)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;FI)[B
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataStatus(FI)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p7}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)Ljava/util/Map;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$600(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mAbsoluteFuelLevel:I

    return p0
.end method

.method static synthetic access$602(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mAbsoluteFuelLevel:I

    return p1
.end method

.method static synthetic access$700(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleSpeed:I

    return p0
.end method

.method static synthetic access$702(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleSpeed:I

    return p1
.end method

.method static synthetic access$800(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mEngineSpeed:I

    return p0
.end method

.method static synthetic access$802(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mEngineSpeed:I

    return p1
.end method

.method static synthetic access$900(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSubscribedIDsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    return-object p0
.end method

.method private createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;
    .locals 1

    .line 421
    new-instance v0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    invoke-direct {v0}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;-><init>()V

    .line 423
    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setID(J)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    .line 424
    invoke-virtual {v0, p3}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setType(Lcom/texa/carelib/care/vehicle/ValueDataType;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    .line 426
    invoke-virtual {v0, p5, p6, p4}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setData([B[BLcom/texa/carelib/care/vehicle/internal/VehicleValueParser;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    .line 428
    :cond_0
    invoke-virtual {v0, p7}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setDateLastUpdate(Ljava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    return-object v0
.end method

.method private getDataArray(F)[B
    .locals 2

    const/4 v0, 0x4

    .line 170
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 171
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 173
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 175
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method private getDataStatus(FI)[B
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit8 p2, p2, 0xf

    int-to-byte p2, p2

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    .line 163
    aget-byte p1, v0, v1

    or-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    :cond_0
    return-object v0
.end method

.method public static getNumberOfDecimalPlace(D)I
    .locals 4

    .line 147
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const/4 v2, 0x0

    cmpl-double v3, v0, p0

    if-nez v3, :cond_0

    return v2

    .line 148
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    .line 149
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 p1, 0x2e

    .line 150
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_1

    return v2

    .line 154
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p1

    return p0
.end method

.method private initAvailableIDs()V
    .locals 3

    .line 353
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mAvailableIDs:Ljava/util/Set;

    .line 355
    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->VEHICLE_SPEED:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mAvailableIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mAvailableIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mAvailableIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mAvailableIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->OUTSIDE_TEMPERATURE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mAvailableIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mAvailableIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mAvailableIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mAvailableIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->BATTERY_VOLT:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mAvailableIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->MIL_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mAvailableIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->BRAKEFLUID_LOW_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initSupportedIDs()V
    .locals 3

    .line 320
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    .line 323
    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->BATTERY_VOLT:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->CRUISING_RANGE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ODOMETER_KM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->DAYS_NEXT_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->OUTSIDE_TEMPERATURE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->DISTANCE_LAST_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->DISTANCE_NEXT_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->DAYS_LAST_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->DAYS_NEXT_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->VEHICLE_SPEED:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->ABS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->BRAKEFLUID_LOW_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->AIRBAG_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->BRAKE_PAD_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->LOW_FUEL_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->MIL_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->OIL_LEVEL_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->SERVICE_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->TIRE_PRESS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initValues()V
    .locals 14

    const/4 v9, 0x1

    new-array v10, v9, [B

    const/16 v0, 0x40

    const/4 v11, 0x0

    aput-byte v0, v10, v11

    const/16 v0, 0x13

    .line 374
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    :try_start_0
    const-string v0, "WF6AXXGCASRY00667"

    const-string v2, "ISO-8859-1"

    .line 377
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 379
    sget-object v2, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->TAG:Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v11

    const-string v0, "Encoding not supported"

    invoke-static {v2, v0, v3}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    :goto_0
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 384
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Text;->VIN:Lcom/texa/carelib/diagresources/DataID$Text;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Text;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Text;->VIN:Lcom/texa/carelib/diagresources/DataID$Text;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Text;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->STRING:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    new-array v7, v9, [B

    const/16 v1, -0x80

    aput-byte v1, v7, v11

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    iget v1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mAbsoluteFuelLevel:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataArray(F)[B

    move-result-object v6

    iget v1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mAbsoluteFuelLevel:I

    int-to-float v1, v1

    invoke-direct {p0, v1, v9}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataStatus(FI)[B

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    const v1, 0x4099999a    # 4.8f

    invoke-direct {p0, v1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataArray(F)[B

    move-result-object v6

    invoke-direct {p0, v1, v9}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataStatus(FI)[B

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->BATTERY_VOLT:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->BATTERY_VOLT:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    const v1, 0x41433333    # 12.2f

    invoke-direct {p0, v1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataArray(F)[B

    move-result-object v6

    invoke-direct {p0, v1, v9}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataStatus(FI)[B

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->CRUISING_RANGE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->CRUISING_RANGE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    const v1, 0x442c4000    # 689.0f

    invoke-direct {p0, v1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataArray(F)[B

    move-result-object v6

    invoke-direct {p0, v1, v11}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataStatus(FI)[B

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    const/high16 v12, 0x42b80000    # 92.0f

    invoke-direct {p0, v12}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataArray(F)[B

    move-result-object v6

    invoke-direct {p0, v12, v11}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataStatus(FI)[B

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    iget v1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mEngineSpeed:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataArray(F)[B

    move-result-object v6

    iget v1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mEngineSpeed:I

    int-to-float v1, v1

    invoke-direct {p0, v1, v11}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataStatus(FI)[B

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ODOMETER_KM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ODOMETER_KM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    const v1, 0x47882000    # 69696.0f

    invoke-direct {p0, v1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataArray(F)[B

    move-result-object v6

    invoke-direct {p0, v1, v11}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataStatus(FI)[B

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->DAYS_NEXT_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->DAYS_NEXT_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    const v1, 0x438c8000    # 281.0f

    invoke-direct {p0, v1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataArray(F)[B

    move-result-object v6

    invoke-direct {p0, v1, v11}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataStatus(FI)[B

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->OUTSIDE_TEMPERATURE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->OUTSIDE_TEMPERATURE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    const/high16 v1, 0x42180000    # 38.0f

    invoke-direct {p0, v1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataArray(F)[B

    move-result-object v6

    invoke-direct {p0, v1, v11}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataStatus(FI)[B

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    iget v1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mRelativeFuelLevel:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataArray(F)[B

    move-result-object v6

    iget v1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mRelativeFuelLevel:I

    int-to-float v1, v1

    invoke-direct {p0, v1, v11}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataStatus(FI)[B

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    invoke-direct {p0, v12}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataArray(F)[B

    move-result-object v6

    invoke-direct {p0, v12, v11}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataStatus(FI)[B

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->DISTANCE_LAST_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->DISTANCE_LAST_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    const v1, 0x46409400    # 12325.0f

    invoke-direct {p0, v1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataArray(F)[B

    move-result-object v6

    invoke-direct {p0, v1, v11}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataStatus(FI)[B

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->DISTANCE_NEXT_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->DISTANCE_NEXT_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    const v1, 0x45273000    # 2675.0f

    invoke-direct {p0, v1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataArray(F)[B

    move-result-object v6

    invoke-direct {p0, v1, v11}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataStatus(FI)[B

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->DAYS_LAST_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->DAYS_LAST_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    const v1, 0x43878000    # 271.0f

    invoke-direct {p0, v1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataArray(F)[B

    move-result-object v6

    invoke-direct {p0, v1, v11}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataStatus(FI)[B

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->DAYS_NEXT_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->DAYS_NEXT_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    const/high16 v1, 0x42bc0000    # 94.0f

    invoke-direct {p0, v1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataArray(F)[B

    move-result-object v6

    invoke-direct {p0, v1, v11}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getDataStatus(FI)[B

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v9, v0, [B

    .line 405
    fill-array-data v9, :array_0

    new-array v11, v0, [B

    .line 406
    fill-array-data v11, :array_1

    new-array v0, v0, [B

    .line 407
    fill-array-data v0, :array_2

    .line 409
    iget-object v12, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->ABS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->ABS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->ENUM:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v12, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v12, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->BRAKEFLUID_LOW_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->BRAKEFLUID_LOW_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->ENUM:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v0

    invoke-interface {v12, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->AIRBAG_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->AIRBAG_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->ENUM:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    move-object v6, v9

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->BRAKE_PAD_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->BRAKE_PAD_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->ENUM:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->LOW_FUEL_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->LOW_FUEL_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->ENUM:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->MIL_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->MIL_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->ENUM:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    move-object v6, v11

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->OIL_LEVEL_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->OIL_LEVEL_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->ENUM:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    move-object v6, v9

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->SERVICE_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->SERVICE_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->ENUM:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->TIRE_PRESS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->TIRE_PRESS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->ENUM:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mVehicleValueParser:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    move-object v6, v11

    invoke-direct/range {v1 .. v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->createValueInfo(JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        -0x80t
        0x3ft
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x40t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x40t
        0x40t
    .end array-data
.end method

.method private isSubscribed(Ljava/lang/Long;)Z
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSubscribedIDs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private updateValues(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 307
    iget-object v3, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    iget-object v3, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mParameters:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getTripStatus()Lcom/texa/carelib/care/trips/TripStatus;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->updateParameters(Ljava/util/List;Lcom/texa/carelib/care/trips/TripStatus;)V

    return-void
.end method


# virtual methods
.method public beginUpdateDTCs(J)V
    .locals 0

    return-void
.end method

.method public beginUpdateValues(JLjava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 180
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSubscribedIDsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "beginUpdateValues"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 183
    :try_start_0
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 184
    invoke-direct {p0, v2}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->isSubscribed(Ljava/lang/Long;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 185
    iget-object v3, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSubscribedIDs:Ljava/util/Map;

    new-instance v4, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$SubscriptionInfo;

    invoke-direct {v4, p0}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$SubscriptionInfo;-><init>(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)V

    invoke-virtual {v4, p1, p2}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$SubscriptionInfo;->setTimeout(J)Lcom/texa/carelib/care/vehicle/internal/MockVehicle$SubscriptionInfo;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 190
    :cond_1
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSubscribedIDsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p1, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    .line 193
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->updateValues(Ljava/util/List;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 190
    iget-object p2, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSubscribedIDsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public createSubscribedObjectsPayloadComposer(Lcom/texa/carelib/core/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/SubscribedObjectsPayloadComposerCreatedEvent;",
            ">;)V"
        }
    .end annotation

    .line 445
    new-instance v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/SubscribedObjectsPayloadComposerCreatedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/SubscribedObjectsPayloadComposerCreatedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method public endUpdateDTCs()V
    .locals 0

    return-void
.end method

.method public endUpdateValues(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 199
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSubscribedIDsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "endUpdateValues"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 204
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 205
    iget-object v2, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSubscribedIDs:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSubscribedIDsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p1, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSubscribedIDsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1
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

    .line 114
    iget-boolean v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mIsLoadAvailableDataIDsCalled:Z

    if-nez v0, :cond_0

    .line 115
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 117
    :cond_0
    invoke-super {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getAvailableDataIDs()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getProfile()Lcom/texa/carelib/profile/internal/MockProfile;

    move-result-object v0

    return-object v0
.end method

.method public getProfile()Lcom/texa/carelib/profile/internal/MockProfile;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mProfile:Lcom/texa/carelib/profile/internal/MockProfile;

    return-object v0
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

    .line 105
    iget-boolean v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mIsLoadAvailableDataIDsCalled:Z

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    invoke-super {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->getSupportedDataIDs()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$loadAvailableDataIDs$1$com-texa-carelib-care-vehicle-internal-MockVehicle()V
    .locals 5

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x1

    .line 216
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 218
    sget-object v1, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->TAG:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "Wait has failed."

    invoke-static {v1, v0, v3}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    :goto_0
    iput-boolean v2, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mIsLoadAvailableDataIDsCalled:Z

    .line 223
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSupportedIDs:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->onSupportedParametersChanged(Ljava/util/Set;)V

    .line 224
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mAvailableIDs:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->onAvailableParametersChanged(Ljava/util/Set;)V

    return-void
.end method

.method public synthetic lambda$loadValues$0$com-texa-carelib-care-vehicle-internal-MockVehicle(Ljava/util/Set;)V
    .locals 4

    const-wide/16 v0, 0x3e8

    .line 125
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 127
    sget-object v1, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "Wait has failed."

    invoke-static {v1, v0, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->updateValues(Ljava/util/List;)V

    return-void
.end method

.method public loadAvailableDataIDs()V
    .locals 4

    .line 214
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_loadAvailableDataIDs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 229
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public loadDTCs()V
    .locals 0

    return-void
.end method

.method public loadValues(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;Ljava/util/Set;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_loadValues"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 7

    .line 234
    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    .line 236
    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mIsLoadAvailableDataIDsCalled:Z

    .line 239
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mTimerUpdateValues:Ljava/util/Timer;

    .line 240
    new-instance v2, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;

    invoke-direct {v2, p0}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;-><init>(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)V

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 289
    :cond_0
    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->DISCONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v1, v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mSubscribedIDs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->endUpdateValues(Ljava/util/Set;)V

    .line 292
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mTimerUpdateValues:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 294
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mTimerUpdateValues:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->mTimerUpdateValues:Ljava/util/Timer;

    .line 300
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V

    return-void
.end method

.method public read(ILjava/util/Set;Lcom/texa/carelib/core/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineReadCompletedEvent;",
            ">;)V"
        }
    .end annotation

    const-wide/16 p1, 0x14

    .line 456
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :catch_0
    new-instance p1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineReadCompletedEvent;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineReadCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p3, p1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method public subscribe(ILjava/lang/Long;Ljava/util/Set;Lcom/texa/carelib/core/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineSubscribeCompletedEvent;",
            ">;)V"
        }
    .end annotation

    const-wide/16 p1, 0x14

    .line 466
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :catch_0
    new-instance p1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineSubscribeCompletedEvent;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineSubscribeCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p4, p1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method public unsubscribe(ILjava/util/Set;Lcom/texa/carelib/core/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineUnsubscribeCompletedEvent;",
            ">;)V"
        }
    .end annotation

    const-wide/16 p1, 0x14

    .line 476
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :catch_0
    new-instance p1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineUnsubscribeCompletedEvent;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineUnsubscribeCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p3, p1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method public updateAvailableParameters(Lcom/texa/carelib/core/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/AvailableParameterUpdateCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .line 440
    new-instance v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/AvailableParameterUpdateCompletedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/AvailableParameterUpdateCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method public updateECUs(Lcom/texa/carelib/core/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/ECUUpdateCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .line 435
    new-instance v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/ECUUpdateCompletedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/ECUUpdateCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method public updateSubscriptionCounters(Lcom/texa/carelib/core/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineUpdateSubscriptionCountersCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .line 485
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not implemented exception."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateSupportedParameters(Lcom/texa/carelib/core/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/SupportedParameterUpdateCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .line 450
    new-instance v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/SupportedParameterUpdateCompletedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/SupportedParameterUpdateCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method
