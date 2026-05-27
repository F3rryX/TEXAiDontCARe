.class public Lcom/texa/carelib/care/batteryanalyzer/CrankReport;
.super Ljava/lang/Object;
.source "CrankReport.java"

# interfaces
.implements Lcom/texa/carelib/core/utils/CareStruct;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;
    }
.end annotation


# instance fields
.field private mArea:Ljava/lang/Integer;

.field private mCoefficientA:Ljava/lang/Long;

.field private mCoefficientB:Ljava/lang/Long;

.field private mCoefficientC:Ljava/lang/Long;

.field private mCoefficientM:Ljava/lang/Float;

.field private mCoefficientQ:Ljava/lang/Float;

.field private mCoefficientR2:Ljava/lang/Float;

.field private mData:[B

.field private mLimit:Ljava/lang/Float;

.field private mMeanVoltage:Ljava/lang/Short;

.field private mMinimumVoltage:Ljava/lang/Short;

.field private mSamplePeriod:Ljava/lang/Float;

.field private mSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private mSamplesNumber:Ljava/lang/Long;

.field private mStatus:Ljava/lang/Long;

.field private mTimestamp:Ljava/util/Date;

.field private mVersion:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/carelib/care/batteryanalyzer/CrankReport$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mCoefficientA:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$102(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;[B)[B
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mData:[B

    return-object p1
.end method

.method static synthetic access$1102(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mCoefficientB:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mCoefficientC:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mCoefficientR2:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mCoefficientM:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mCoefficientQ:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mLimit:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mSamples:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$202(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mVersion:I

    return p1
.end method

.method static synthetic access$302(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mTimestamp:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$402(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mStatus:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$502(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mSamplePeriod:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$602(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mSamplesNumber:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$702(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Short;)Ljava/lang/Short;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mMeanVoltage:Ljava/lang/Short;

    return-object p1
.end method

.method static synthetic access$802(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Short;)Ljava/lang/Short;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mMinimumVoltage:Ljava/lang/Short;

    return-object p1
.end method

.method static synthetic access$902(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mArea:Ljava/lang/Integer;

    return-object p1
.end method


# virtual methods
.method public getArea()Ljava/lang/Integer;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mArea:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCoefficientA()Ljava/lang/Long;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mCoefficientA:Ljava/lang/Long;

    return-object v0
.end method

.method public getCoefficientB()Ljava/lang/Long;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mCoefficientB:Ljava/lang/Long;

    return-object v0
.end method

.method public getCoefficientC()Ljava/lang/Long;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mCoefficientC:Ljava/lang/Long;

    return-object v0
.end method

.method public getCoefficientM()Ljava/lang/Float;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mCoefficientM:Ljava/lang/Float;

    return-object v0
.end method

.method public getCoefficientQ()Ljava/lang/Float;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mCoefficientQ:Ljava/lang/Float;

    return-object v0
.end method

.method public getCoefficientR2()Ljava/lang/Float;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mCoefficientR2:Ljava/lang/Float;

    return-object v0
.end method

.method public getLimit()Ljava/lang/Float;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mLimit:Ljava/lang/Float;

    return-object v0
.end method

.method public getMeanVoltage()Ljava/lang/Short;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mMeanVoltage:Ljava/lang/Short;

    return-object v0
.end method

.method public getMinimumVoltage()Ljava/lang/Short;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mMinimumVoltage:Ljava/lang/Short;

    return-object v0
.end method

.method public getRawData()[B
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mData:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getSamplePeriod()Ljava/lang/Float;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mSamplePeriod:Ljava/lang/Float;

    return-object v0
.end method

.method public getSamples()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mSamples:Ljava/util/List;

    return-object v0
.end method

.method public getSamplesNumber()Ljava/lang/Long;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mSamplesNumber:Ljava/lang/Long;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Long;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mStatus:Ljava/lang/Long;

    return-object v0
.end method

.method public getTimeStamp()Ljava/util/Date;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->mVersion:I

    return v0
.end method
