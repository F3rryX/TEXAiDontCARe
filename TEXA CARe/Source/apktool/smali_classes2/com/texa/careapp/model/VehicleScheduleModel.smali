.class public Lcom/texa/careapp/model/VehicleScheduleModel;
.super Lcom/activeandroid/Model;
.source "VehicleScheduleModel.java"

# interfaces
.implements Lcom/texa/careapp/model/IScheduleModel;


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "VehicleSchedules"
.end annotation


# static fields
.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field public static final COLUMN_VEHICLE:Ljava/lang/String; = "Vehicle"

.field public static final TABLE_VEHICLE_SCHEDULE:Ljava/lang/String; = "VehicleSchedules"

.field private static final TAG:Ljava/lang/String; = "VehicleScheduleModel"


# instance fields
.field private archived:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private deletable:Z

.field private expireDate:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private expireOdo:Ljava/lang/Integer;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private refreshable:Z

.field private startDate:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private startOdo:Ljava/lang/Integer;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private type:Lcom/texa/careapp/model/ScheduleType;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "type"
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        unique = true
    .end annotation
.end field

.field private vehicle:Lcom/texa/careapp/model/VehicleModel;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Vehicle"
        notNull = true
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->deletable:Z

    .line 64
    iput-boolean v0, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->refreshable:Z

    return-void
.end method

.method private static from(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;)Lcom/texa/careapp/model/VehicleScheduleModel;
    .locals 2

    .line 88
    new-instance v0, Lcom/texa/careapp/model/VehicleScheduleModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/VehicleScheduleModel;-><init>()V

    .line 90
    iget-object v1, p1, Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;->startDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleScheduleModel;->setStartDate(Ljava/util/Date;)V

    .line 91
    iget-object v1, p1, Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;->expireDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleScheduleModel;->setExpireDate(Ljava/util/Date;)V

    .line 92
    iget-object v1, p1, Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;->startOdo:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleScheduleModel;->setStartOdo(Ljava/lang/Integer;)V

    .line 93
    iget-object v1, p1, Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;->expireOdo:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleScheduleModel;->setExpireOdo(Ljava/lang/Integer;)V

    .line 94
    iget-object p1, p1, Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;->type:Ljava/lang/String;

    invoke-static {p1}, Lcom/texa/careapp/model/ScheduleType;->lookupByValue(Ljava/lang/String;)Lcom/texa/careapp/model/ScheduleType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/VehicleScheduleModel;->setType(Lcom/texa/careapp/model/ScheduleType;)V

    .line 95
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/VehicleScheduleModel;->setVehicle(Lcom/texa/careapp/model/VehicleModel;)V

    return-object v0
.end method

.method public static from(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/networking/response/VehicleResponse;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/VehicleModel;",
            "Lcom/texa/careapp/networking/response/VehicleResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleScheduleModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 78
    iget-object v1, p1, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    iget-object v1, v1, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->deadlines:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 79
    iget-object p1, p1, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    iget-object p1, p1, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->deadlines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;

    .line 80
    invoke-static {p0, v1}, Lcom/texa/careapp/model/VehicleScheduleModel;->from(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public archive()V
    .locals 1

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->archived:Z

    return-void
.end method

.method public compareByDate(Ljava/util/Date;)I
    .locals 7

    .line 108
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    if-nez p1, :cond_1

    return v0

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->expireDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    return v0

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->expireDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    return v1
.end method

.method public daysToExpire()J
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->expireDate:Ljava/util/Date;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->daysToExpire(Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateToExpirePercent()Ljava/lang/Integer;
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->startDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->expireDate:Ljava/util/Date;

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->getDateToExpirePercent(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    .line 213
    sget-object v1, Lcom/texa/careapp/model/VehicleScheduleModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dateToExpirePercent invalid value (will retrun 0 instead): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 214
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDesciption()Ljava/lang/String;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleScheduleModel;->getVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 174
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getPlate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpireDate()Ljava/util/Date;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->expireDate:Ljava/util/Date;

    return-object v0
.end method

.method public getExpireOdo()Ljava/lang/Integer;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->expireOdo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getExpiringStatus()I
    .locals 3

    .line 147
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleScheduleModel;->getExpireOdo()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    return v0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object v0

    const/16 v1, 0x1e

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleScheduleModel;->getExpireOdo()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 151
    invoke-virtual {p0, v1}, Lcom/texa/careapp/model/VehicleScheduleModel;->getExpiringStatusByDays(I)I

    move-result v0

    return v0

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleScheduleModel;->getExpireOdo()Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x5dc

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2

    .line 153
    invoke-virtual {p0, v2}, Lcom/texa/careapp/model/VehicleScheduleModel;->getExpiringStatusByKm(I)I

    move-result v0

    return v0

    .line 154
    :cond_2
    invoke-virtual {p0, v1}, Lcom/texa/careapp/model/VehicleScheduleModel;->getExpiringStatusByDays(I)I

    move-result v0

    invoke-virtual {p0, v2}, Lcom/texa/careapp/model/VehicleScheduleModel;->getExpiringStatusByKm(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getExpiringStatusByDays(I)I
    .locals 1

    .line 131
    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/VehicleScheduleModel;->getLimitDate(I)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/VehicleScheduleModel;->compareByDate(Ljava/util/Date;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 132
    sget p1, Lcom/texa/careapp/Constants;->LIMIT_DAYS_FOR_FAR_SCHEDULE:I

    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/VehicleScheduleModel;->getLimitDate(I)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/VehicleScheduleModel;->compareByDate(Ljava/util/Date;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 136
    :cond_1
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/VehicleScheduleModel;->compareByDate(Ljava/util/Date;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getExpiringStatusByKm(I)I
    .locals 2

    .line 158
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleScheduleModel;->getExpireOdo()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleScheduleModel;->getVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->nonNegativeSubtraction(II)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleScheduleModel;->getExpireOdo()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleScheduleModel;->getVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->nonNegativeSubtraction(II)I

    move-result v0

    if-ge v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleScheduleModel;->getExpireOdo()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleScheduleModel;->getVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->nonNegativeSubtraction(II)I

    move-result p1

    sget v0, Lcom/texa/careapp/Constants;->LIMIT_KM_FOR_FAR_SCHEDULE:I

    if-ge p1, v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x2

    return p1
.end method

.method public getKmToExpire(I)Ljava/lang/Integer;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->expireOdo:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 188
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getKmToExpirePercent(I)Ljava/lang/Integer;
    .locals 4

    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->startOdo:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->expireOdo:Ljava/lang/Integer;

    invoke-static {v0, v1, v2}, Lcom/texa/careapp/utils/Utils;->getOdometerToExpirePercent(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_0

    .line 197
    sget-object p1, Lcom/texa/careapp/model/VehicleScheduleModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "odometerToExpirePercent invalid value (will return 0 instead): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x64

    if-gt v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_2

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 203
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x1

    iget-object v1, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->startOdo:Ljava/lang/Integer;

    aput-object v1, v2, p1

    const/4 p1, 0x2

    iget-object v1, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->expireOdo:Ljava/lang/Integer;

    aput-object v1, v2, p1

    const/4 p1, 0x3

    aput-object v0, v2, p1

    const-string p1, "getOdometerToExpirePercent is invalid: actualOdometer= %s,startOdo= %s,expireOdo= %s,odometerToExpirePercent= %s"

    .line 202
    invoke-static {p1, v2}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public getLimitDate(I)Ljava/util/Date;
    .locals 2

    .line 125
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 126
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 127
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->startDate:Ljava/util/Date;

    return-object v0
.end method

.method public getStartOdo()Ljava/lang/Integer;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->startOdo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()Lcom/texa/careapp/model/ScheduleType;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->type:Lcom/texa/careapp/model/ScheduleType;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicle()Lcom/texa/careapp/model/VehicleModel;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->vehicle:Lcom/texa/careapp/model/VehicleModel;

    return-object v0
.end method

.method public isArchived()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->archived:Z

    return v0
.end method

.method public isDeletable()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->deletable:Z

    return v0
.end method

.method public isExpired()Z
    .locals 2

    .line 180
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleScheduleModel;->getExpiringStatus()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRefreshable()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->refreshable:Z

    return v0
.end method

.method public setArchived(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->archived:Z

    return-void
.end method

.method public setDeletable(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->deletable:Z

    return-void
.end method

.method public setExpireDate(Ljava/util/Date;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->expireDate:Ljava/util/Date;

    return-void
.end method

.method public setExpireOdo(Ljava/lang/Integer;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->expireOdo:Ljava/lang/Integer;

    return-void
.end method

.method public setRefreshable(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->refreshable:Z

    return-void
.end method

.method public setStartDate(Ljava/util/Date;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->startDate:Ljava/util/Date;

    return-void
.end method

.method public setStartOdo(Ljava/lang/Integer;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->startOdo:Ljava/lang/Integer;

    return-void
.end method

.method public setType(Lcom/texa/careapp/model/ScheduleType;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->type:Lcom/texa/careapp/model/ScheduleType;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->uid:Ljava/lang/String;

    return-void
.end method

.method public setVehicle(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleScheduleModel;->vehicle:Lcom/texa/careapp/model/VehicleModel;

    return-void
.end method
