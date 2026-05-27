.class public abstract Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;
.super Ljava/lang/Object;
.source "ParametersChartItem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getChartType()I
.end method

.method public abstract getLayoutPriority()I
.end method

.method public abstract getLimitItem()I
.end method

.method public abstract getMaxValue()I
.end method

.method public getNormalColor(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f060035

    .line 40
    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public abstract getPriority()I
.end method

.method public getProblemColor(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f060036

    .line 48
    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public abstract getProblemValue()I
.end method

.method public abstract getReadableValue()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUnit()Ljava/lang/String;
.end method

.method public abstract getValue()I
.end method

.method public getWarningColor(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f060037

    .line 44
    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public abstract getWarningValue()I
.end method

.method public abstract isHigherThreshold()Z
.end method
