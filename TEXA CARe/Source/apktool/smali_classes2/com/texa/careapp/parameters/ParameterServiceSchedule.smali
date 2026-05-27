.class public Lcom/texa/careapp/parameters/ParameterServiceSchedule;
.super Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersNoChart;
.source "ParameterServiceSchedule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParameterServiceSchedule"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mLabel:Ljava/lang/String;

.field private mServiceInfo:Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersNoChart;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/texa/careapp/parameters/ParameterServiceSchedule;->mContext:Landroid/content/Context;

    const v0, 0x7f110bfc

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/parameters/ParameterServiceSchedule;->mLabel:Ljava/lang/String;

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

    const/4 v0, -0x1

    return v0
.end method

.method public getProblemValue()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getReadableValue()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterServiceSchedule;->mServiceInfo:Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;

    iget-object v0, v0, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterServiceSchedule;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterServiceSchedule;->mServiceInfo:Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;

    iget-object v0, v0, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->unit:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/MeasureUnit;->getStringRes()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterServiceSchedule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/texa/careapp/parameters/ParameterServiceSchedule;->mServiceInfo:Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;

    iget-object v1, v1, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->unit:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/MeasureUnit;->getStringRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterServiceSchedule;->mServiceInfo:Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;

    if-eqz v0, :cond_1

    .line 50
    iget v0, v0, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->percent:I

    if-gtz v0, :cond_0

    const/16 v0, 0x64

    return v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParameterServiceSchedule;->mServiceInfo:Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;

    iget v0, v0, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->percent:I

    return v0

    :cond_1
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

.method public update(Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/texa/careapp/parameters/ParameterServiceSchedule;->mServiceInfo:Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;

    return-void
.end method
