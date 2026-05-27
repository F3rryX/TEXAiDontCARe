package com.texa.carelib.webservices.internal;

import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.ObservableObjectBase;
import com.texa.carelib.core.OperationAlreadyRunningException;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.webservices.ServiceVehicleConfigurationInfo;
import com.texa.carelib.webservices.ServiceVehicleConfigurationInfoStatus;
import com.texa.carelib.webservices.VehicleConfigurationStatus;
import java.beans.PropertyChangeEvent;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ServiceVehicleConfigurationInfoBase extends ObservableObjectBase implements ServiceVehicleConfigurationInfo {
    public static final String TAG = "ServiceVehicleConfigurationInfoBase";
    private VehicleConfigurationStatus mVehicleConfigurationStatus = VehicleConfigurationStatus.Undefined;
    private ServiceVehicleConfigurationInfoStatus mStatus = ServiceVehicleConfigurationInfoStatus.Undefined;

    @Override // com.texa.carelib.webservices.ServiceVehicleConfigurationInfo
    public ServiceVehicleConfigurationInfoStatus getStatus() {
        return this.mStatus;
    }

    protected void setStatus(ServiceVehicleConfigurationInfoStatus serviceVehicleConfigurationInfoStatus) {
        ServiceVehicleConfigurationInfoStatus serviceVehicleConfigurationInfoStatus2 = this.mStatus;
        if (serviceVehicleConfigurationInfoStatus2 != serviceVehicleConfigurationInfoStatus) {
            this.mStatus = serviceVehicleConfigurationInfoStatus;
            firePropertyChange(new PropertyChangeEvent(this, ServiceVehicleConfigurationInfo.PROPERTY_STATUS, serviceVehicleConfigurationInfoStatus2, this.mStatus));
        }
    }

    @Override // com.texa.carelib.webservices.ServiceVehicleConfigurationInfo
    public VehicleConfigurationStatus getVehicleConfigurationStatus() {
        return this.mVehicleConfigurationStatus;
    }

    protected void setVehicleConfigurationStatus(VehicleConfigurationStatus vehicleConfigurationStatus) {
        VehicleConfigurationStatus vehicleConfigurationStatus2 = this.mVehicleConfigurationStatus;
        if (vehicleConfigurationStatus2 != vehicleConfigurationStatus) {
            this.mVehicleConfigurationStatus = vehicleConfigurationStatus;
            firePropertyChange(new PropertyChangeEvent(this, ServiceVehicleConfigurationInfo.PROPERTY_VEHICLE_CONFIGURATION_STATUS, vehicleConfigurationStatus2, this.mVehicleConfigurationStatus));
        }
    }

    public void clear() {
        setVehicleConfigurationStatus(VehicleConfigurationStatus.Undefined);
    }

    protected void ensureCanLoadVehicleConfigurationInfo(String str, BigInteger bigInteger) throws CareLibException {
        if (getStatus() == ServiceVehicleConfigurationInfoStatus.Pending) {
            throw new OperationAlreadyRunningException("Load vehicle configuration info is already running.");
        }
        if (StringUtils.isNullOrEmpty(str)) {
            throw new CareLibException("Could not getItems configuration info. HWID cannot be null or empty.");
        }
        if (bigInteger == null) {
            throw new CareLibException("Could not getItems configuration info. Diagnostic interpreter version cannot be null.");
        }
    }
}
