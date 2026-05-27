.class public Lcom/texa/careapp/model/VehicleAlarm;
.super Ljava/lang/Object;
.source "VehicleAlarm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/model/VehicleAlarm$AlarmData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VehicleAlarm"


# instance fields
.field private alarmDataList:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/texa/careapp/model/VehicleAlarm$AlarmData;",
            ">;"
        }
    .end annotation
.end field

.field private alarmStatus:Lcom/texa/careapp/model/AlarmStatus;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private alarmType:Lcom/texa/careapp/model/AlarmType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private measureUnit:Lcom/texa/careapp/utils/MeasureUnit;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data_unit"
    .end annotation
.end field

.field private timestamp:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private vehicleId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vehicle_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/model/VehicleAlarm;->timestamp:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public addAlarmData(Lcom/texa/careapp/model/VehicleAlarm$AlarmData;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleAlarm;->alarmDataList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/model/VehicleAlarm;->alarmDataList:Ljava/util/ArrayList;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleAlarm;->alarmDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 53
    :cond_1
    check-cast p1, Lcom/texa/careapp/model/VehicleAlarm;

    .line 55
    iget-object v2, p0, Lcom/texa/careapp/model/VehicleAlarm;->vehicleId:Ljava/lang/String;

    iget-object v3, p1, Lcom/texa/careapp/model/VehicleAlarm;->vehicleId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/careapp/model/VehicleAlarm;->alarmType:Lcom/texa/careapp/model/AlarmType;

    iget-object p1, p1, Lcom/texa/careapp/model/VehicleAlarm;->alarmType:Lcom/texa/careapp/model/AlarmType;

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAlarmDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/texa/careapp/model/VehicleAlarm$AlarmData;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleAlarm;->alarmDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAlarmStatus()Lcom/texa/careapp/model/AlarmStatus;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleAlarm;->alarmStatus:Lcom/texa/careapp/model/AlarmStatus;

    return-object v0
.end method

.method public getAlarmType()Lcom/texa/careapp/model/AlarmType;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleAlarm;->alarmType:Lcom/texa/careapp/model/AlarmType;

    return-object v0
.end method

.method public getMeasureUnit()Lcom/texa/careapp/utils/MeasureUnit;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleAlarm;->measureUnit:Lcom/texa/careapp/utils/MeasureUnit;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleAlarm;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getVehicleId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleAlarm;->vehicleId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleAlarm;->vehicleId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/texa/careapp/model/VehicleAlarm;->alarmType:Lcom/texa/careapp/model/AlarmType;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 63
    invoke-virtual {v1}, Lcom/texa/careapp/model/AlarmType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public setAlarmDataList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/texa/careapp/model/VehicleAlarm$AlarmData;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleAlarm;->alarmDataList:Ljava/util/ArrayList;

    return-void
.end method

.method public setAlarmStatus(Lcom/texa/careapp/model/AlarmStatus;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleAlarm;->alarmStatus:Lcom/texa/careapp/model/AlarmStatus;

    return-void
.end method

.method public setAlarmType(Lcom/texa/careapp/model/AlarmType;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleAlarm;->alarmType:Lcom/texa/careapp/model/AlarmType;

    return-void
.end method

.method public setMeasureUnit(Lcom/texa/careapp/utils/MeasureUnit;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleAlarm;->measureUnit:Lcom/texa/careapp/utils/MeasureUnit;

    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleAlarm;->timestamp:Ljava/util/Date;

    return-void
.end method

.method public setVehicleId(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleAlarm;->vehicleId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VehicleAlarm(vehicleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleAlarm;->getVehicleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", alarmType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleAlarm;->getAlarmType()Lcom/texa/careapp/model/AlarmType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alarmStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleAlarm;->getAlarmStatus()Lcom/texa/careapp/model/AlarmStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", measureUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleAlarm;->getMeasureUnit()Lcom/texa/careapp/utils/MeasureUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alarmDataList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleAlarm;->getAlarmDataList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleAlarm;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
