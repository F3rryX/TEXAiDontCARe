.class public Lcom/texa/careapp/model/VehicleParamHistoryModel;
.super Lcom/activeandroid/Model;
.source "VehicleParamHistoryModel.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "VehicleParamHistory"
.end annotation


# static fields
.field public static final COLUMN_DATE:Ljava/lang/String; = "Date"

.field public static final COLUMN_ID_PARAM:Ljava/lang/String; = "Param"

.field public static final COLUMN_ID_TRIP:Ljava/lang/String; = "Trip"

.field public static final COLUMN_ODO_VALUE:Ljava/lang/String; = "OdoValue"

.field public static final COLUMN_VALUE:Ljava/lang/String; = "ParamValue"

.field public static final TABLE_NAME:Ljava/lang/String; = "VehicleParamHistory"


# instance fields
.field private date:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Date"
    .end annotation
.end field

.field private differenceOdoValue:D

.field private odoValue:D
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "OdoValue"
    .end annotation
.end field

.field private trip:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Trip"
    .end annotation
.end field

.field private value:D
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "ParamValue"
    .end annotation
.end field

.field private vehicleParam:Lcom/texa/careapp/model/VehicleParam;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Param"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
        uniqueGroups = {
            "key"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 60
    iput-wide p1, p0, Lcom/texa/careapp/model/VehicleParamHistoryModel;->value:D

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleParamHistoryModel;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDifferenceOdoValue()D
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/texa/careapp/model/VehicleParamHistoryModel;->differenceOdoValue:D

    return-wide v0
.end method

.method public getOdoValue()D
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/texa/careapp/model/VehicleParamHistoryModel;->odoValue:D

    return-wide v0
.end method

.method public getTrip()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/texa/careapp/model/VehicleParamHistoryModel;->trip:J

    return-wide v0
.end method

.method public getValue()D
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/texa/careapp/model/VehicleParamHistoryModel;->value:D

    return-wide v0
.end method

.method public getVehicleParam()Lcom/texa/careapp/model/VehicleParam;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleParamHistoryModel;->vehicleParam:Lcom/texa/careapp/model/VehicleParam;

    return-object v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleParamHistoryModel;->date:Ljava/util/Date;

    return-void
.end method

.method public setDifferenceOdoValue(D)V
    .locals 0

    .line 53
    iput-wide p1, p0, Lcom/texa/careapp/model/VehicleParamHistoryModel;->differenceOdoValue:D

    return-void
.end method

.method public setOdoValue(D)V
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/texa/careapp/model/VehicleParamHistoryModel;->odoValue:D

    return-void
.end method

.method public setTrip(J)V
    .locals 0

    .line 49
    iput-wide p1, p0, Lcom/texa/careapp/model/VehicleParamHistoryModel;->trip:J

    return-void
.end method

.method public setValue(D)V
    .locals 0

    .line 39
    iput-wide p1, p0, Lcom/texa/careapp/model/VehicleParamHistoryModel;->value:D

    return-void
.end method

.method public setVehicleParam(Lcom/texa/careapp/model/VehicleParam;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleParamHistoryModel;->vehicleParam:Lcom/texa/careapp/model/VehicleParam;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VehicleParamHistoryModel{vehicleParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/model/VehicleParamHistoryModel;->vehicleParam:Lcom/texa/careapp/model/VehicleParam;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/model/VehicleParamHistoryModel;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/texa/careapp/model/VehicleParamHistoryModel;->value:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", odoValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/texa/careapp/model/VehicleParamHistoryModel;->odoValue:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", trip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/texa/careapp/model/VehicleParamHistoryModel;->trip:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
