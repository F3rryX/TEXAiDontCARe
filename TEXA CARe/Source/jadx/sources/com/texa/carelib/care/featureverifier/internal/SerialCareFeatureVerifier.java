package com.texa.carelib.care.featureverifier.internal;

import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.datamanagerconfiguration.internal.parser.GetDataManagerParametersParser;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.utils.FirmwareVersion;
import com.texa.carelib.core.utils.Version;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.internal.SerialProfileMessageReceiver;

/* JADX INFO: loaded from: classes2.dex */
public class SerialCareFeatureVerifier extends CareFeatureVerifier implements SerialProfileMessageReceiver {
    private boolean mCanChangeLedBehaviour;
    private final CommandVerifier mCommandVerifier;

    public SerialCareFeatureVerifier(Profile profile, Accessory accessory, CommandVerifier commandVerifier) {
        super(profile, accessory);
        this.mCommandVerifier = commandVerifier;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
        super.onMessageReceived(obj, message, careError);
        if (careError == null && 83 == message.getCommandID()) {
            this.mCanChangeLedBehaviour = GetDataManagerParametersParser.parse(message).getData().indexOfKey(14) >= 0;
        }
    }

    @Override // com.texa.carelib.care.featureverifier.internal.CareFeatureVerifier, com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean hasFeature(int i) {
        FirmwareVersion mainAPPVersion;
        switch (i) {
            case 0:
            case 1:
                if ((this.mCommandVerifier.isCommandSupported(32) || this.mCommandVerifier.isCommandSupported(37)) && this.mCommandVerifier.isCommandSupported(47)) {
                }
                break;
            case 5:
                if (!this.mCommandVerifier.isCommandSupported(129) || !this.mCommandVerifier.isCommandSupported(130)) {
                }
                break;
            case 7:
                if (!this.mCommandVerifier.isCommandSupported(146) || !this.mCommandVerifier.isCommandSupported(145)) {
                }
                break;
            case 9:
                if (!this.mCommandVerifier.isCommandSupported(114) || !this.mCommandVerifier.isCommandSupported(115) || !this.mCommandVerifier.isCommandSupported(116) || !this.mCommandVerifier.isCommandSupported(117)) {
                }
                break;
            case 10:
                if (!this.mCommandVerifier.isCommandSupported(34) || !this.mCommandVerifier.isCommandSupported(35)) {
                }
                break;
            case 11:
                if (this.mCommandVerifier.isCommandSupported(58) && (mainAPPVersion = getAccessory().getMainAPPVersion()) != null && "ETRK".equalsIgnoreCase(mainAPPVersion.getProductName()) && mainAPPVersion.getVersion().compareTo(new Version(1, 0, 0, 118)) > 0) {
                }
                break;
        }
        return false;
    }

    @Override // com.texa.carelib.care.featureverifier.internal.CareFeatureVerifier, com.texa.carelib.care.featureverifier.FeatureVerifier
    public boolean canChangeLedBehaviour() {
        if (super.canChangeLedBehaviour()) {
            return this.mCanChangeLedBehaviour;
        }
        return false;
    }
}
