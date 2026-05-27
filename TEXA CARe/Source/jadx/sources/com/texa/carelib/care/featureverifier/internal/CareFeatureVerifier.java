package com.texa.carelib.care.featureverifier.internal;

import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.accessory.FirmwareUpgradePermission;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.core.AppType;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CareFeatureVerifier extends ProfileSubModule implements FeatureVerifier {
    private static final boolean D = false;
    private final Accessory mAccessory;
    private CommunicationStatus mCommunicationStatus;
    private final Profile mProfile;
    private static final List<Integer> VIN_STATES = Arrays.asList(2, 4, 3, 132, 130);
    public static final String TAG = "CareFeatureVerifier";

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean hasFeature(int i) {
        return true;
    }

    public CareFeatureVerifier(Profile profile, Accessory accessory) {
        this.mAccessory = accessory;
        this.mProfile = profile;
    }

    protected Accessory getAccessory() {
        return this.mAccessory;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public Profile getProfile() {
        return this.mProfile;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        this.mCommunicationStatus = communicationStatusChangedEvent.getCommunicationStatus();
    }

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean isConnected() {
        return CommunicationStatus.CONNECTED == this.mCommunicationStatus;
    }

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean canRebootToMainApp() {
        if (hasFeature(2)) {
            return isAuthenticated();
        }
        return false;
    }

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean canRebootToServiceApp() {
        if (hasFeature(2)) {
            return isAuthenticated();
        }
        return false;
    }

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean canResetDevice() {
        return isAuthenticated();
    }

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean isVehicleInfoAvailable() {
        return isAuthenticated() && VIN_STATES.contains(Integer.valueOf(this.mAccessory.getStatus()));
    }

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean isParametersAvailable() {
        return isParametersPollingAvailable() || isParametersSubscriptionAvailable();
    }

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean isParametersPollingAvailable() {
        if (!hasFeature(0)) {
            return false;
        }
        boolean zIsReady = isReady();
        if (isDiagnosisModeWorking()) {
            return zIsReady;
        }
        return false;
    }

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean isParametersSubscriptionAvailable() {
        if (!hasFeature(0)) {
            return false;
        }
        boolean zIsReady = isReady();
        if (isDiagnosisModeWorking()) {
            return zIsReady;
        }
        return false;
    }

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean isDTCReadingAvailable() {
        if (!hasFeature(1)) {
            return false;
        }
        boolean zIsReady = isReady();
        if (isDiagnosisModeWorking()) {
            return zIsReady;
        }
        return false;
    }

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean isReady() {
        return isAuthenticated() && (4 == this.mAccessory.getStatus() || 132 == this.mAccessory.getStatus());
    }

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean isAuthenticated() {
        if (isConnected()) {
            return this.mAccessory.isHostAuthenticated();
        }
        return false;
    }

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean isCurrentTripAvailable() {
        if (hasFeature(3)) {
            return isReady();
        }
        return false;
    }

    private boolean isFirmwareUpgradable() {
        return FirmwareUpgradePermission.YES == this.mAccessory.getFirmwareUpgradePermission();
    }

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean isMainAppUpgradable() {
        return isAuthenticated() && isFirmwareUpgradable();
    }

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean isServiceAppUpgradable() {
        return isAuthenticated() && isFirmwareUpgradable();
    }

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean isVehicleConfigurationNeeded() {
        return isAuthenticated() && this.mAccessory.getStatus() == 3;
    }

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean isVehicleConfigurationUpgradable() {
        return isAuthenticated() && AppType.MAIN == this.mAccessory.getRunningApp();
    }

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean canReadLogBook() {
        if (hasFeature(3)) {
            return isAuthenticated();
        }
        return false;
    }

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean canDeleteConfiguration() {
        int status = this.mAccessory.getStatus();
        return status == 1 || status == 2 || status == 4;
    }

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean canLoadImpacts() {
        if (hasFeature(4)) {
            return isAuthenticated();
        }
        return false;
    }

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean isCallPDUAvailable() {
        return hasFeature(10) && isReady() && isDiagnosisModeWorking();
    }

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean canReadTripDataLog() {
        if (hasFeature(11)) {
            return isAuthenticated();
        }
        return false;
    }

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean canEraseTripDataLog() {
        if (hasFeature(11)) {
            return isAuthenticated();
        }
        return false;
    }

    @Override // com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean canChangeLedBehaviour() {
        return isAuthenticated();
    }

    private boolean isDiagnosisModeWorking() {
        return 1 == this.mAccessory.getDiagnosisMode();
    }
}
