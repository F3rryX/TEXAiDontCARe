package com.texa.carelib.tools.integrator;

import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfiguration;
import com.texa.carelib.care.vehicleinfo.VehicleInfo;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.OperationAlreadyRunningException;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternal;
import com.texa.carelib.webservices.ServiceVehicleConfigurationInfo;
import com.texa.carelib.webservices.ServiceVehicleConfigurationProcedure;

/* JADX INFO: loaded from: classes2.dex */
public class ConfigurationAllInOneIntegrator {
    private final ConfigurationAllInOneIntegratorInternal mConfigurationAllInOneIntegratorInternal;

    public ConfigurationAllInOneIntegrator(Communication communication, Profile profile, Accessory accessory, VehicleInfo vehicleInfo, DiagnosticConfiguration diagnosticConfiguration, ServiceVehicleConfigurationInfo serviceVehicleConfigurationInfo, ServiceVehicleConfigurationProcedure serviceVehicleConfigurationProcedure) {
        this.mConfigurationAllInOneIntegratorInternal = new ConfigurationAllInOneIntegratorInternal(communication, profile, accessory, vehicleInfo, diagnosticConfiguration, serviceVehicleConfigurationInfo, serviceVehicleConfigurationProcedure);
    }

    public void setConfigurationAllInOneIntegratorListener(ConfigurationAllInOneIntegratorListener configurationAllInOneIntegratorListener) {
        this.mConfigurationAllInOneIntegratorInternal.setConfigurationAllInOneIntegratorListener(configurationAllInOneIntegratorListener);
    }

    public synchronized ConfigurationAllInOneIntegratorStatus getStatus() {
        return this.mConfigurationAllInOneIntegratorInternal.getStatusInternal();
    }

    public CareError getLastError() {
        return this.mConfigurationAllInOneIntegratorInternal.getLastErrorInternal();
    }

    public void setForcedVehicleID(String str) {
        this.mConfigurationAllInOneIntegratorInternal.setForcedVehicleIDInternal(str);
    }

    public void checkDeviceConfigurationStatus() throws OperationAlreadyRunningException {
        this.mConfigurationAllInOneIntegratorInternal.setSkipConfirmation(false);
        this.mConfigurationAllInOneIntegratorInternal.checkDeviceConfigurationStatusInternal();
    }

    public void beginDeviceProgramming(boolean z) throws IllegalStateException {
        if (z) {
            this.mConfigurationAllInOneIntegratorInternal.beginDeviceProgrammingInternal();
        } else {
            this.mConfigurationAllInOneIntegratorInternal.terminate(false, null);
        }
    }

    public void upgradeIfNeeded() throws OperationAlreadyRunningException {
        if (ConfigurationAllInOneIntegratorStatus.AskConfirmation == getStatus()) {
            beginDeviceProgramming(true);
        } else {
            this.mConfigurationAllInOneIntegratorInternal.setSkipConfirmation(true);
            this.mConfigurationAllInOneIntegratorInternal.checkDeviceConfigurationStatusInternal();
        }
    }

    public float getProgress() {
        return this.mConfigurationAllInOneIntegratorInternal.getProgress();
    }
}
