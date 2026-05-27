.class public Lcom/texa/carelib/webservices/internal/MockTexaService;
.super Lcom/texa/carelib/webservices/internal/TexaServiceBase;
.source "MockTexaService.java"


# instance fields
.field private mDTCResolutionProcedure:Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;

.field private mHttpServiceImpactDetection:Lcom/texa/carelib/webservices/ServiceImpactDetection;

.field private mServiceFirmwareDownloadProcedure:Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure;

.field private mServiceFirmwareInfoProcedure:Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo;

.field private mServiceVehicleConfigurationInfo:Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationInfo;

.field private mServiceVehicleInfo:Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo;

.field private mVehicleIdentificationProcedure:Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationProcedure;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/texa/carelib/webservices/internal/TexaServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method public beginProtectionSessionWithHWToken([BLjava/lang/String;Lcom/texa/carelib/core/Callback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;",
            ">;)Z"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 121
    new-instance p1, Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;

    const/4 p2, 0x0

    const-string v0, ""

    invoke-direct {p1, p0, v0, v0, p2}, Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p3, p1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public getDTCResolutionProcedure()Lcom/texa/carelib/webservices/ServiceDTCResolutionProcedure;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/MockTexaService;->mDTCResolutionProcedure:Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;

    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/MockTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/MockTexaService;->mDTCResolutionProcedure:Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/MockTexaService;->mDTCResolutionProcedure:Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;

    return-object v0
.end method

.method public getFirmwareDownloadProcedure()Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedure;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/MockTexaService;->mServiceFirmwareDownloadProcedure:Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure;

    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/MockTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/MockTexaService;->mServiceFirmwareDownloadProcedure:Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/MockTexaService;->mServiceFirmwareDownloadProcedure:Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure;

    return-object v0
.end method

.method public getFirmwareInfoProcedure()Lcom/texa/carelib/webservices/ServiceFirmwareInfo;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/MockTexaService;->mServiceFirmwareInfoProcedure:Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo;

    invoke-direct {v0}, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/MockTexaService;->mServiceFirmwareInfoProcedure:Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/MockTexaService;->mServiceFirmwareInfoProcedure:Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo;

    return-object v0
.end method

.method public getImpactDetection()Lcom/texa/carelib/webservices/ServiceImpactDetection;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/MockTexaService;->mHttpServiceImpactDetection:Lcom/texa/carelib/webservices/ServiceImpactDetection;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/texa/carelib/webservices/internal/MockServiceImpactDetection;

    invoke-direct {v0}, Lcom/texa/carelib/webservices/internal/MockServiceImpactDetection;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/MockTexaService;->mHttpServiceImpactDetection:Lcom/texa/carelib/webservices/ServiceImpactDetection;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/MockTexaService;->mHttpServiceImpactDetection:Lcom/texa/carelib/webservices/ServiceImpactDetection;

    return-object v0
.end method

.method public bridge synthetic getVehicleConfigurationInfo()Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfo;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/MockTexaService;->getVehicleConfigurationInfo()Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVehicleConfigurationInfo()Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationInfo;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/MockTexaService;->mServiceVehicleConfigurationInfo:Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationInfo;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationInfo;

    invoke-direct {v0}, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationInfo;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/MockTexaService;->mServiceVehicleConfigurationInfo:Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationInfo;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/MockTexaService;->mServiceVehicleConfigurationInfo:Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationInfo;

    return-object v0
.end method

.method public getVehicleConfigurationProcedure()Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/MockTexaService;->mVehicleIdentificationProcedure:Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationProcedure;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationProcedure;

    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/MockTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationProcedure;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/MockTexaService;->mVehicleIdentificationProcedure:Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationProcedure;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/MockTexaService;->mVehicleIdentificationProcedure:Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationProcedure;

    return-object v0
.end method

.method public bridge synthetic getVehicleInfo()Lcom/texa/carelib/webservices/ServiceVehicleInfo;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/MockTexaService;->getVehicleInfo()Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVehicleInfo()Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/MockTexaService;->mServiceVehicleInfo:Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo;

    invoke-direct {v0}, Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/MockTexaService;->mServiceVehicleInfo:Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/MockTexaService;->mServiceVehicleInfo:Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo;

    return-object v0
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method
