.class public Lcom/texa/careapp/parameters/ParameterBatteryVoltage;
.super Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;
.source "ParameterBatteryVoltage.java"


# static fields
.field public static final BATTERY_VOLTAGE_LEVEL:J = 0x499602d2L


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

.field private mFormattedValue:Ljava/lang/String;

.field private final mLabel:Ljava/lang/String;

.field private mLayoutPriority:I

.field private mNumericValue:Ljava/lang/Double;

.field private final mUnit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;-><init>()V

    const v0, 0x7f110072

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/ParameterBatteryVoltage;->mLabel:Ljava/lang/String;

    const v0, 0x7f110d12

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/parameters/ParameterBatteryVoltage;->mUnit:Ljava/lang/String;

    return-void
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

    .line 115
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterBatteryVoltage;->historyValues:Ljava/util/List;

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

    .line 85
    iget v0, p0, Lcom/texa/careapp/parameters/ParameterBatteryVoltage;->mLayoutPriority:I

    return v0
.end method

.method public getLimitItem()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public getMinValue()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMockHistory()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleParamHistoryModel;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-direct {v1, v2, v3}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    invoke-direct {v1, v2, v3}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    invoke-direct {v1, v2, v3}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    const-wide/high16 v2, 0x402c000000000000L    # 14.0

    invoke-direct {v1, v2, v3}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    invoke-direct {v1, v2, v3}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-direct {v1, v2, v3}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    invoke-direct {v1, v2, v3}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v2, v3}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    invoke-direct {v1, v2, v3}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-direct {v1, v2, v3}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getParameterType()J
    .locals 2

    const-wide/32 v0, 0x499602d2

    return-wide v0
.end method

.method public getParameterTypeRelative()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getPriority()I
    .locals 3

    .line 100
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_DRIVER_PARAMETERS:Ljava/util/List;

    const-wide/32 v1, 0x499602d2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getProblemValue()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getReadableValue()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterBatteryVoltage;->mFormattedValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "-"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterBatteryVoltage;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterBatteryVoltage;->mUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterBatteryVoltage;->mNumericValue:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWarningValue()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public isHigherThreshold()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setLayoutPriority(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/texa/careapp/parameters/ParameterBatteryVoltage;->mLayoutPriority:I

    return-void
.end method

.method public update(Lcom/texa/careapp/model/VehicleParam;)V
    .locals 2

    .line 36
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/ParameterBatteryVoltage;->mNumericValue:Ljava/lang/Double;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/ParameterBatteryVoltage;->mFormattedValue:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getHistoryParam()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/parameters/ParameterBatteryVoltage;->historyValues:Ljava/util/List;

    return-void
.end method
