.class public Lcom/texa/careapp/app/onboarding/DeviceInfoExt;
.super Ljava/lang/Object;
.source "DeviceInfoExt.java"


# instance fields
.field private deviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

.field private plate:Ljava/lang/String;

.field private selectable:Z

.field private vehicleModelFormatted:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 30
    instance-of v0, p1, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 33
    :cond_0
    check-cast p1, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;

    if-eq p1, p0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->deviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    iget-object p1, p1, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->deviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/communication/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getDeviceInfo()Lcom/texa/carelib/communication/DeviceInfo;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->deviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    return-object v0
.end method

.method public getPlate()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->plate:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleModelFormatted()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->vehicleModelFormatted:Ljava/lang/String;

    return-object v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->selectable:Z

    return v0
.end method

.method public setDeviceInfo(Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->deviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    return-void
.end method

.method public setPlate(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->plate:Ljava/lang/String;

    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->selectable:Z

    return-void
.end method

.method public setVehicleModelFormatted(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->vehicleModelFormatted:Ljava/lang/String;

    return-void
.end method
