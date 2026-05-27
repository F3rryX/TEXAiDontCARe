package com.texa.carelib.care.attitude.internal;

import com.texa.carelib.care.attitude.AttitudeEstimationStatus;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.DongleNotConnectedException;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.internal.SerialProfileMessageReceiver;
import com.texa.carelib.profile.internal.SerialProfileProxy;
import com.texa.carelib.profile.internal.parser.GetRotationMatrixStatusParser;

/* JADX INFO: loaded from: classes2.dex */
public class SerialAttitude extends AttitudeBase implements SerialProfileMessageReceiver {
    private static final String TAG = "SerialAttitude";
    private final Profile mProfile;
    private final SerialProfileProxy mSerialProfileProxy;

    public SerialAttitude(Profile profile, FeatureVerifier featureVerifier) {
        super(featureVerifier);
        this.mProfile = profile;
        if (profile instanceof SerialProfileProxy) {
            SerialProfileProxy serialProfileProxy = (SerialProfileProxy) profile;
            this.mSerialProfileProxy = serialProfileProxy;
            serialProfileProxy.enableCommandSubscription(true, 145);
            serialProfileProxy.enableCommandSubscription(true, 146);
            return;
        }
        this.mSerialProfileProxy = null;
    }

    @Override // com.texa.carelib.care.attitude.Attitude
    public void beginEstimation() throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$care$attitude$AttitudeEstimationStatus[getAttitudeEstimationStatus().ordinal()];
        if (i == 1 || i == 2 || i == 3 || i == 4) {
            throw new CareLibException("Attitude estimation is already in progress.");
        }
        sendMessage(new Message.Builder().setCommandID(144).build());
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.attitude.internal.SerialAttitude$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$care$attitude$AttitudeEstimationStatus;

        static {
            int[] iArr = new int[AttitudeEstimationStatus.values().length];
            $SwitchMap$com$texa$carelib$care$attitude$AttitudeEstimationStatus = iArr;
            try {
                iArr[AttitudeEstimationStatus.Init.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$attitude$AttitudeEstimationStatus[AttitudeEstimationStatus.PlaneInProgress.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$attitude$AttitudeEstimationStatus[AttitudeEstimationStatus.Undefined.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$attitude$AttitudeEstimationStatus[AttitudeEstimationStatus.Z_InProgress.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public Profile getProfile() {
        return this.mProfile;
    }

    @Override // com.texa.carelib.care.attitude.Attitude
    public void loadAttitudeInfo() throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        sendMessage(new Message.Builder().setCommandID(146).build());
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void loadInfo() {
        super.loadInfo();
        try {
            loadAttitudeInfo();
        } catch (CareLibException unused) {
        }
    }

    @Override // com.texa.carelib.profile.ProfileSubModule, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
        int commandID = message.getCommandID();
        if (commandID == 145) {
            onMessageReceivedGetRotationMatrixStatus(message, careError);
        } else {
            if (commandID != 146) {
                return;
            }
            onMessageReceivedGetRotationMatrix(message, careError);
        }
    }

    private void onMessageReceivedGetRotationMatrix(Message message, CareError careError) {
        if (careError == null) {
            setRotationMatrixReport(message.getData() != null ? new RotationMatrixReportFactory().create(message.getData()) : null);
        }
    }

    private void onMessageReceivedGetRotationMatrixStatus(Message message, CareError careError) {
        if (careError == null) {
            setAttitudeEstimationStatus(GetRotationMatrixStatusParser.parse(message));
        }
    }

    private void sendMessage(Message message) {
        SerialProfileProxy serialProfileProxy = this.mSerialProfileProxy;
        if (serialProfileProxy != null) {
            serialProfileProxy.sendMessage(message);
        }
    }
}
