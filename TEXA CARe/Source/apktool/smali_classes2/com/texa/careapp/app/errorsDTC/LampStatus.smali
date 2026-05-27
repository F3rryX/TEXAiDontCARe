.class public Lcom/texa/careapp/app/errorsDTC/LampStatus;
.super Lcom/activeandroid/Model;
.source "LampStatus.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "LampStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/errorsDTC/LampStatus$LampColor;
    }
.end annotation


# static fields
.field public static final COLOR_RED:I = 0x1

.field public static final COLOR_YELLOW:I = 0x0

.field public static final COLUMN_DATA_ID:Ljava/lang/String; = "dataId"

.field public static final COLUMN_DATA_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_FILTERED:Ljava/lang/String; = "filtered"

.field public static final COLUMN_VEHICLE:Ljava/lang/String; = "vehicle"

.field public static final TABLE_LAMP_STATUS:Ljava/lang/String; = "LampStatus"


# instance fields
.field private color:Lcom/texa/careapp/app/errorsDTC/LampStatus$LampColor;

.field private dataId:Ljava/lang/Long;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "dataId"
        notNull = true
    .end annotation
.end field

.field private filtered:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "filtered"
        notNull = true
    .end annotation
.end field

.field private headerTitle:Ljava/lang/String;

.field private status:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "status"
        notNull = true
    .end annotation
.end field

.field private time:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field private vehicleModel:Lcom/texa/careapp/model/VehicleModel;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "vehicle"
        notNull = true
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 29
    instance-of p1, p1, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 29
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->getDataId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->getDataId()Ljava/lang/Long;

    move-result-object p1

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public getColor()Ljava/lang/Integer;
    .locals 3

    .line 79
    sget-object v0, Lcom/texa/careapp/Constants;->LAMP_COLORS:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/texa/careapp/app/errorsDTC/LampStatus;->dataId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0600f4

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f060074

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDataId()Ljava/lang/Long;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/texa/careapp/app/errorsDTC/LampStatus;->dataId:Ljava/lang/Long;

    return-object v0
.end method

.method public getDiagnosisType()Lcom/texa/careapp/app/diagnosis/DiagnosisType;
    .locals 3

    .line 89
    sget-object v0, Lcom/texa/careapp/Constants;->LAMP_DIAGNOSIS:Landroid/util/LongSparseArray;

    invoke-virtual {p0}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->getDataId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/texa/careapp/app/errorsDTC/LampStatus;->headerTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/texa/careapp/app/errorsDTC/LampStatus;->time:Ljava/util/Date;

    return-object v0
.end method

.method public getVehicleModel()Lcom/texa/careapp/model/VehicleModel;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/texa/careapp/app/errorsDTC/LampStatus;->vehicleModel:Lcom/texa/careapp/model/VehicleModel;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->getDataId()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public isActive()Z
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->isStatus()Z

    move-result v0

    return v0
.end method

.method public isFiltered()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/texa/careapp/app/errorsDTC/LampStatus;->filtered:Z

    return v0
.end method

.method public isStatus()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/texa/careapp/app/errorsDTC/LampStatus;->status:Z

    return v0
.end method

.method public setColor(Lcom/texa/careapp/app/errorsDTC/LampStatus$LampColor;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/app/errorsDTC/LampStatus;->color:Lcom/texa/careapp/app/errorsDTC/LampStatus$LampColor;

    return-void
.end method

.method public setDataId(Ljava/lang/Long;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/app/errorsDTC/LampStatus;->dataId:Ljava/lang/Long;

    return-void
.end method

.method public setFiltered(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/texa/careapp/app/errorsDTC/LampStatus;->filtered:Z

    return-void
.end method

.method public setHeaderTitle(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/app/errorsDTC/LampStatus;->headerTitle:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/texa/careapp/app/errorsDTC/LampStatus;->status:Z

    return-void
.end method

.method public setTime(Ljava/util/Date;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/app/errorsDTC/LampStatus;->time:Ljava/util/Date;

    return-void
.end method

.method public setVehicleModel(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/app/errorsDTC/LampStatus;->vehicleModel:Lcom/texa/careapp/model/VehicleModel;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LampStatus(dataId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->getDataId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->isStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", filtered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->isFiltered()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vehicleModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->getVehicleModel()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->getColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headerTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->getHeaderTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
