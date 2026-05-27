package com.texa.carelib.care.vehicleinfo.internal;

import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.profile.internal.SerialProfile;
import com.texa.carelib.profile.internal.SerialProfileMessageReceiver;
import com.texa.carelib.profile.internal.parser.GetStatusPacketParser;
import com.texa.carelib.profile.internal.parser.GetVINPacketParser;

/* JADX INFO: loaded from: classes2.dex */
public class SerialVehicleInfo extends VehicleInfoBase implements SerialProfileMessageReceiver {
    public static final String TAG = "SerialVehicleInfo";
    private int mAccessoryStatus;
    private final FeatureVerifier mFeatureVerifier;
    private final SerialProfile mProfile;

    public SerialVehicleInfo(Profile profile, FeatureVerifier featureVerifier) {
        SerialProfile serialProfile = (SerialProfile) profile;
        this.mProfile = serialProfile;
        this.mFeatureVerifier = featureVerifier;
        serialProfile.enableCommandSubscription(true, 45);
        this.mAccessoryStatus = 255;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public Profile getProfile() {
        return this.mProfile;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void loadInfo() {
        super.loadInfo();
        loadVehicleInfo();
    }

    private boolean loadVehicleInfo() {
        if (!this.mFeatureVerifier.isVehicleInfoAvailable()) {
            return true;
        }
        this.mProfile.sendMessage(new Message.Builder().setCommandID(45).build());
        return true;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
        int commandID = message.getCommandID();
        if (commandID == 45) {
            handleMessageGetVIN(message, careError);
        } else {
            if (commandID != 230) {
                return;
            }
            handleMessageGetStatus(message, careError);
        }
    }

    private void handleMessageGetStatus(Message message, CareError careError) {
        int status;
        if (careError != null || (status = GetStatusPacketParser.parse(message).getStatus()) == this.mAccessoryStatus) {
            return;
        }
        this.mAccessoryStatus = status;
        if (this.mFeatureVerifier.isVehicleInfoAvailable()) {
            loadVehicleInfo();
        }
    }

    private void handleMessageGetVIN(Message message, CareError careError) {
        if (careError == null) {
            String str = GetVINPacketParser.parse(message);
            if (StringUtils.isNullOrEmpty(str)) {
                CareLog.w(TAG, "Could not retrieve the VEHICLE_ID code.", new Object[0]);
                setVehicleID("");
            } else {
                CareLog.d(TAG, "VEHICLE_ID: %s", str);
                setVehicleID(str);
            }
        }
    }

    @Override // com.texa.carelib.care.vehicleinfo.internal.VehicleInfoBase, com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        super.onCommunicationStatusChanged(communicationStatusChangedEvent);
        if (communicationStatusChangedEvent.getCommunicationStatus() == CommunicationStatus.CONNECTED) {
            this.mAccessoryStatus = 255;
        }
    }
}
