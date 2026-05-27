.class public Lcom/texa/careapp/model/VehicleParam;
.super Lcom/activeandroid/Model;
.source "VehicleParam.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "VehicleParam"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/activeandroid/Model;",
        "Ljava/lang/Comparable<",
        "Lcom/texa/careapp/model/VehicleParam;",
        ">;"
    }
.end annotation


# static fields
.field public static final COLUMN_DATA_ID:Ljava/lang/String; = "dataId"

.field public static final COLUMN_HISTORICAL_PARAMS:Ljava/lang/String; = "historicalParams"

.field public static final COLUMN_SYNC_NEEDED:Ljava/lang/String; = "sync_needed"

.field public static final COLUMN_VEHICLE:Ljava/lang/String; = "vehicle"

.field public static final TABLE_VEHICLES_PARAM:Ljava/lang/String; = "VehicleParam"

.field private static final TAG:Ljava/lang/String; = "VehicleParam"


# instance fields
.field private dataId:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        index = true
        name = "dataId"
        uniqueGroups = {
            "key"
        }
    .end annotation
.end field

.field private maxValue:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private syncNeeded:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "sync_needed"
    .end annotation
.end field

.field private timestamp:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private unit:Lcom/texa/careapp/utils/MeasureUnit;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private valueDataType:Lcom/texa/carelib/care/vehicle/ValueDataType;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private valueFormatted:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private valueNumeric:Ljava/lang/Double;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private valueStatus:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private valueString:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private vehicleModel:Lcom/texa/careapp/model/VehicleModel;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        index = true
        name = "vehicle"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
        uniqueGroups = {
            "key"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/texa/careapp/model/VehicleParam;->syncNeeded:Z

    return-void
.end method

.method public static from(Landroid/content/Context;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/VehicleScheduleModel;)Lcom/texa/careapp/model/VehicleParam;
    .locals 5

    .line 87
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 88
    invoke-virtual {p2}, Lcom/texa/careapp/model/VehicleScheduleModel;->getExpireOdo()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int v0, p2, p1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 96
    :cond_0
    new-instance v2, Lcom/texa/careapp/model/VehicleParam;

    invoke-direct {v2}, Lcom/texa/careapp/model/VehicleParam;-><init>()V

    int-to-double v3, p1

    .line 97
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/texa/careapp/model/VehicleParam;->setValueNumeric(Ljava/lang/Double;)V

    .line 98
    invoke-virtual {v2, p2}, Lcom/texa/careapp/model/VehicleParam;->setMaxValue(I)V

    const p1, 0x7f110b96

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/texa/careapp/model/VehicleParam;->setValueFormatted(Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public addParamToHistory(Lcom/texa/careapp/model/VehicleParamHistoryModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/careapp/exceptions/DatabaseIOException;
        }
    .end annotation

    .line 250
    invoke-virtual {p1, p0}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->setVehicleParam(Lcom/texa/careapp/model/VehicleParam;)V

    .line 251
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    return-void
.end method

.method public asObservable()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/model/VehicleParam;",
            ">;"
        }
    .end annotation

    .line 113
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    instance-of p1, p1, Lcom/texa/careapp/model/VehicleParam;

    return p1
.end method

.method public compareTo(Lcom/texa/careapp/model/VehicleParam;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleParam;->getValueFormatted()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueFormatted()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 40
    check-cast p1, Lcom/texa/careapp/model/VehicleParam;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/VehicleParam;->compareTo(Lcom/texa/careapp/model/VehicleParam;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 41
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/model/VehicleParam;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/model/VehicleParam;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/model/VehicleParam;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public formatForUser(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 187
    iget-wide v0, p0, Lcom/texa/careapp/model/VehicleParam;->dataId:J

    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Enum;->OIL_LEVEL_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleParam;->getValueStatus()J

    move-result-wide v0

    .line 190
    sget-object v2, Lcom/texa/carelib/diagresources/EnumValue;->ACTIVE:Lcom/texa/carelib/diagresources/EnumValue;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/EnumValue;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const v0, 0x7f110ac3

    .line 191
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const v0, 0x7f110ac4

    .line 193
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 197
    :cond_1
    iget-wide v0, p0, Lcom/texa/careapp/model/VehicleParam;->dataId:J

    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Enum;->OIL_QUALITY_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 198
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleParam;->getValueStatus()J

    move-result-wide v0

    .line 200
    sget-object v2, Lcom/texa/carelib/diagresources/EnumValue;->ACTIVE:Lcom/texa/carelib/diagresources/EnumValue;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/EnumValue;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    const v0, 0x7f110b29

    .line 201
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const v0, 0x7f110b2a

    .line 203
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleParam;->unit:Lcom/texa/careapp/utils/MeasureUnit;

    if-eqz v0, :cond_5

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleParam;->getValueFormatted()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/model/VehicleParam;->unit:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/MeasureUnit;->getStringRes()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/texa/careapp/model/VehicleParam;->unit:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/MeasureUnit;->getStringRes()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 210
    :cond_5
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleParam;->getValueFormatted()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDataId()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/texa/careapp/model/VehicleParam;->dataId:J

    return-wide v0
.end method

.method public getHistoryParam()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleParamHistoryModel;",
            ">;"
        }
    .end annotation

    .line 234
    const-class v0, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    const-string v1, "Param"

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/model/VehicleParam;->getMany(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    .line 237
    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getDate()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 238
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getMaxValue()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/texa/careapp/model/VehicleParam;->maxValue:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/texa/careapp/model/VehicleParam;->timestamp:J

    return-wide v0
.end method

.method public getUnit()Lcom/texa/careapp/utils/MeasureUnit;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleParam;->unit:Lcom/texa/careapp/utils/MeasureUnit;

    return-object v0
.end method

.method public getValueDataType()Lcom/texa/carelib/care/vehicle/ValueDataType;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleParam;->valueDataType:Lcom/texa/carelib/care/vehicle/ValueDataType;

    return-object v0
.end method

.method public getValueFormatted()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleParam;->valueFormatted:Ljava/lang/String;

    return-object v0
.end method

.method public getValueNumeric()Ljava/lang/Double;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleParam;->valueNumeric:Ljava/lang/Double;

    return-object v0
.end method

.method public getValueStatus()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/texa/careapp/model/VehicleParam;->valueStatus:J

    return-wide v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleParam;->valueString:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleModel()Lcom/texa/careapp/model/VehicleModel;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleParam;->vehicleModel:Lcom/texa/careapp/model/VehicleModel;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 41
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x3b

    add-int/2addr v0, v1

    return v0
.end method

.method public isSyncNeeded()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/texa/careapp/model/VehicleParam;->syncNeeded:Z

    return v0
.end method

.method public markAsUnsynchronized()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/careapp/exceptions/DatabaseIOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 123
    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/VehicleParam;->setSyncNeeded(Z)V

    .line 124
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    return-void
.end method

.method public removeParamFromHistory(Lcom/texa/careapp/model/VehicleParamHistoryModel;)V
    .locals 0

    .line 258
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->delete()V

    return-void
.end method

.method public setDataId(J)V
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/texa/careapp/model/VehicleParam;->dataId:J

    return-void
.end method

.method public setMaxValue(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/texa/careapp/model/VehicleParam;->maxValue:I

    return-void
.end method

.method public setSyncNeeded(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/texa/careapp/model/VehicleParam;->syncNeeded:Z

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/texa/careapp/model/VehicleParam;->timestamp:J

    return-void
.end method

.method public setUnit(Lcom/texa/careapp/utils/MeasureUnit;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleParam;->unit:Lcom/texa/careapp/utils/MeasureUnit;

    return-void
.end method

.method public setValueDataType(Lcom/texa/carelib/care/vehicle/ValueDataType;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleParam;->valueDataType:Lcom/texa/carelib/care/vehicle/ValueDataType;

    return-void
.end method

.method public setValueFormatted(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleParam;->valueFormatted:Ljava/lang/String;

    return-void
.end method

.method public setValueNumeric(Ljava/lang/Double;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleParam;->valueNumeric:Ljava/lang/Double;

    return-void
.end method

.method public setValueStatus(J)V
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/texa/careapp/model/VehicleParam;->valueStatus:J

    return-void
.end method

.method public setValueString(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleParam;->valueString:Ljava/lang/String;

    return-void
.end method

.method public setVehicleModel(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleParam;->vehicleModel:Lcom/texa/careapp/model/VehicleModel;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VehicleParam{dataId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/texa/careapp/model/VehicleParam;->dataId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", valueFormatted=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/model/VehicleParam;->valueFormatted:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", valueNumeric="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/model/VehicleParam;->valueNumeric:Ljava/lang/Double;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", valueString=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/model/VehicleParam;->valueString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", valueStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/texa/careapp/model/VehicleParam;->valueStatus:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", unit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/model/VehicleParam;->unit:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", valueDataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/model/VehicleParam;->valueDataType:Lcom/texa/carelib/care/vehicle/ValueDataType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/texa/careapp/model/VehicleParam;->maxValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/texa/careapp/model/VehicleParam;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", syncNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/texa/careapp/model/VehicleParam;->syncNeeded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/texa/careapp/utils/Timestamped;Lcom/texa/carelib/care/vehicle/Vehicle;J)Lcom/texa/careapp/model/VehicleParam;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/utils/Timestamped<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
            "J)",
            "Lcom/texa/careapp/model/VehicleParam;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/careapp/exceptions/DatabaseIOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p1}, Lcom/texa/careapp/utils/Timestamped;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 131
    iget-wide v2, p0, Lcom/texa/careapp/model/VehicleParam;->dataId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 132
    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/model/VehicleParam;->setDataId(J)V

    goto :goto_0

    :cond_0
    cmp-long v4, v2, v0

    if-nez v4, :cond_8

    :goto_0
    const/4 v2, 0x0

    .line 139
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/texa/carelib/care/vehicle/Vehicle;->getValueInfo(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/ValueInfo;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    const-string p1, "ValueInfo of VehicleParam with id: %s is NULL"

    new-array p2, v4, [Ljava/lang/Object;

    .line 141
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p2, v2

    invoke-static {p1, p2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 145
    :cond_1
    invoke-interface {v3}, Lcom/texa/carelib/care/vehicle/ValueInfo;->getType()Lcom/texa/carelib/care/vehicle/ValueDataType;

    move-result-object v3

    iput-object v3, p0, Lcom/texa/careapp/model/VehicleParam;->valueDataType:Lcom/texa/carelib/care/vehicle/ValueDataType;

    .line 147
    invoke-virtual {p1}, Lcom/texa/careapp/utils/Timestamped;->getTimestampMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/texa/careapp/model/VehicleParam;->timestamp:J

    .line 148
    sget-object p1, Lcom/texa/careapp/Constants;->DATAID_MEASURE_UNIT:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/utils/MeasureUnit;

    iput-object p1, p0, Lcom/texa/careapp/model/VehicleParam;->unit:Lcom/texa/careapp/utils/MeasureUnit;

    .line 150
    sget-object p1, Lcom/texa/careapp/model/VehicleParam$1;->$SwitchMap$com$texa$carelib$care$vehicle$ValueDataType:[I

    iget-object v3, p0, Lcom/texa/careapp/model/VehicleParam;->valueDataType:Lcom/texa/carelib/care/vehicle/ValueDataType;

    invoke-virtual {v3}, Lcom/texa/carelib/care/vehicle/ValueDataType;->ordinal()I

    move-result v3

    aget p1, p1, v3

    if-eq p1, v4, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    goto :goto_1

    .line 159
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/texa/carelib/care/vehicle/Vehicle;->getTextValue(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/VehicleParam;->setValueString(Ljava/lang/String;)V

    goto :goto_1

    .line 156
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/texa/carelib/care/vehicle/Vehicle;->getEnumValue(Ljava/lang/Long;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/model/VehicleParam;->setValueStatus(J)V

    goto :goto_1

    .line 152
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/texa/carelib/care/vehicle/Vehicle;->getNumericValue(Ljava/lang/Long;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/VehicleParam;->setValueNumeric(Ljava/lang/Double;)V

    .line 153
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/texa/carelib/care/vehicle/Vehicle;->getFormattedNumericValue(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/VehicleParam;->setValueFormatted(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-array p2, v2, [Ljava/lang/Object;

    const-string v3, "got exception on Switch(valueDataType)"

    .line 162
    invoke-static {p1, v3, p2}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :goto_1
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 167
    sget-object p1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide p1

    cmp-long v3, v0, p1

    if-eqz v3, :cond_5

    sget-object p1, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide p1

    cmp-long v3, v0, p1

    if-eqz v3, :cond_5

    sget-object p1, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 168
    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide p1

    cmp-long v3, v0, p1

    if-nez v3, :cond_7

    :cond_5
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const-wide/high16 v0, -0x3fd2000000000000L    # -15.0

    cmpl-double v3, p1, v0

    if-lez v3, :cond_7

    .line 170
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleParam;->getHistoryParam()Ljava/util/List;

    move-result-object p1

    .line 171
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/16 v0, 0x1f4

    if-lt p2, v0, :cond_6

    .line 172
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/VehicleParam;->removeParamFromHistory(Lcom/texa/careapp/model/VehicleParamHistoryModel;)V

    .line 174
    :cond_6
    new-instance p1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-direct {p1}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>()V

    .line 175
    iget-object p2, p0, Lcom/texa/careapp/model/VehicleParam;->vehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {p2}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->setOdoValue(D)V

    .line 176
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->setValue(D)V

    .line 177
    new-instance p2, Ljava/util/Date;

    iget-wide v0, p0, Lcom/texa/careapp/model/VehicleParam;->timestamp:J

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, p2}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->setDate(Ljava/util/Date;)V

    .line 178
    invoke-virtual {p1, p3, p4}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->setTrip(J)V

    .line 179
    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/VehicleParam;->addParamToHistory(Lcom/texa/careapp/model/VehicleParamHistoryModel;)V

    :cond_7
    return-object p0

    .line 134
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dataId mismatch!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update(Lcom/texa/careapp/utils/Timestamped;Lcom/texa/carelib/care/vehicle/Vehicle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/utils/Timestamped<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
            ")V"
        }
    .end annotation

    return-void
.end method
