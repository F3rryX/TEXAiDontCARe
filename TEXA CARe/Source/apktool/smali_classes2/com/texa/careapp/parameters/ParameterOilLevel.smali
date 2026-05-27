.class public Lcom/texa/careapp/parameters/ParameterOilLevel;
.super Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersNoChart;
.source "ParameterOilLevel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParameterOilLevel"


# instance fields
.field private mAbsoluteFormattedValue:Ljava/lang/String;

.field private mAbsoluteValue:Ljava/lang/Double;

.field private mLabel:Ljava/lang/String;

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

    .line 28
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersNoChart;-><init>()V

    const v0, 0x7f110b22

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/ParameterOilLevel;->mLabel:Ljava/lang/String;

    const v0, 0x7f110d0d

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/ParameterOilLevel;->mUnitLiter:Ljava/lang/String;

    const v0, 0x7f110d0f

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/parameters/ParameterOilLevel;->mUnitPercent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChartType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getLayoutPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getLimitItem()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getPriority()I
    .locals 3

    .line 106
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_DRIVER_PARAMETERS:Ljava/util/List;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

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

    const/4 v0, 0x0

    return v0
.end method

.method public getReadableValue()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterOilLevel;->mAbsoluteFormattedValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterOilLevel;->mRelativeValueFormatted:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterOilLevel;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterOilLevel;->mAbsoluteFormattedValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterOilLevel;->mUnitLiter:Ljava/lang/String;

    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterOilLevel;->mUnitPercent:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterOilLevel;->mAbsoluteValue:Ljava/lang/Double;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterOilLevel;->mRelativeValue:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getWarningValue()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHigherThreshold()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public update(Lcom/texa/careapp/model/VehicleParam;)V
    .locals 5

    .line 35
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v0

    .line 37
    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/ParameterOilLevel;->mAbsoluteValue:Ljava/lang/Double;

    .line 39
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueFormatted()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/parameters/ParameterOilLevel;->mAbsoluteFormattedValue:Ljava/lang/String;

    goto :goto_0

    .line 40
    :cond_0
    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 41
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/ParameterOilLevel;->mRelativeValue:Ljava/lang/Double;

    .line 42
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueFormatted()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/parameters/ParameterOilLevel;->mRelativeValueFormatted:Ljava/lang/String;

    :goto_0
    return-void

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid dataId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
