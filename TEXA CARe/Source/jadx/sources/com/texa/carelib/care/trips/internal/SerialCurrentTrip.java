package com.texa.carelib.care.trips.internal;

import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.featureverifier.internal.CommandVerifier;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.care.trips.TripBeginInfo;
import com.texa.carelib.care.trips.TripEndInfo;
import com.texa.carelib.care.trips.TripStatisticsInfo;
import com.texa.carelib.care.trips.TripStatus;
import com.texa.carelib.care.trips.internal.parser.GetStatisticDiffTripDataPacketParser;
import com.texa.carelib.care.trips.internal.parser.GetTripStatusPacketParser;
import com.texa.carelib.communication.Commands;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.DongleNotConnectedException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.profile.internal.SerialProfileMessageReceiver;
import com.texa.carelib.profile.internal.SerialProfileProxy;
import java.math.BigInteger;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes2.dex */
public class SerialCurrentTrip extends CurrentTripBase implements SerialProfileMessageReceiver {
    public static final String TAG = "SerialCurrentTrip";
    private final CommandVerifier mSerialCommandVerifier;
    private final SerialProfileProxy mSerialProfileProxy;
    private Integer mStatisticsProgressiveIndex;

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase, com.texa.carelib.profile.ProfileSubModule
    public /* bridge */ /* synthetic */ Profile getProfile() {
        return super.getProfile();
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase, com.texa.carelib.core.utils.CareStruct
    public /* bridge */ /* synthetic */ byte[] getRawData() {
        return super.getRawData();
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase, com.texa.carelib.care.trips.CurrentTrip
    public /* bridge */ /* synthetic */ TripBeginInfo getTripBeginInfo() {
        return super.getTripBeginInfo();
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase, com.texa.carelib.care.trips.CurrentTrip
    public /* bridge */ /* synthetic */ TripEndInfo getTripEndInfo() {
        return super.getTripEndInfo();
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase, com.texa.carelib.care.trips.CurrentTrip
    public /* bridge */ /* synthetic */ BigInteger getTripID() {
        return super.getTripID();
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase, com.texa.carelib.care.trips.CurrentTrip
    public /* bridge */ /* synthetic */ TripStatisticsInfo getTripStatisticsInfo() {
        return super.getTripStatisticsInfo();
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase, com.texa.carelib.care.trips.CurrentTrip
    public /* bridge */ /* synthetic */ void loadTripInfo() throws CareLibException {
        super.loadTripInfo();
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase, com.texa.carelib.profile.ProfileSubModule
    public /* bridge */ /* synthetic */ void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        super.onCommunicationStatusChanged(communicationStatusChangedEvent);
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase
    public /* bridge */ /* synthetic */ void setTripBeginInfo(TripBeginInfo tripBeginInfo) {
        super.setTripBeginInfo(tripBeginInfo);
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase
    public /* bridge */ /* synthetic */ void setTripEndInfo(TripEndInfo tripEndInfo) {
        super.setTripEndInfo(tripEndInfo);
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase
    public /* bridge */ /* synthetic */ void setTripID(BigInteger bigInteger) {
        super.setTripID(bigInteger);
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase
    public /* bridge */ /* synthetic */ void setTripStatisticsInfo(TripStatisticsInfo tripStatisticsInfo) {
        super.setTripStatisticsInfo(tripStatisticsInfo);
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase
    public /* bridge */ /* synthetic */ void setTripStatus(TripStatus tripStatus) {
        super.setTripStatus(tripStatus);
    }

    public SerialCurrentTrip(Profile profile, FeatureVerifier featureVerifier, CommandVerifier commandVerifier) {
        super(profile, featureVerifier);
        this.mSerialCommandVerifier = commandVerifier;
        if (profile instanceof SerialProfileProxy) {
            SerialProfileProxy serialProfileProxy = (SerialProfileProxy) profile;
            this.mSerialProfileProxy = serialProfileProxy;
            serialProfileProxy.enableCommandSubscription(true, Commands.GetTripStatus);
            return;
        }
        this.mSerialProfileProxy = null;
    }

    @Override // com.texa.carelib.care.trips.CurrentTrip
    public void loadTripInfo(EnumSet<CurrentTrip.TripInfoType> enumSet) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        loadTripInfo(enumSet, false);
    }

    @Override // com.texa.carelib.profile.ProfileSubModule, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
        int commandID = message.getCommandID();
        if (commandID == 96) {
            handleCommandGetStartTripData(message, careError);
            return;
        }
        if (commandID == 97) {
            handleCommandGetStopTripData(message, careError);
            return;
        }
        if (commandID == 99) {
            handleCommandGetStatisticsTripData(message, careError);
        } else if (commandID == 101) {
            handleCommandGetStatisticDiffTripData(message, careError);
        } else {
            if (commandID != 231) {
                return;
            }
            handleCommandGetTripStatus(message, careError);
        }
    }

    void handleCommandGetStatisticDiffTripData(Message message, CareError careError) {
        boolean zIsValidProgressiveIndex;
        if (careError != null) {
            if (43 == message.getStatus()) {
                updateProgressiveIndex(null);
                sendGetStatisticsTripData();
                return;
            }
            return;
        }
        GetStatisticDiffTripDataPacketParser.GetStatisticDiffTripDataResponse getStatisticDiffTripDataResponse = GetStatisticDiffTripDataPacketParser.parse(message);
        synchronized (this) {
            zIsValidProgressiveIndex = isValidProgressiveIndex(this.mStatisticsProgressiveIndex, getStatisticDiffTripDataResponse.getProgressiveIndex());
        }
        if (!zIsValidProgressiveIndex) {
            updateProgressiveIndex(null);
            sendGetStatisticsTripData();
            return;
        }
        updateProgressiveIndex(getStatisticDiffTripDataResponse.getProgressiveIndex());
        CareLog.d(TAG, "Applying diff: %d", this.mStatisticsProgressiveIndex);
        TripStatisticsInfo tripStatisticsInfoMergeStatisticDiffTripData = mergeStatisticDiffTripData(getTripStatisticsInfo(), getStatisticDiffTripDataResponse.getData());
        if (tripStatisticsInfoMergeStatisticDiffTripData != null) {
            setTripStatisticsInfo(tripStatisticsInfoMergeStatisticDiffTripData);
        } else {
            updateProgressiveIndex(null);
            sendGetStatisticsTripData();
        }
    }

    boolean isValidProgressiveIndex(Integer num, Integer num2) {
        if (num2 == null) {
            return false;
        }
        if (num != null) {
            return 65535 == num.intValue() ? num2.intValue() == 0 : Math.abs(num.intValue() - num2.intValue()) == 1;
        }
        return true;
    }

    TripStatisticsInfo mergeStatisticDiffTripData(TripStatisticsInfo tripStatisticsInfo, byte[] bArr) {
        if (tripStatisticsInfo == null) {
            CareLog.wtf(TAG, "Current trip statistics info is null and a diff command response has be received. This condition is forbidden!!!", new Object[0]);
            return null;
        }
        if (tripStatisticsInfo.getRawData() == null) {
            CareLog.wtf(TAG, "Current trip statistics info raw data is null and a diff command response has be received. This condition is forbidden!!!", new Object[0]);
            return null;
        }
        if (bArr == null) {
            CareLog.wtf(TAG, "Diff command response payload is null... This condition is forbidden!!!", new Object[0]);
            return null;
        }
        try {
            return new TripStatisticsInfoFactory().create(new TripStatisticsInfoUpdater().update(tripStatisticsInfo.getRawData(), bArr));
        } catch (Exception e) {
            CareLog.e(TAG, e, "Could not adaptee subscribe statistics block info from differential data.", new Object[0]);
            return null;
        }
    }

    void updateProgressiveIndex(Integer num) {
        synchronized (this) {
            this.mStatisticsProgressiveIndex = num;
        }
    }

    void sendGetStatisticsTripData() {
        sendMessage(this.mSerialProfileProxy, new Message.Builder().setCommandID(99).build());
    }

    void sendGetStatisticDiffTripData() {
        sendMessage(this.mSerialProfileProxy, new Message.Builder().setCommandID(101).build());
    }

    Integer getProgressiveIndex() {
        return this.mStatisticsProgressiveIndex;
    }

    private void loadTripInfo(boolean z) {
        loadTripInfo(EnumSet.of(CurrentTrip.TripInfoType.Begin, CurrentTrip.TripInfoType.End, CurrentTrip.TripInfoType.Statistics), z);
    }

    private void loadTripInfo(EnumSet<CurrentTrip.TripInfoType> enumSet, boolean z) {
        CareLog.v(TAG, "loadTripInfo[infoType=%s, force_reload_total_statistic_block=%b]", enumSet, Boolean.valueOf(z));
        if (enumSet.contains(CurrentTrip.TripInfoType.Begin)) {
            sendMessage(this.mSerialProfileProxy, new Message.Builder().setCommandID(96).build());
        }
        if (enumSet.contains(CurrentTrip.TripInfoType.Statistics)) {
            if (!z && isTripStatisticsDiffSupported() && getTripStatisticsInfo() != null) {
                sendGetStatisticDiffTripData();
            } else {
                sendGetStatisticsTripData();
            }
        }
        if (enumSet.contains(CurrentTrip.TripInfoType.End)) {
            sendMessage(this.mSerialProfileProxy, new Message.Builder().setCommandID(97).build());
        }
    }

    protected boolean isTripStatisticsDiffSupported() {
        return this.mSerialCommandVerifier.isCommandSupported(101);
    }

    private void sendMessage(SerialProfileProxy serialProfileProxy, Message message) {
        if (serialProfileProxy != null) {
            serialProfileProxy.sendMessage(message);
        }
    }

    private void handleCommandGetTripStatus(Message message, CareError careError) {
        if (careError == null) {
            TripStatus tripStatus = getTripStatus();
            TripStatus tripStatus2 = GetTripStatusPacketParser.parse(message);
            if (tripStatus != tripStatus2) {
                setTripStatus(tripStatus2);
                int i = AnonymousClass1.$SwitchMap$com$texa$carelib$care$trips$TripStatus[tripStatus2.ordinal()];
                if (i == 1 || i == 2) {
                    loadTripInfo(true);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.trips.internal.SerialCurrentTrip$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$care$trips$TripStatus;

        static {
            int[] iArr = new int[TripStatus.values().length];
            $SwitchMap$com$texa$carelib$care$trips$TripStatus = iArr;
            try {
                iArr[TripStatus.Ended.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$trips$TripStatus[TripStatus.InProgress.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private void handleCommandGetStartTripData(Message message, CareError careError) {
        if (careError == null) {
            try {
                if (message.getData() != null) {
                    setTripBeginInfo(new TripBeginInfoFactory().create(message.getData()));
                } else {
                    setTripBeginInfo(null);
                }
            } catch (Exception e) {
                CareLog.e(TAG, e, "handleCommandGetStartTripData error.", new Object[0]);
            }
        }
    }

    private void handleCommandGetStopTripData(Message message, CareError careError) {
        if (careError == null) {
            if (message.getData() != null) {
                try {
                    setTripEndInfo(new TripEndInfoFactory().create(message.getData()));
                    return;
                } catch (Exception e) {
                    CareLog.e(TAG, e, "handleCommandGetStopTripData error.", new Object[0]);
                    return;
                }
            }
            setTripEndInfo(null);
        }
    }

    private void handleCommandGetStatisticsTripData(Message message, CareError careError) {
        updateProgressiveIndex(null);
        if (careError == null) {
            if (message.getData() != null) {
                try {
                    setTripStatisticsInfo(new TripStatisticsInfoFactory().create(message.getData()));
                    return;
                } catch (Exception e) {
                    CareLog.e(TAG, e, "handleCommandGetStatisticsTripData error.", new Object[0]);
                    return;
                }
            }
            setTripStatisticsInfo(null);
        }
    }
}
