.class public Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;
.super Ljava/lang/Object;
.source "BatteryVoltageHistogram.java"

# interfaces
.implements Lcom/texa/carelib/core/utils/CareStruct;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;
    }
.end annotation


# instance fields
.field private mBeamList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBeamWidth:Ljava/lang/Float;

.field private mData:[B

.field private mSmoothFactor:Ljava/lang/Float;

.field private mTimestamp:Ljava/util/Date;

.field private mVersion:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;[B)[B
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;->mData:[B

    return-object p1
.end method

.method static synthetic access$202(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;->mVersion:I

    return p1
.end method

.method static synthetic access$302(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;->mTimestamp:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$402(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;->mBeamWidth:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$502(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;->mSmoothFactor:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$602(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;->mBeamList:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public getBeamWidth()Ljava/lang/Float;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;->mBeamWidth:Ljava/lang/Float;

    return-object v0
.end method

.method public getBeams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;->mBeamList:Ljava/util/List;

    return-object v0
.end method

.method public getRawData()[B
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;->mData:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getSmoothFactor()Ljava/lang/Float;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;->mSmoothFactor:Ljava/lang/Float;

    return-object v0
.end method

.method public getTimeStamp()Ljava/util/Date;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;->mTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;->mVersion:I

    return v0
.end method
