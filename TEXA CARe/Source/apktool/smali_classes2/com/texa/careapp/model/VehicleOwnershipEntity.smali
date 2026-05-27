.class public Lcom/texa/careapp/model/VehicleOwnershipEntity;
.super Ljava/lang/Object;
.source "VehicleOwnershipEntity.java"


# instance fields
.field dongleSerialNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hwid"
    .end annotation
.end field

.field plate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "plate"
    .end annotation
.end field

.field vehicleId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vehicle_id"
    .end annotation
.end field

.field vinCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vin"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleOwnershipEntity;->dongleSerialNumber:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/texa/careapp/model/VehicleOwnershipEntity;->plate:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/texa/careapp/model/VehicleOwnershipEntity;->vinCode:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/texa/careapp/model/VehicleOwnershipEntity;->vehicleId:Ljava/lang/String;

    return-void
.end method
