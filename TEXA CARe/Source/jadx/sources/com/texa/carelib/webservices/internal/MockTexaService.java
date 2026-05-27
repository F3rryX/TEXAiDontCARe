package com.texa.carelib.webservices.internal;

import com.texa.carelib.core.Callback;
import com.texa.carelib.webservices.ServiceDTCResolutionProcedure;
import com.texa.carelib.webservices.ServiceFirmwareDownloadProcedure;
import com.texa.carelib.webservices.ServiceFirmwareInfo;
import com.texa.carelib.webservices.ServiceImpactDetection;
import com.texa.carelib.webservices.ServiceVehicleConfigurationProcedure;
import com.texa.carelib.webservices.events.BeginProtectionSessionCompletedEvent;

/* JADX INFO: loaded from: classes2.dex */
public class MockTexaService extends TexaServiceBase {
    private MockServiceDTCResolutionProcedure mDTCResolutionProcedure;
    private ServiceImpactDetection mHttpServiceImpactDetection;
    private MockServiceFirmwareDownloadProcedure mServiceFirmwareDownloadProcedure;
    private MockServiceFirmwareInfo mServiceFirmwareInfoProcedure;
    private MockServiceVehicleConfigurationInfo mServiceVehicleConfigurationInfo;
    private MockServiceVehicleInfo mServiceVehicleInfo;
    private MockServiceVehicleConfigurationProcedure mVehicleIdentificationProcedure;

    @Override // com.texa.carelib.webservices.ServiceProxy
    public void clear() {
    }

    @Override // com.texa.carelib.webservices.TexaService
    public void shutdown() {
    }

    @Override // com.texa.carelib.webservices.TexaService
    public MockServiceVehicleInfo getVehicleInfo() {
        if (this.mServiceVehicleInfo == null) {
            this.mServiceVehicleInfo = new MockServiceVehicleInfo();
        }
        return this.mServiceVehicleInfo;
    }

    @Override // com.texa.carelib.webservices.TexaService
    public MockServiceVehicleConfigurationInfo getVehicleConfigurationInfo() {
        if (this.mServiceVehicleConfigurationInfo == null) {
            this.mServiceVehicleConfigurationInfo = new MockServiceVehicleConfigurationInfo();
        }
        return this.mServiceVehicleConfigurationInfo;
    }

    @Override // com.texa.carelib.webservices.TexaService
    public ServiceFirmwareInfo getFirmwareInfoProcedure() {
        if (this.mServiceFirmwareInfoProcedure == null) {
            this.mServiceFirmwareInfoProcedure = new MockServiceFirmwareInfo();
        }
        return this.mServiceFirmwareInfoProcedure;
    }

    @Override // com.texa.carelib.webservices.TexaService
    public ServiceDTCResolutionProcedure getDTCResolutionProcedure() {
        if (this.mDTCResolutionProcedure == null) {
            this.mDTCResolutionProcedure = new MockServiceDTCResolutionProcedure(getContext());
        }
        return this.mDTCResolutionProcedure;
    }

    @Override // com.texa.carelib.webservices.TexaService
    public ServiceImpactDetection getImpactDetection() {
        if (this.mHttpServiceImpactDetection == null) {
            this.mHttpServiceImpactDetection = new MockServiceImpactDetection();
        }
        return this.mHttpServiceImpactDetection;
    }

    @Override // com.texa.carelib.webservices.TexaService
    public ServiceFirmwareDownloadProcedure getFirmwareDownloadProcedure() {
        if (this.mServiceFirmwareDownloadProcedure == null) {
            this.mServiceFirmwareDownloadProcedure = new MockServiceFirmwareDownloadProcedure(getContext());
        }
        return this.mServiceFirmwareDownloadProcedure;
    }

    @Override // com.texa.carelib.webservices.TexaService
    public ServiceVehicleConfigurationProcedure getVehicleConfigurationProcedure() {
        if (this.mVehicleIdentificationProcedure == null) {
            this.mVehicleIdentificationProcedure = new MockServiceVehicleConfigurationProcedure(getContext());
        }
        return this.mVehicleIdentificationProcedure;
    }

    @Override // com.texa.carelib.webservices.ServiceProxy
    public boolean beginProtectionSessionWithHWToken(byte[] bArr, String str, Callback<BeginProtectionSessionCompletedEvent> callback) {
        if (callback == null) {
            return true;
        }
        callback.onCompleted(new BeginProtectionSessionCompletedEvent(this, "", "", null));
        return true;
    }
}
