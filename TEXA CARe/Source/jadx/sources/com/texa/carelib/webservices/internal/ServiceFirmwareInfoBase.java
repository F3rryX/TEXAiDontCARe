package com.texa.carelib.webservices.internal;

import com.texa.carelib.core.ObservableObjectBase;
import com.texa.carelib.core.utils.FirmwareVersion;
import com.texa.carelib.webservices.ServiceFirmwareInfo;
import com.texa.carelib.webservices.ServiceFirmwareInfoStatus;
import java.beans.PropertyChangeEvent;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ServiceFirmwareInfoBase extends ObservableObjectBase implements ServiceFirmwareInfo {
    private FirmwareVersion mMainAppVersion = null;
    private FirmwareVersion mServiceAppVersion = null;
    private ServiceFirmwareInfoStatus mServiceStatus = ServiceFirmwareInfoStatus.Undef;

    @Override // com.texa.carelib.webservices.ServiceFirmwareInfo
    public FirmwareVersion getMainAppVersion() {
        return this.mMainAppVersion;
    }

    protected void setMainAppVersion(FirmwareVersion firmwareVersion) {
        FirmwareVersion firmwareVersion2 = this.mMainAppVersion;
        this.mMainAppVersion = firmwareVersion;
        firePropertyChange(new PropertyChangeEvent(this, ServiceFirmwareInfo.PROPERTY_MAIN_APP_VERSION, firmwareVersion2, this.mMainAppVersion));
    }

    @Override // com.texa.carelib.webservices.ServiceFirmwareInfo
    public ServiceFirmwareInfoStatus getStatus() {
        return this.mServiceStatus;
    }

    protected void setServiceStatus(ServiceFirmwareInfoStatus serviceFirmwareInfoStatus) {
        ServiceFirmwareInfoStatus serviceFirmwareInfoStatus2 = this.mServiceStatus;
        if (serviceFirmwareInfoStatus2 != serviceFirmwareInfoStatus) {
            this.mServiceStatus = serviceFirmwareInfoStatus;
            firePropertyChange(new PropertyChangeEvent(this, ServiceFirmwareInfo.PROPERTY_STATUS, serviceFirmwareInfoStatus2, this.mServiceStatus));
        }
    }

    @Override // com.texa.carelib.webservices.ServiceFirmwareInfo
    public FirmwareVersion getServiceAppVersion() {
        return this.mServiceAppVersion;
    }

    protected void setServiceAppVersion(FirmwareVersion firmwareVersion) {
        FirmwareVersion firmwareVersion2 = this.mServiceAppVersion;
        this.mServiceAppVersion = firmwareVersion;
        firePropertyChange(new PropertyChangeEvent(this, ServiceFirmwareInfo.PROPERTY_SERVICE_APP_VERSION, firmwareVersion2, this.mServiceAppVersion));
    }

    public void clear() {
        setServiceStatus(ServiceFirmwareInfoStatus.Undef);
        setMainAppVersion(null);
        setServiceAppVersion(null);
    }
}
