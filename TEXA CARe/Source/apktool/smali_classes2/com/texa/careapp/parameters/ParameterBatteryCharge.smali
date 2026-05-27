.class public Lcom/texa/careapp/parameters/ParameterBatteryCharge;
.super Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersNoChart;
.source "ParameterBatteryCharge.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParameterBatteryCharge"


# instance fields
.field private mFormattedValue:Ljava/lang/String;

.field private final mLabel:Ljava/lang/String;

.field private mNumericValue:Ljava/lang/Double;

.field private final mUnit:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersNoChart;-><init>()V

    const v0, 0x7f11006c

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/ParameterBatteryCharge;->mLabel:Ljava/lang/String;

    const v0, 0x7f110d0f

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/parameters/ParameterBatteryCharge;->mUnit:Ljava/lang/String;

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

    const/16 v0, 0xf

    return v0
.end method

.method public getPriority()I
    .locals 3

    .line 86
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_DRIVER_PARAMETERS:Ljava/util/List;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->BATTERY_CHARGE_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

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

    .line 47
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterBatteryCharge;->mFormattedValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterBatteryCharge;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterBatteryCharge;->mUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterBatteryCharge;->mNumericValue:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

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
    .locals 1

    .line 31
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/ParameterBatteryCharge;->mNumericValue:Ljava/lang/Double;

    .line 32
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueFormatted()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/parameters/ParameterBatteryCharge;->mFormattedValue:Ljava/lang/String;

    return-void
.end method
