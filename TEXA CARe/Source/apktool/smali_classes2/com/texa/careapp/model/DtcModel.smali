.class public Lcom/texa/careapp/model/DtcModel;
.super Lcom/activeandroid/Model;
.source "DtcModel.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "Dtc"
.end annotation


# static fields
.field public static final COLUMN_VEHICLE:Ljava/lang/String; = "Vehicle"

.field public static final TABLE_DTC:Ljava/lang/String; = "Dtc"


# instance fields
.field private acquisitionDate:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field private dctStatus:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private dtcCode:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private dtcECU:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ecu"
    .end annotation
.end field

.field private dtcId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dtc_id"
    .end annotation
.end field

.field private dtcStatusCode:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private localizedDescription:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private vehicle:Lcom/texa/careapp/model/VehicleModel;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Vehicle"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public static from(Lcom/texa/carelib/care/vehicletroubles/DTC;)Lcom/texa/careapp/model/DtcModel;
    .locals 4

    .line 81
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->getAcceptedLocales()[Ljava/util/Locale;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/texa/careapp/model/DtcModel;

    invoke-direct {v1}, Lcom/texa/careapp/model/DtcModel;-><init>()V

    .line 84
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/DtcModel;->setDtcCode(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getECU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/DtcModel;->setDtcECU(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/DtcModel;->setDtcId(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getAcquisitionDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/DtcModel;->setAcquisitionDate(Ljava/util/Date;)V

    const/4 v2, 0x0

    .line 88
    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {p0, v2, v0}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getDetail(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/texa/careapp/model/DtcModel;->setLocalizedDescription(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/texa/careapp/model/DtcModel;->setUid(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getStatus()Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/texa/careapp/model/DtcModel;->setDtcStatusCode(Lcom/texa/carelib/care/vehicletroubles/DTCStatus;)V

    .line 92
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getStatus()Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    return-object v1
.end method


# virtual methods
.method public getAcquisitionDate()Ljava/util/Date;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/texa/careapp/model/DtcModel;->acquisitionDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDctStatus()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 31
    iget v0, p0, Lcom/texa/careapp/model/DtcModel;->dctStatus:I

    return v0
.end method

.method public getDtcCode()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/texa/careapp/model/DtcModel;->dtcCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDtcECU()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/texa/careapp/model/DtcModel;->dtcECU:Ljava/lang/String;

    return-object v0
.end method

.method public getDtcId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/texa/careapp/model/DtcModel;->dtcId:Ljava/lang/String;

    return-object v0
.end method

.method public getDtcStatusCode()Lcom/texa/carelib/care/vehicletroubles/DTCStatus;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/texa/careapp/model/DtcModel;->dtcStatusCode:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    return-object v0
.end method

.method public getLocalizedDescription()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/texa/careapp/model/DtcModel;->localizedDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/texa/careapp/model/DtcModel;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicle()Lcom/texa/careapp/model/VehicleModel;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/texa/careapp/model/DtcModel;->vehicle:Lcom/texa/careapp/model/VehicleModel;

    return-object v0
.end method

.method public setAcquisitionDate(Ljava/util/Date;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/texa/careapp/model/DtcModel;->acquisitionDate:Ljava/util/Date;

    return-void
.end method

.method public setDctStatus(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32
    iput p1, p0, Lcom/texa/careapp/model/DtcModel;->dctStatus:I

    return-void
.end method

.method public setDtcCode(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/texa/careapp/model/DtcModel;->dtcCode:Ljava/lang/String;

    return-void
.end method

.method public setDtcECU(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/texa/careapp/model/DtcModel;->dtcECU:Ljava/lang/String;

    return-void
.end method

.method public setDtcId(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/texa/careapp/model/DtcModel;->dtcId:Ljava/lang/String;

    return-void
.end method

.method public setDtcStatusCode(Lcom/texa/carelib/care/vehicletroubles/DTCStatus;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/texa/careapp/model/DtcModel;->dtcStatusCode:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    return-void
.end method

.method public setLocalizedDescription(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/texa/careapp/model/DtcModel;->localizedDescription:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/texa/careapp/model/DtcModel;->uid:Ljava/lang/String;

    return-void
.end method

.method public setVehicle(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/texa/careapp/model/DtcModel;->vehicle:Lcom/texa/careapp/model/VehicleModel;

    return-void
.end method
