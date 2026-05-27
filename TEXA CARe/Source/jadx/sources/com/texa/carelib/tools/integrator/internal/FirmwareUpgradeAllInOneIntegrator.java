package com.texa.carelib.tools.integrator.internal;

import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.ObservableObjectBase;
import com.texa.carelib.core.OperationAlreadyRunningException;
import com.texa.carelib.core.utils.FirmwareVersion;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.tools.integrator.events.FirmwareUpgradeCompletedEvent;
import com.texa.carelib.webservices.FirmwareType;
import com.texa.carelib.webservices.ServiceFirmwareDownloadCompletedEvent;
import com.texa.carelib.webservices.ServiceFirmwareInfo;
import com.texa.carelib.webservices.ServiceFirmwareInfoLoadedEvent;
import com.texa.carelib.webservices.TexaService;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes2.dex */
public class FirmwareUpgradeAllInOneIntegrator extends ObservableObjectBase {
    public static final String PROPERTY_STATE = "com.texa.carelib.tools.integrator.internal.FirmwareUpgradeAllInOneIntegrator#PROPERTY_STATE";
    public static final String TAG = "FirmwareUpgradeAllInOneIntegrator";
    private final Accessory mAccessory;
    private final CheckFirmwareUpgradeStatusObserver mCheckFirmwareUpgradeStatusObserver = new CheckFirmwareUpgradeStatusObserver();
    private final Communication mCommunication;
    private final Profile mProfile;
    private FirmwareUpgradeAllInOneIntegratorStatus mState;
    private final TexaService mTexaService;

    public enum FirmwareUpgradeAllInOneIntegratorStatus {
        Undef,
        Checking,
        Downloading,
        Upgrading,
        Terminated
    }

    public FirmwareUpgradeAllInOneIntegrator(Communication communication, Profile profile, Accessory accessory, TexaService texaService) {
        this.mCommunication = communication;
        this.mProfile = profile;
        this.mAccessory = accessory;
        this.mTexaService = texaService;
    }

    public synchronized FirmwareUpgradeAllInOneIntegratorStatus getStatus() {
        return this.mState;
    }

    protected synchronized FirmwareUpgradeAllInOneIntegrator setStatus(FirmwareUpgradeAllInOneIntegratorStatus firmwareUpgradeAllInOneIntegratorStatus) {
        FirmwareUpgradeAllInOneIntegratorStatus firmwareUpgradeAllInOneIntegratorStatus2 = this.mState;
        this.mState = firmwareUpgradeAllInOneIntegratorStatus;
        firePropertyChange(new PropertyChangeEvent(this, PROPERTY_STATE, firmwareUpgradeAllInOneIntegratorStatus2, firmwareUpgradeAllInOneIntegratorStatus));
        return this;
    }

    public void checkDeviceConfigurationStatus(final Callback<ServiceFirmwareInfoLoadedEvent> callback) throws OperationAlreadyRunningException {
        if (this.mCheckFirmwareUpgradeStatusObserver.countObservers() > 0) {
            throw new OperationAlreadyRunningException("Currently waiting info needed to check configuration status.");
        }
        setStatus(FirmwareUpgradeAllInOneIntegratorStatus.Checking);
        this.mAccessory.addPropertyChangeListener(this.mCheckFirmwareUpgradeStatusObserver);
        this.mCheckFirmwareUpgradeStatusObserver.addObserver(new Observer() { // from class: com.texa.carelib.tools.integrator.internal.FirmwareUpgradeAllInOneIntegrator$$ExternalSyntheticLambda2
            @Override // java.util.Observer
            public final void update(Observable observable, Object obj) {
                this.f$0.m770xc533245d(callback, observable, obj);
            }
        });
        this.mCheckFirmwareUpgradeStatusObserver.evaluate(this.mAccessory.getSerialNumber(), this.mAccessory.getMainAPPVersion(), this.mAccessory.getServiceAPPVersion());
    }

    /* JADX INFO: renamed from: lambda$checkDeviceConfigurationStatus$0$com-texa-carelib-tools-integrator-internal-FirmwareUpgradeAllInOneIntegrator, reason: not valid java name */
    public /* synthetic */ void m770xc533245d(final Callback callback, Observable observable, Object obj) {
        CheckFirmwareUpgradeStatusObserver checkFirmwareUpgradeStatusObserver = (CheckFirmwareUpgradeStatusObserver) observable;
        this.mAccessory.removePropertyChangeListener(this.mCheckFirmwareUpgradeStatusObserver);
        this.mCheckFirmwareUpgradeStatusObserver.deleteObservers();
        if (checkFirmwareUpgradeStatusObserver.getSerialNumber() == null || checkFirmwareUpgradeStatusObserver.getMainAppVersion() == null || checkFirmwareUpgradeStatusObserver.getServiceAppVersion() == null) {
            return;
        }
        try {
            ServiceFirmwareInfo firmwareInfoProcedure = this.mTexaService.getFirmwareInfoProcedure();
            String serialNumber = checkFirmwareUpgradeStatusObserver.getSerialNumber();
            FirmwareVersion mainAppVersion = checkFirmwareUpgradeStatusObserver.getMainAppVersion();
            FirmwareVersion serviceAppVersion = checkFirmwareUpgradeStatusObserver.getServiceAppVersion();
            callback.getClass();
            firmwareInfoProcedure.loadFirmwareInfo(serialNumber, mainAppVersion, serviceAppVersion, new Callback() { // from class: com.texa.carelib.tools.integrator.internal.FirmwareUpgradeAllInOneIntegrator$$ExternalSyntheticLambda0
                @Override // com.texa.carelib.core.Callback
                public final void onCompleted(Object obj2) {
                    callback.onCompleted((ServiceFirmwareInfoLoadedEvent) obj2);
                }
            });
        } catch (CareLibException unused) {
        }
    }

    public void upgradeFirmware(String str, FirmwareType firmwareType, FirmwareVersion firmwareVersion, final Callback<FirmwareUpgradeCompletedEvent> callback) {
        try {
            this.mTexaService.getFirmwareDownloadProcedure().downloadFirmware(firmwareType, firmwareVersion, str, new Callback() { // from class: com.texa.carelib.tools.integrator.internal.FirmwareUpgradeAllInOneIntegrator$$ExternalSyntheticLambda1
                @Override // com.texa.carelib.core.Callback
                public final void onCompleted(Object obj) {
                    this.f$0.m771x51be329(callback, (ServiceFirmwareDownloadCompletedEvent) obj);
                }
            });
        } catch (CareLibException unused) {
        }
    }

    /* JADX INFO: renamed from: lambda$upgradeFirmware$1$com-texa-carelib-tools-integrator-internal-FirmwareUpgradeAllInOneIntegrator, reason: not valid java name */
    public /* synthetic */ void m771x51be329(Callback callback, ServiceFirmwareDownloadCompletedEvent serviceFirmwareDownloadCompletedEvent) {
        if (serviceFirmwareDownloadCompletedEvent.getError() == null) {
            setStatus(FirmwareUpgradeAllInOneIntegratorStatus.Upgrading);
        } else {
            setStatus(FirmwareUpgradeAllInOneIntegratorStatus.Terminated);
            callback.onCompleted(new FirmwareUpgradeCompletedEvent(this, serviceFirmwareDownloadCompletedEvent.getError()));
        }
    }

    private class UpgradeFirmwareStatusObserver extends Observable implements PropertyChangeListener {
        private String mSerialNumber;

        private UpgradeFirmwareStatusObserver() {
        }

        public String getSerialNumber() {
            return this.mSerialNumber;
        }

        public UpgradeFirmwareStatusObserver setSerialNumber(String str) {
            this.mSerialNumber = str;
            evaluate(str);
            return this;
        }

        public boolean evaluate(String str) {
            if (StringUtils.isNullOrEmpty(str)) {
                return false;
            }
            notifyObservers();
            return true;
        }

        @Override // java.beans.PropertyChangeListener
        public void propertyChange(PropertyChangeEvent propertyChangeEvent) {
            if (Accessory.PROPERTY_SERIAL_NUMBER.equals(propertyChangeEvent.getPropertyName())) {
                setSerialNumber(propertyChangeEvent.getNewValue().toString());
            }
        }
    }

    private class CheckFirmwareUpgradeStatusObserver extends Observable implements PropertyChangeListener {
        private FirmwareVersion mMainAppVersion;
        private String mSerialNumber;
        private FirmwareVersion mServiceAppVersion;

        private CheckFirmwareUpgradeStatusObserver() {
        }

        public String getSerialNumber() {
            return this.mSerialNumber;
        }

        public CheckFirmwareUpgradeStatusObserver setSerialNumber(String str) {
            this.mSerialNumber = str;
            evaluate(str, this.mMainAppVersion, this.mServiceAppVersion);
            return this;
        }

        public FirmwareVersion getMainAppVersion() {
            return this.mMainAppVersion;
        }

        public CheckFirmwareUpgradeStatusObserver setMainAppVersion(FirmwareVersion firmwareVersion) {
            this.mMainAppVersion = firmwareVersion;
            evaluate(this.mSerialNumber, firmwareVersion, this.mServiceAppVersion);
            return this;
        }

        public FirmwareVersion getServiceAppVersion() {
            return this.mServiceAppVersion;
        }

        public CheckFirmwareUpgradeStatusObserver setServiceAppVersion(FirmwareVersion firmwareVersion) {
            this.mServiceAppVersion = firmwareVersion;
            evaluate(this.mSerialNumber, this.mMainAppVersion, firmwareVersion);
            return this;
        }

        public boolean evaluate(String str, FirmwareVersion firmwareVersion, FirmwareVersion firmwareVersion2) {
            if (StringUtils.isNullOrEmpty(str) || firmwareVersion == null || firmwareVersion2 == null) {
                return false;
            }
            notifyObservers();
            return true;
        }

        @Override // java.beans.PropertyChangeListener
        public void propertyChange(PropertyChangeEvent propertyChangeEvent) {
            if (Accessory.PROPERTY_SERIAL_NUMBER.equals(propertyChangeEvent.getPropertyName())) {
                setSerialNumber(propertyChangeEvent.getNewValue().toString());
            } else if (Accessory.PROPERTY_MAIN_APP_VERSION.equals(propertyChangeEvent.getPropertyName())) {
                setMainAppVersion((FirmwareVersion) propertyChangeEvent.getNewValue());
            } else if (Accessory.PROPERTY_SERVICE_APP_VERSION.equals(propertyChangeEvent.getPropertyName())) {
                setServiceAppVersion((FirmwareVersion) propertyChangeEvent.getNewValue());
            }
        }
    }
}
