.class public Lcom/texa/careapp/model/VehicleAlarm$AlarmData;
.super Ljava/lang/Object;
.source "VehicleAlarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/model/VehicleAlarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlarmData"
.end annotation


# instance fields
.field private timestamp:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field private value:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;->timestamp:Ljava/util/Date;

    .line 92
    iput p1, p0, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;->value:F

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 76
    instance-of p1, p1, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 76
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;->getValue()F

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;->getValue()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;->getTimestamp()Ljava/util/Date;

    move-result-object p1

    if-nez v1, :cond_4

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    return v2

    :cond_5
    return v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getValue()F
    .locals 1

    .line 81
    iget v0, p0, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;->value:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 76
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_0

    const/16 v1, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;->timestamp:Ljava/util/Date;

    return-void
.end method

.method public setValue(F)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;->value:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VehicleAlarm.AlarmData(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
