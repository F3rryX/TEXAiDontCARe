package com.texa.carelib.tools.integrator;

import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.accessory.FactoryResetFlag;
import com.texa.carelib.care.accessory.events.FactoryResetCompletedEvent;
import com.texa.carelib.care.vehicleinfo.VehicleInfo;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.OperationAlreadyRunningException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.tools.R;
import com.texa.carelib.webservices.ServiceVehicleConfigurationProcedure;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes2.dex */
public class FactoryResetIntegrator {
    private static final int RESET_REMOTE_CONFIGURATION_TIMEOUT = 60000;
    private static final String TAG = "FactoryResetIntegrator";
    private Accessory mAccessory;
    private Communication mCommunication;
    private EnumSet<FactoryResetFlag> mFactoryResetFlags = EnumSet.noneOf(FactoryResetFlag.class);
    private FactoryResetIntegratorListener mFactoryResetIntegratorListener;
    private boolean mIsInProgress;
    private ServiceVehicleConfigurationProcedure mServiceVehicleConfigurationProcedure;
    private VehicleInfo mVehicleInfo;

    public void setAccessory(Accessory accessory) {
        this.mAccessory = accessory;
    }

    public void setCommunication(Communication communication) {
        this.mCommunication = communication;
    }

    public void setVehicleInfo(VehicleInfo vehicleInfo) {
        this.mVehicleInfo = vehicleInfo;
    }

    public void setServiceVehicleConfigurationProcedure(ServiceVehicleConfigurationProcedure serviceVehicleConfigurationProcedure) {
        this.mServiceVehicleConfigurationProcedure = serviceVehicleConfigurationProcedure;
    }

    public FactoryResetIntegrator setFactoryResetIntegratorListener(FactoryResetIntegratorListener factoryResetIntegratorListener) {
        this.mFactoryResetIntegratorListener = factoryResetIntegratorListener;
        return this;
    }

    private void fireFactoryResetError(CareError careError) {
        FactoryResetIntegratorListener factoryResetIntegratorListener = this.mFactoryResetIntegratorListener;
        if (factoryResetIntegratorListener != null) {
            factoryResetIntegratorListener.onFactoryResetError(this, careError);
        }
    }

    private void fireFactoryResetCompleted() {
        FactoryResetIntegratorListener factoryResetIntegratorListener = this.mFactoryResetIntegratorListener;
        if (factoryResetIntegratorListener != null) {
            factoryResetIntegratorListener.onFactoryResetCompleted(this);
        }
    }

    private void terminate(CareError careError) {
        this.mIsInProgress = false;
        this.mFactoryResetFlags = EnumSet.noneOf(FactoryResetFlag.class);
        if (careError != null) {
            fireFactoryResetError(careError);
        } else {
            fireFactoryResetCompleted();
        }
    }

    public void resetToFactory(EnumSet<FactoryResetFlag> enumSet) throws CareLibException {
        Accessory accessory = this.mAccessory;
        if (accessory == null) {
            throw new IllegalStateException("accessory is not yet set.");
        }
        if (this.mCommunication == null) {
            throw new IllegalStateException("communication engine is not yet set.");
        }
        if (this.mServiceVehicleConfigurationProcedure == null) {
            throw new IllegalStateException("service vehicle configuration procedure is not yet set.");
        }
        if (this.mVehicleInfo == null) {
            throw new IllegalStateException("vehicle info is not yet set.");
        }
        if (this.mIsInProgress) {
            throw new OperationAlreadyRunningException();
        }
        this.mFactoryResetFlags = enumSet;
        accessory.resetToFactory(enumSet, new Callback() { // from class: com.texa.carelib.tools.integrator.FactoryResetIntegrator$$ExternalSyntheticLambda0
            @Override // com.texa.carelib.core.Callback
            public final void onCompleted(Object obj) {
                this.f$0.onFactoryResetCompleted((FactoryResetCompletedEvent) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFactoryResetCompleted(FactoryResetCompletedEvent factoryResetCompletedEvent) {
        if (factoryResetCompletedEvent != null && factoryResetCompletedEvent.getError() != null) {
            terminate(factoryResetCompletedEvent.getError());
            return;
        }
        if (this.mFactoryResetFlags.contains(FactoryResetFlag.PairingTable)) {
            DeviceInfo currentDevice = this.mCommunication.getCurrentDevice();
            if (currentDevice != null) {
                if (!StringUtils.isNullOrEmpty(currentDevice.getAddress())) {
                    try {
                        this.mCommunication.removeBond(currentDevice.getAddress());
                    } catch (CareLibException unused) {
                        CareLog.e(TAG, "Remove bond command has failed.", new Object[0]);
                        terminate(new CareError.Builder(1, 15).setMessage(factoryResetCompletedEvent.getApplicationContext().getResources().getString(R.string.error_factory_reset_remove_bond)).build());
                    }
                } else {
                    CareLog.e(TAG, "Cannot remove bond. MAC Address cannot be null or empty.", new Object[0]);
                }
            } else {
                CareLog.e(TAG, "Cannot remove bond. DeviceInfo cannot be null.", new Object[0]);
            }
        }
        terminate(null);
    }
}
