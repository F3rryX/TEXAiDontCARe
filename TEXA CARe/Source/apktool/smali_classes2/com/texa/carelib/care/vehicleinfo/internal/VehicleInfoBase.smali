.class public abstract Lcom/texa/carelib/care/vehicleinfo/internal/VehicleInfoBase;
.super Lcom/texa/carelib/profile/ProfileSubModule;
.source "VehicleInfoBase.java"

# interfaces
.implements Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;


# instance fields
.field private mVehicleID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/texa/carelib/profile/ProfileSubModule;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/texa/carelib/care/vehicleinfo/internal/VehicleInfoBase;->mVehicleID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getVehicleID()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/texa/carelib/care/vehicleinfo/internal/VehicleInfoBase;->mVehicleID:Ljava/lang/String;

    return-object v0
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 1

    .line 54
    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    .line 56
    sget-object v0, Lcom/texa/carelib/care/vehicleinfo/internal/VehicleInfoBase$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-virtual {p1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicleinfo/internal/VehicleInfoBase;->resetData()V

    :goto_0
    return-void
.end method

.method protected resetData()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/texa/carelib/care/vehicleinfo/internal/VehicleInfoBase;->mVehicleID:Ljava/lang/String;

    return-void
.end method

.method public setVehicleID(Ljava/lang/String;)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/texa/carelib/care/vehicleinfo/internal/VehicleInfoBase;->mVehicleID:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/texa/carelib/care/vehicleinfo/internal/VehicleInfoBase;->mVehicleID:Ljava/lang/String;

    .line 33
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicleinfo/internal/VehicleInfoBase;->mVehicleID:Ljava/lang/String;

    const-string v2, "com.texa.carelib.care.vehicleinfo.VehicleInfo#PROPERTY_VEHICLE_ID"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicleinfo/internal/VehicleInfoBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method
