.class public Lcom/texa/careapp/parameters/ParameterAbsCngLevel;
.super Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersNoChart;
.source "ParameterAbsCngLevel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParameterAbsCngLevel"


# instance fields
.field private mLabel:Ljava/lang/String;

.field private mUnit:Ljava/lang/String;

.field private mValueFormatted:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersNoChart;-><init>()V

    const v0, 0x7f11001d

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/ParameterAbsCngLevel;->mLabel:Ljava/lang/String;

    const v0, 0x7f110d0a

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/parameters/ParameterAbsCngLevel;->mUnit:Ljava/lang/String;

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

    const/4 v0, 0x0

    return v0
.end method

.method public getPriority()I
    .locals 3

    .line 84
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_DRIVER_PARAMETERS:Ljava/util/List;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ABS_CNG_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

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

    .line 45
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterAbsCngLevel;->mValueFormatted:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterAbsCngLevel;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterAbsCngLevel;->mUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

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

    .line 30
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueFormatted()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/parameters/ParameterAbsCngLevel;->mValueFormatted:Ljava/lang/String;

    return-void
.end method
