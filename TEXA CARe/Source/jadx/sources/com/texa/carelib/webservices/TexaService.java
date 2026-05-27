package com.texa.carelib.webservices;

import com.texa.carelib.care.profile.CareProxy;

/* JADX INFO: loaded from: classes2.dex */
public interface TexaService extends ServiceProxy {
    AccessToken getAccessToken();

    CareProxy getCareProxy();

    ServiceDTCResolutionProcedure getDTCResolutionProcedure();

    ServiceFirmwareDownloadProcedure getFirmwareDownloadProcedure();

    ServiceFirmwareInfo getFirmwareInfoProcedure();

    ServiceImpactDetection getImpactDetection();

    TexaServiceDelegate getServiceDelegate();

    ServiceVehicleConfigurationInfo getVehicleConfigurationInfo();

    ServiceVehicleConfigurationProcedure getVehicleConfigurationProcedure();

    ServiceVehicleInfo getVehicleInfo();

    void setCareProxy(CareProxy careProxy);

    void setServiceDelegate(TexaServiceDelegate texaServiceDelegate);

    void shutdown();
}
