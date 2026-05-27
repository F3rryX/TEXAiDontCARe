.class public Lcom/texa/careapp/parameters/ParameterOilQualityStatus;
.super Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersNoChart;
.source "ParameterOilQualityStatus.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParameterOilQualityStatus"


# instance fields
.field private final mLabel:Ljava/lang/String;

.field private final mPriority:I

.field private mStatusActiveLabel:Ljava/lang/String;

.field private mStatusNotActiveLabel:Ljava/lang/String;

.field private mValueStatus:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersNoChart;-><init>()V

    const v0, 0x7f110b28

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/ParameterOilQualityStatus;->mLabel:Ljava/lang/String;

    const v0, 0x7f110b29

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/ParameterOilQualityStatus;->mStatusActiveLabel:Ljava/lang/String;

    const v0, 0x7f110b2a

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/parameters/ParameterOilQualityStatus;->mStatusNotActiveLabel:Ljava/lang/String;

    .line 34
    sget-object p1, Lcom/texa/careapp/Constants;->CARE_DRIVER_PARAMETERS:Ljava/util/List;

    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->OIL_QUALITY_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/parameters/ParameterOilQualityStatus;->mPriority:I

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
    .locals 1

    .line 96
    iget v0, p0, Lcom/texa/careapp/parameters/ParameterOilQualityStatus;->mPriority:I

    return v0
.end method

.method public getProblemValue()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getReadableValue()Ljava/lang/String;
    .locals 5

    .line 53
    iget-wide v0, p0, Lcom/texa/careapp/parameters/ParameterOilQualityStatus;->mValueStatus:J

    sget-object v2, Lcom/texa/carelib/diagresources/EnumValue;->ACTIVE:Lcom/texa/carelib/diagresources/EnumValue;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/EnumValue;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 54
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterOilQualityStatus;->mStatusActiveLabel:Ljava/lang/String;

    return-object v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterOilQualityStatus;->mStatusNotActiveLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterOilQualityStatus;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getValue()I
    .locals 5

    .line 62
    iget-wide v0, p0, Lcom/texa/careapp/parameters/ParameterOilQualityStatus;->mValueStatus:J

    sget-object v2, Lcom/texa/carelib/diagresources/EnumValue;->ACTIVE:Lcom/texa/carelib/diagresources/EnumValue;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/EnumValue;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/16 v0, 0x14

    return v0

    :cond_0
    const/16 v0, 0x64

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
    .locals 2

    .line 38
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueStatus()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/texa/careapp/parameters/ParameterOilQualityStatus;->mValueStatus:J

    return-void
.end method
