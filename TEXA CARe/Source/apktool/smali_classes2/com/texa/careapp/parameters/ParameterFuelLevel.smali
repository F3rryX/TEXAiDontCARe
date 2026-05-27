.class public Lcom/texa/careapp/parameters/ParameterFuelLevel;
.super Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;
.source "ParameterFuelLevel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParameterFuelLevel"


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

.field private mLabel:Ljava/lang/String;

.field private mLayoutPriority:I

.field private mRelativeValue:Ljava/lang/Double;

.field private mRelativeValueFormatted:Ljava/lang/String;

.field private mUnitLiter:Ljava/lang/String;

.field private mUnitPercent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;-><init>()V

    const v0, 0x7f110a7e

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mLabel:Ljava/lang/String;

    const v0, 0x7f110d0d

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mUnitLiter:Ljava/lang/String;

    const v0, 0x7f110d0f

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mUnitPercent:Ljava/lang/String;

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

    .line 152
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->historyValues:Ljava/util/List;

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

    .line 119
    iget v0, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mLayoutPriority:I

    return v0
.end method

.method public getLimitItem()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mAbsoluteFormattedValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v0, 0x5a

    return v0

    :cond_0
    const/16 v0, 0x64

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

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    invoke-direct {v1, v2, v3}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    const-wide v4, 0x404d800000000000L    # 59.0

    invoke-direct {v1, v4, v5}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    invoke-direct {v1, v4, v5}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    invoke-direct {v1, v4, v5}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    const-wide v4, 0x4051800000000000L    # 70.0

    invoke-direct {v1, v4, v5}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-direct {v1, v4, v5}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-direct {v1, v2, v3}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getParameterType()J
    .locals 2

    .line 170
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getParameterTypeRelative()J
    .locals 2

    .line 175
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPriority()I
    .locals 3

    .line 134
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_DRIVER_PARAMETERS:Ljava/util/List;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getProblemValue()I
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mAbsoluteFormattedValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    return v0

    :cond_0
    const/16 v0, 0xa

    return v0
.end method

.method public getReadableValue()Ljava/lang/String;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mAbsoluteFormattedValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mRelativeValueFormatted:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mAbsoluteValue:Ljava/lang/Double;

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mAbsoluteValue:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mRelativeValue:Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mRelativeValue:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mAbsoluteFormattedValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mUnitLiter:Ljava/lang/String;

    return-object v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mUnitPercent:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mAbsoluteValue:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mRelativeValue:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getWarningValue()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mAbsoluteFormattedValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    return v0

    :cond_0
    const/16 v0, 0x14

    return v0
.end method

.method public isHigherThreshold()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setLayoutPriority(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mLayoutPriority:I

    return-void
.end method

.method public update(Lcom/texa/careapp/model/VehicleParam;)V
    .locals 5

    .line 42
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v0

    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mAbsoluteValue:Ljava/lang/Double;

    .line 44
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueFormatted()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mAbsoluteFormattedValue:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getHistoryParam()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->historyValues:Ljava/util/List;

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v0

    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 47
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mRelativeValue:Ljava/lang/Double;

    .line 48
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueFormatted()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->mRelativeValueFormatted:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getHistoryParam()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/parameters/ParameterFuelLevel;->historyValues:Ljava/util/List;

    :goto_0
    return-void

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid dataId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
