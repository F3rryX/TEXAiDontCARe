.class public Lcom/texa/careapp/parameters/ParameterEngineTemperature;
.super Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;
.source "ParameterEngineTemperature.java"


# static fields
.field public static final PROBLEM_LIMIT:I = 0x6f

.field private static final TAG:Ljava/lang/String; = "ParameterEngineTemperature"

.field public static final WARNING_LIMIT:I = 0x61


# instance fields
.field private historyValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleParamHistoryModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAbsoluteFormattedValue:Ljava/lang/String;

.field private mAbsoluteValue:Ljava/lang/Double;

.field private final mCommunication:Lcom/texa/carelib/communication/Communication;

.field mContext:Landroid/content/Context;

.field private mLabel:Ljava/lang/String;

.field private mLayoutPriority:I

.field private mPriority:I

.field private mUnitCelsius:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/texa/carelib/communication/Communication;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/texa/careapp/parameters/ParameterEngineTemperature;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/texa/careapp/parameters/ParameterEngineTemperature;->mCommunication:Lcom/texa/carelib/communication/Communication;

    const p2, 0x7f1109cb

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/texa/careapp/parameters/ParameterEngineTemperature;->mLabel:Ljava/lang/String;

    const p2, 0x7f110d07

    .line 42
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/parameters/ParameterEngineTemperature;->mUnitCelsius:Ljava/lang/String;

    .line 43
    sget-object p1, Lcom/texa/careapp/Constants;->CARE_DRIVER_PARAMETERS:Ljava/util/List;

    sget-object p2, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {p2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/parameters/ParameterEngineTemperature;->mPriority:I

    return-void
.end method

.method private isConnected()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterEngineTemperature;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isCareConnected(Lcom/texa/carelib/communication/Communication;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getChartType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleParamHistoryModel;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterEngineTemperature;->historyValues:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getLayoutPriority()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/texa/careapp/parameters/ParameterEngineTemperature;->mLayoutPriority:I

    return v0
.end method

.method public getLimitItem()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    const/16 v0, 0x96

    return v0
.end method

.method public getMinValue()I
    .locals 1

    const/16 v0, -0x28

    return v0
.end method

.method public getMockHistory()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleParamHistoryModel;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    invoke-direct {v1, v2, v3}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    const-wide v4, 0x4053800000000000L    # 78.0

    invoke-direct {v1, v4, v5}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    invoke-direct {v1, v4, v5}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    invoke-direct {v1, v4, v5}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    const-wide v4, 0x4056800000000000L    # 90.0

    invoke-direct {v1, v4, v5}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-direct {v1, v4, v5}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-direct {v1, v2, v3}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getParameterType()J
    .locals 2

    .line 152
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getParameterTypeRelative()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getPriority()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/texa/careapp/parameters/ParameterEngineTemperature;->mPriority:I

    return v0
.end method

.method public getProblemValue()I
    .locals 1

    const/16 v0, 0x6f

    return v0
.end method

.method public getReadableValue()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/texa/careapp/parameters/ParameterEngineTemperature;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-"

    return-object v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterEngineTemperature;->mAbsoluteFormattedValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterEngineTemperature;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterEngineTemperature;->mUnitCelsius:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/texa/careapp/parameters/ParameterEngineTemperature;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterEngineTemperature;->mAbsoluteValue:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getWarningValue()I
    .locals 1

    const/16 v0, 0x61

    return v0
.end method

.method public isHigherThreshold()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setLayoutPriority(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/texa/careapp/parameters/ParameterEngineTemperature;->mLayoutPriority:I

    return-void
.end method

.method public update(Lcom/texa/careapp/model/VehicleParam;)V
    .locals 1

    .line 47
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/ParameterEngineTemperature;->mAbsoluteValue:Ljava/lang/Double;

    .line 48
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueFormatted()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/ParameterEngineTemperature;->mAbsoluteFormattedValue:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getHistoryParam()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/parameters/ParameterEngineTemperature;->historyValues:Ljava/util/List;

    return-void
.end method
