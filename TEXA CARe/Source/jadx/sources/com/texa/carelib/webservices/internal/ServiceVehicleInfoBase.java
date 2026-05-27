package com.texa.carelib.webservices.internal;

import com.texa.carelib.core.ObservableObjectBase;
import com.texa.carelib.webservices.ServiceVehicleInfo;
import com.texa.carelib.webservices.ServiceVehicleInfoStatus;
import com.texa.carelib.webservices.VehicleInfo;
import java.beans.PropertyChangeEvent;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ServiceVehicleInfoBase extends ObservableObjectBase implements ServiceVehicleInfo {
    private ServiceVehicleInfoStatus mStatus = ServiceVehicleInfoStatus.Undefined;
    private Map<String, VehicleInfo> mVehicles = new HashMap();

    @Override // com.texa.carelib.webservices.ServiceVehicleInfo
    public ServiceVehicleInfoStatus getStatus() {
        return this.mStatus;
    }

    public void setStatus(ServiceVehicleInfoStatus serviceVehicleInfoStatus) {
        ServiceVehicleInfoStatus serviceVehicleInfoStatus2 = this.mStatus;
        if (serviceVehicleInfoStatus2 != serviceVehicleInfoStatus) {
            this.mStatus = serviceVehicleInfoStatus;
            firePropertyChange(new PropertyChangeEvent(this, ServiceVehicleInfo.PROPERTY_STATUS, serviceVehicleInfoStatus2, this.mStatus));
        }
    }

    @Override // com.texa.carelib.webservices.ServiceVehicleInfo
    public Map<String, VehicleInfo> getVehicles() {
        return this.mVehicles;
    }

    protected void setVehicles(Map<String, VehicleInfo> map) {
        if (map == null) {
            map = Collections.emptyMap();
        }
        Map<String, VehicleInfo> map2 = this.mVehicles;
        if (map2 != map) {
            this.mVehicles = map;
            firePropertyChange(new PropertyChangeEvent(this, ServiceVehicleInfo.PROPERTY_VEHICLES, map2, this.mVehicles));
        }
    }

    protected void clear() {
        setVehicles(new HashMap());
    }
}
