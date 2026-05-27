.class public Lcom/texa/careapp/parameters/ParameterEngineRpm;
.super Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;
.source "ParameterEngineRpm.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParameterEngineRpm"


# instance fields
.field private mAbsoluteValue:Ljava/lang/Double;

.field private final mCommunication:Lcom/texa/carelib/communication/Communication;

.field private mLabel:Ljava/lang/String;

.field private mPriority:I

.field private mUnit:Ljava/lang/String;

.field private mValueFormatted:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/texa/carelib/communication/Communication;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/texa/careapp/parameters/ParameterEngineRpm;->mCommunication:Lcom/texa/carelib/communication/Communication;

    const p2, 0x7f1109ca

    .line 31
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/texa/careapp/parameters/ParameterEngineRpm;->mLabel:Ljava/lang/String;

    const p2, 0x7f110d10

    .line 32
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/parameters/ParameterEngineRpm;->mUnit:Ljava/lang/String;

    .line 33
    sget-object p1, Lcom/texa/careapp/Constants;->CARE_DRIVER_PARAMETERS:Ljava/util/List;

    sget-object p2, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {p2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/parameters/ParameterEngineRpm;->mPriority:I

    return-void
.end method

.method private isConnected()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterEngineRpm;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isCareConnected(Lcom/texa/carelib/communication/Communication;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getChartType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getLayoutPriority()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getLimitItem()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    const/16 v0, 0x1b58

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/texa/careapp/parameters/ParameterEngineRpm;->mPriority:I

    return v0
.end method

.method public getProblemValue()I
    .locals 1

    const/16 v0, 0x1388

    return v0
.end method

.method public getReadableValue()Ljava/lang/String;
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/texa/careapp/parameters/ParameterEngineRpm;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterEngineRpm;->mValueFormatted:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "0"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterEngineRpm;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterEngineRpm;->mUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/texa/careapp/parameters/ParameterEngineRpm;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterEngineRpm;->mAbsoluteValue:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getWarningValue()I
    .locals 1

    const/16 v0, 0x1388

    return v0
.end method

.method public isHigherThreshold()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public update(Lcom/texa/careapp/model/VehicleParam;)V
    .locals 1

    .line 37
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/ParameterEngineRpm;->mAbsoluteValue:Ljava/lang/Double;

    .line 38
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueFormatted()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/parameters/ParameterEngineRpm;->mValueFormatted:Ljava/lang/String;

    return-void
.end method
