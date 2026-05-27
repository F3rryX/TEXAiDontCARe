.class public Lcom/texa/careapp/utils/ScheduleHelper;
.super Ljava/lang/Object;
.source "ScheduleHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;
    }
.end annotation


# instance fields
.field private dateSchedule:Lcom/texa/careapp/model/VehicleScheduleModel;

.field private mActualOdometer:I

.field private odometerSchedule:Lcom/texa/careapp/model/VehicleScheduleModel;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/model/VehicleScheduleModel;Lcom/texa/careapp/model/VehicleScheduleModel;I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/texa/careapp/utils/ScheduleHelper;->odometerSchedule:Lcom/texa/careapp/model/VehicleScheduleModel;

    .line 23
    iput-object p2, p0, Lcom/texa/careapp/utils/ScheduleHelper;->dateSchedule:Lcom/texa/careapp/model/VehicleScheduleModel;

    .line 24
    iput p3, p0, Lcom/texa/careapp/utils/ScheduleHelper;->mActualOdometer:I

    return-void
.end method


# virtual methods
.method public parse()Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;
    .locals 5

    .line 29
    new-instance v0, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;

    invoke-direct {v0}, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;-><init>()V

    .line 31
    iget-object v1, p0, Lcom/texa/careapp/utils/ScheduleHelper;->odometerSchedule:Lcom/texa/careapp/model/VehicleScheduleModel;

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/texa/careapp/utils/ScheduleHelper;->dateSchedule:Lcom/texa/careapp/model/VehicleScheduleModel;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    if-eqz v1, :cond_1

    .line 34
    iget-object v2, p0, Lcom/texa/careapp/utils/ScheduleHelper;->dateSchedule:Lcom/texa/careapp/model/VehicleScheduleModel;

    if-nez v2, :cond_1

    .line 36
    iget v2, p0, Lcom/texa/careapp/utils/ScheduleHelper;->mActualOdometer:I

    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/VehicleScheduleModel;->getKmToExpirePercent(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->percent:I

    .line 37
    sget-object v1, Lcom/texa/careapp/utils/MeasureUnit;->DISTANCE_KILOMETER:Lcom/texa/careapp/utils/MeasureUnit;

    iput-object v1, v0, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->unit:Lcom/texa/careapp/utils/MeasureUnit;

    .line 38
    iget-object v1, p0, Lcom/texa/careapp/utils/ScheduleHelper;->odometerSchedule:Lcom/texa/careapp/model/VehicleScheduleModel;

    iget v2, p0, Lcom/texa/careapp/utils/ScheduleHelper;->mActualOdometer:I

    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/VehicleScheduleModel;->getKmToExpire(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->value:Ljava/lang/String;

    return-object v0

    :cond_1
    if-nez v1, :cond_2

    .line 42
    iget-object v1, p0, Lcom/texa/careapp/utils/ScheduleHelper;->dateSchedule:Lcom/texa/careapp/model/VehicleScheduleModel;

    if-eqz v1, :cond_2

    .line 44
    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleScheduleModel;->getDateToExpirePercent()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->percent:I

    .line 45
    sget-object v1, Lcom/texa/careapp/utils/MeasureUnit;->DAYS:Lcom/texa/careapp/utils/MeasureUnit;

    iput-object v1, v0, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->unit:Lcom/texa/careapp/utils/MeasureUnit;

    .line 46
    iget-object v1, p0, Lcom/texa/careapp/utils/ScheduleHelper;->dateSchedule:Lcom/texa/careapp/model/VehicleScheduleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleScheduleModel;->daysToExpire()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->value:Ljava/lang/String;

    return-object v0

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/texa/careapp/utils/ScheduleHelper;->dateSchedule:Lcom/texa/careapp/model/VehicleScheduleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleScheduleModel;->getDateToExpirePercent()Ljava/lang/Integer;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/texa/careapp/utils/ScheduleHelper;->odometerSchedule:Lcom/texa/careapp/model/VehicleScheduleModel;

    iget v3, p0, Lcom/texa/careapp/utils/ScheduleHelper;->mActualOdometer:I

    invoke-virtual {v2, v3}, Lcom/texa/careapp/model/VehicleScheduleModel;->getKmToExpirePercent(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 58
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 59
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->percent:I

    .line 60
    sget-object v1, Lcom/texa/careapp/utils/MeasureUnit;->DAYS:Lcom/texa/careapp/utils/MeasureUnit;

    iput-object v1, v0, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->unit:Lcom/texa/careapp/utils/MeasureUnit;

    .line 61
    iget-object v1, p0, Lcom/texa/careapp/utils/ScheduleHelper;->dateSchedule:Lcom/texa/careapp/model/VehicleScheduleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleScheduleModel;->daysToExpire()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->value:Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->percent:I

    .line 64
    sget-object v1, Lcom/texa/careapp/utils/MeasureUnit;->DISTANCE_KILOMETER:Lcom/texa/careapp/utils/MeasureUnit;

    iput-object v1, v0, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->unit:Lcom/texa/careapp/utils/MeasureUnit;

    .line 65
    iget-object v1, p0, Lcom/texa/careapp/utils/ScheduleHelper;->odometerSchedule:Lcom/texa/careapp/model/VehicleScheduleModel;

    iget v2, p0, Lcom/texa/careapp/utils/ScheduleHelper;->mActualOdometer:I

    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/VehicleScheduleModel;->getKmToExpire(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->value:Ljava/lang/String;

    :cond_4
    :goto_0
    return-object v0
.end method
