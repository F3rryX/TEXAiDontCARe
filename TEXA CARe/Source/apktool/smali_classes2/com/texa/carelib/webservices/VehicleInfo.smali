.class public Lcom/texa/carelib/webservices/VehicleInfo;
.super Ljava/lang/Object;
.source "VehicleInfo.java"


# instance fields
.field private mHardwareID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hwid"
    .end annotation
.end field

.field private mPlate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "plate"
    .end annotation
.end field

.field private mVehicleID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vehicle_id"
    .end annotation
.end field

.field private mVehicleSelection:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "selection_data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/webservices/SelectionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHardwareID()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/texa/carelib/webservices/VehicleInfo;->mHardwareID:Ljava/lang/String;

    return-object v0
.end method

.method public getPlate()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/texa/carelib/webservices/VehicleInfo;->mPlate:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleID()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/texa/carelib/webservices/VehicleInfo;->mVehicleID:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleSelection()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/webservices/SelectionItem;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/texa/carelib/webservices/VehicleInfo;->mVehicleSelection:Ljava/util/Map;

    return-object v0
.end method

.method public setHardwareID(Ljava/lang/String;)Lcom/texa/carelib/webservices/VehicleInfo;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/texa/carelib/webservices/VehicleInfo;->mHardwareID:Ljava/lang/String;

    return-object p0
.end method

.method public setPlate(Ljava/lang/String;)Lcom/texa/carelib/webservices/VehicleInfo;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/texa/carelib/webservices/VehicleInfo;->mPlate:Ljava/lang/String;

    return-object p0
.end method

.method public setVehicleID(Ljava/lang/String;)Lcom/texa/carelib/webservices/VehicleInfo;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/texa/carelib/webservices/VehicleInfo;->mVehicleID:Ljava/lang/String;

    return-object p0
.end method

.method public setVehicleSelection(Ljava/util/Map;)Lcom/texa/carelib/webservices/VehicleInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/webservices/SelectionItem;",
            ">;)",
            "Lcom/texa/carelib/webservices/VehicleInfo;"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/texa/carelib/webservices/VehicleInfo;->mVehicleSelection:Ljava/util/Map;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VehicleInfo{mHardwareID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/webservices/VehicleInfo;->mHardwareID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mVehicleID=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/carelib/webservices/VehicleInfo;->mVehicleID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPlate=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/carelib/webservices/VehicleInfo;->mPlate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mVehicleSelection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/webservices/VehicleInfo;->mVehicleSelection:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
