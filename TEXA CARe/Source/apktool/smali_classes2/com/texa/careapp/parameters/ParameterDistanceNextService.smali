.class public Lcom/texa/careapp/parameters/ParameterDistanceNextService;
.super Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersNoChart;
.source "ParameterDistanceNextService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParameterDistanceNextService"


# instance fields
.field private final mLabel:Ljava/lang/String;

.field private final mUnit:Ljava/lang/String;

.field private mValue:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersNoChart;-><init>()V

    const v0, 0x7f110967

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/ParameterDistanceNextService;->mLabel:Ljava/lang/String;

    const v0, 0x7f110d0b

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/parameters/ParameterDistanceNextService;->mUnit:Ljava/lang/String;

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

    const/16 v0, 0x4e20

    return v0
.end method

.method public getPriority()I
    .locals 3

    .line 89
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_DRIVER_PARAMETERS:Ljava/util/List;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->DISTANCE_NEXT_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

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
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterDistanceNextService;->mValue:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/texa/careapp/parameters/ParameterDistanceNextService;->mValue:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterDistanceNextService;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterDistanceNextService;->mUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterDistanceNextService;->mValue:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

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
    .locals 0

    .line 31
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/parameters/ParameterDistanceNextService;->mValue:Ljava/lang/Double;

    return-void
.end method
