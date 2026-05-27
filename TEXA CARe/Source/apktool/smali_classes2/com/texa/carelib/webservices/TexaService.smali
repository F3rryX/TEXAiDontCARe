.class public interface abstract Lcom/texa/carelib/webservices/TexaService;
.super Ljava/lang/Object;
.source "TexaService.java"

# interfaces
.implements Lcom/texa/carelib/webservices/ServiceProxy;


# virtual methods
.method public abstract getAccessToken()Lcom/texa/carelib/webservices/AccessToken;
.end method

.method public abstract getCareProxy()Lcom/texa/carelib/care/profile/CareProxy;
.end method

.method public abstract getDTCResolutionProcedure()Lcom/texa/carelib/webservices/ServiceDTCResolutionProcedure;
.end method

.method public abstract getFirmwareDownloadProcedure()Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedure;
.end method

.method public abstract getFirmwareInfoProcedure()Lcom/texa/carelib/webservices/ServiceFirmwareInfo;
.end method

.method public abstract getImpactDetection()Lcom/texa/carelib/webservices/ServiceImpactDetection;
.end method

.method public abstract getServiceDelegate()Lcom/texa/carelib/webservices/TexaServiceDelegate;
.end method

.method public abstract getVehicleConfigurationInfo()Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfo;
.end method

.method public abstract getVehicleConfigurationProcedure()Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;
.end method

.method public abstract getVehicleInfo()Lcom/texa/carelib/webservices/ServiceVehicleInfo;
.end method

.method public abstract setCareProxy(Lcom/texa/carelib/care/profile/CareProxy;)V
.end method

.method public abstract setServiceDelegate(Lcom/texa/carelib/webservices/TexaServiceDelegate;)V
.end method

.method public abstract shutdown()V
.end method
