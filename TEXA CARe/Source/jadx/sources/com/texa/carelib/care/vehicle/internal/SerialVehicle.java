package com.texa.carelib.care.vehicle.internal;

import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.featureverifier.FeatureNotSupportedException;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.featureverifier.internal.CommandVerifier;
import com.texa.carelib.care.profile.CareProxyProtectionSessionCompletedEvent;
import com.texa.carelib.care.trips.internal.parser.GetTripStatusPacketParser;
import com.texa.carelib.care.vehicle.Vehicle;
import com.texa.carelib.care.vehicle.internal.parser.GetAvailableParametersPacketParser;
import com.texa.carelib.care.vehicle.internal.parser.GetNumSubscribedObjectsPacketParser;
import com.texa.carelib.care.vehicle.internal.parser.GetSupportedParametersPacketParser;
import com.texa.carelib.care.vehicletroubles.DTCDetail;
import com.texa.carelib.care.vehicletroubles.VehicleTroubles;
import com.texa.carelib.care.vehicletroubles.internal.parser.GetSupportedECUPacketParser;
import com.texa.carelib.communication.Commands;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.DongleNotConnectedException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.Version;
import com.texa.carelib.core.utils.internal.ByteBufferUtils;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.profile.R;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.profile.internal.SerialProfile;
import com.texa.carelib.profile.internal.SerialProfileMessageReceiver;
import com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisEngine;
import com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisScheduler;
import com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisSchedulerAction;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.AvailableParameterUpdateCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.DiagnosisEngineReadCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.DiagnosisEngineSubscribeCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.DiagnosisEngineUnsubscribeCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.DiagnosisEngineUpdateSubscriptionCountersCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.ECUUpdateCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.SubscribedObjectsPayloadComposerCreatedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.SupportedParameterUpdateCompletedEvent;
import com.texa.carelib.profile.internal.parser.GetDiagnosisModePacketParser;
import com.texa.carelib.profile.internal.parser.GetSessionIDPacketParser;
import com.texa.carelib.profile.internal.parser.GetStatusPacketParser;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class SerialVehicle extends VehicleBase implements SerialProfileMessageReceiver {
    private static final boolean D = true;
    private static final long ONE_SHOT_READ_TIMEOUT = 10000;
    public static final String TAG = "SerialVehicle";
    private static SerialVehicle _SingletonInstance;
    private Integer mActionObjectType;
    private final CommandVerifier mCommandVerifier;
    private int mObjectPayloadCount;
    private final OneShotReadWaiter mOneShotReadWaiter;
    private final SerialProfile mProfile;
    private Callback<DiagnosisEngineReadCompletedEvent> mReadCallback;
    private UUID mReadMessageID;
    private String mSessionID;
    private Callback<DiagnosisEngineSubscribeCompletedEvent> mSubscribeCallback;
    private UUID mSubscribeMessageID;
    private SubscribedObjectsPayloadComposer mSubscribedObjectsPayloadComposer;
    private Callback<DiagnosisEngineUnsubscribeCompletedEvent> mUnsubscribeCallback;
    private UUID mUnsubscribeMessageID;
    private Callback<AvailableParameterUpdateCompletedEvent> mUpdateAvailableParameterCallback;
    private Callback<ECUUpdateCompletedEvent> mUpdateECUCallback;
    private Callback<DiagnosisEngineUpdateSubscriptionCountersCompletedEvent> mUpdateSubscriptionCountersCallback;
    private UUID mUpdateSubscriptionCountersMessageID;
    private Callback<SupportedParameterUpdateCompletedEvent> mUpdateSupportedParameterCallback;
    private final VehicleValueParser mVehicleValueParserExt;
    private final VehicleValueParser mVehicleValueParserLegacy;

    public static SerialVehicle singletonInstance(SerialProfile serialProfile, Accessory accessory, FeatureVerifier featureVerifier, DiagnosisScheduler diagnosisScheduler) {
        if (_SingletonInstance == null) {
            _SingletonInstance = new SerialVehicle(serialProfile, serialProfile.getCommandVerifier(), accessory, featureVerifier, diagnosisScheduler);
        }
        return _SingletonInstance;
    }

    SerialVehicle(SerialProfile serialProfile, CommandVerifier commandVerifier, Accessory accessory, FeatureVerifier featureVerifier, DiagnosisScheduler diagnosisScheduler) {
        super(accessory, featureVerifier, diagnosisScheduler);
        this.mProfile = serialProfile;
        this.mCommandVerifier = commandVerifier;
        super.setAccessoryStatus(accessory.getStatus());
        super.setDiagnosisMode(accessory.getDiagnosisMode());
        serialProfile.enableCommandSubscription(true, 46);
        serialProfile.enableCommandSubscription(true, 47);
        this.mOneShotReadWaiter = new OneShotReadWaiter();
        this.mVehicleValueParserLegacy = new VehicleValueParserLegacy();
        this.mVehicleValueParserExt = new VehicleValueParserExt();
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public SerialProfile getProfile() {
        return this.mProfile;
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public void loadAvailableDataIDs() {
        CareLog.d(TAG, "loadAvailableDataIDs()", new Object[0]);
        this.mProfile.sendMessage(new Message.Builder().setCommandID(85).build());
        this.mProfile.sendMessage(new Message.Builder().setCommandID(36).build());
        this.mProfile.sendMessage(new Message.Builder().setCommandID(44).build());
        this.mProfile.sendMessage(new Message.Builder().setCommandID(46).build());
    }

    static Set<Long> removeNotSupportedParameters(Set<Long> set, Set<Long> set2) {
        HashSet hashSet = new HashSet(set);
        hashSet.removeAll(set2);
        if (hashSet.size() > 0) {
            set.removeAll(hashSet);
        }
        return set;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
        if (47 == message.getCommandID()) {
            handleMessageGetObjectValue(message, careError);
            return;
        }
        if (43 == message.getCommandID()) {
            handleMessageGetObjectValueExt(message, careError);
            return;
        }
        if (46 == message.getCommandID()) {
            handleMessageGetAvailableParameters(message, careError);
            return;
        }
        if (44 == message.getCommandID()) {
            handleMessageGetSupportedParameters(message, careError);
            return;
        }
        if (231 == message.getCommandID()) {
            handleMessageGetTripStatus(message, careError);
            return;
        }
        if (230 == message.getCommandID()) {
            handleMessageGetStatus(message, careError);
            return;
        }
        if (17 == message.getCommandID()) {
            handleMessageGetDiagnosisMode(message, careError);
            return;
        }
        if (32 == message.getCommandID() || 37 == message.getCommandID()) {
            handleMessageSubscribedObjects(message, careError);
            return;
        }
        if (33 == message.getCommandID()) {
            handleMessageUnsubscribedObjects(message, careError);
            return;
        }
        if (36 == message.getCommandID()) {
            handleGetNumSubscribedObjects(message, careError);
        } else if (85 == message.getCommandID()) {
            handleGetSupportedECU(message, careError);
        } else if (78 == message.getCommandID()) {
            handleGetSessionID(message, careError);
        }
    }

    private void handleGetSessionID(Message message, CareError careError) {
        if (careError == null) {
            this.mSessionID = GetSessionIDPacketParser.parse(message);
        }
    }

    @Override // com.texa.carelib.care.vehicletroubles.VehicleTroubles
    public void loadDTCs() throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().hasFeature(1)) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().isDTCReadingAvailable()) {
            throw new CareLibException("Could not read DTCs at this moment.");
        }
        Set<Long> supportedECUs = getSupportedECUs();
        if (supportedECUs == null) {
            throw new CareLibException("Supported ECU has not be loaded.");
        }
        if (supportedECUs.isEmpty()) {
            throw new CareLibException("No ECU supported for DTCs read.");
        }
        if (getSupportedECUs() != null) {
            setECUScanProgress(0.0f);
            setDTCTranslationProgress(0.0f);
            clearDTCs();
            Iterator<Map.Entry<Long, Integer>> it = getReceivedECUs().entrySet().iterator();
            while (it.hasNext()) {
                it.next().setValue(null);
            }
            beginProtectionSessionIfNeeded(new Callback() { // from class: com.texa.carelib.care.vehicle.internal.SerialVehicle$$ExternalSyntheticLambda0
                @Override // com.texa.carelib.core.Callback
                public final void onCompleted(Object obj) {
                    this.f$0.m726x63bd2afa((CareProxyProtectionSessionCompletedEvent) obj);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$loadDTCs$0$com-texa-carelib-care-vehicle-internal-SerialVehicle, reason: not valid java name */
    public /* synthetic */ void m726x63bd2afa(CareProxyProtectionSessionCompletedEvent careProxyProtectionSessionCompletedEvent) {
        CareError error = careProxyProtectionSessionCompletedEvent.getError();
        if (error == null) {
            try {
                getDiagnosisScheduler().read(1, getSupportedECUs());
                return;
            } catch (CareLibException e) {
                terminateLoadDTCs(new CareError.Builder(1, 28).setMessage("Unable to read DTCs.").setException(e).build());
                return;
            }
        }
        terminateLoadDTCs(error);
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public void loadValues(Set<Long> set) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().hasFeature(0)) {
            throw new FeatureNotSupportedException();
        }
        if (set.isEmpty()) {
            throw new CareLibException("Parameter list could not be empty.");
        }
        CareLog.d(TAG, "loadValues for parameters: [%s]", DataIDFormatter.toString(set));
        getDiagnosisScheduler().read(0, set);
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public void beginUpdateValues(long j, Set<Long> set) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().hasFeature(0)) {
            throw new FeatureNotSupportedException();
        }
        if (set.isEmpty()) {
            throw new CareLibException("Parameter list could not be empty.");
        }
        CareLog.d(TAG, "beginUpdateValues(%dms) for parameters: [%s]", Long.valueOf(j), DataIDFormatter.toString(set));
        getDiagnosisScheduler().subscribe(0, Long.valueOf(j), set);
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public void endUpdateValues(Set<Long> set) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().hasFeature(0)) {
            throw new FeatureNotSupportedException();
        }
        if (set.isEmpty()) {
            throw new CareLibException("Parameter list could not be empty.");
        }
        getDiagnosisScheduler().unsubscribe(0, set);
    }

    @Override // com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisEngine
    public void updateECUs(Callback<ECUUpdateCompletedEvent> callback) {
        this.mUpdateECUCallback = callback;
        this.mProfile.sendMessage(new Message.Builder().setCommandID(85).build());
    }

    @Override // com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisEngine
    public void updateAvailableParameters(Callback<AvailableParameterUpdateCompletedEvent> callback) {
        this.mUpdateAvailableParameterCallback = callback;
        this.mProfile.sendMessage(new Message.Builder().setCommandID(46).build());
    }

    @Override // com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisEngine
    public void updateSupportedParameters(Callback<SupportedParameterUpdateCompletedEvent> callback) {
        this.mUpdateSupportedParameterCallback = callback;
        this.mProfile.sendMessage(new Message.Builder().setCommandID(44).build());
    }

    @Override // com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisEngine
    public void read(int i, Set<Long> set, Callback<DiagnosisEngineReadCompletedEvent> callback) {
        HashSet hashSet = new HashSet(set);
        CareLog.v(TAG, "Read diagnosis values Type: %1$d ID:[%2$s]", Integer.valueOf(i), DataIDFormatter.toString(set));
        if (hashSet.size() > 0) {
            this.mReadCallback = callback;
            this.mActionObjectType = Integer.valueOf(i);
            Message messageBuild = new Message.Builder().setCommandID(this.mSubscribedObjectsPayloadComposer.getCommandId()).setPayload(this.mSubscribedObjectsPayloadComposer.getPayload(i, Vehicle.ONE_SHOT_READ.longValue(), hashSet)).build();
            this.mReadMessageID = messageBuild.getID();
            this.mProfile.sendMessage(messageBuild);
            return;
        }
        callback.onCompleted(new DiagnosisEngineReadCompletedEvent(this, null));
    }

    @Override // com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisEngine
    public void subscribe(int i, Long l, Set<Long> set, Callback<DiagnosisEngineSubscribeCompletedEvent> callback) {
        this.mSubscribeCallback = callback;
        if (i == 0 && set.size() == 0) {
            CareLog.w(TAG, "No supported parameters found.", new Object[0]);
            return;
        }
        if (canSubscribe(getActiveSubscriptionCount(), getMaximumSubscriptionCount(), set.size())) {
            CareLog.v(TAG, "Subscribe diagnosis  values Type: %1$d Interval: %2$d ms ID:[%3$s]", Integer.valueOf(i), l, DataIDFormatter.toString(set));
            Message messageBuild = new Message.Builder().setCommandID(this.mSubscribedObjectsPayloadComposer.getCommandId()).setPayload(this.mSubscribedObjectsPayloadComposer.getPayload(i, l.longValue(), set)).build();
            this.mActionObjectType = Integer.valueOf(i);
            this.mSubscribeMessageID = messageBuild.getID();
            this.mObjectPayloadCount = set.size();
            this.mProfile.sendMessage(messageBuild);
            return;
        }
        CareLog.v(TAG, "Could not subscribe diagnosis values Type: %1$d Interval: %2$d ms ID:[%3$s].", Integer.valueOf(i), l, DataIDFormatter.toString(set));
        terminateSubscribe(this, new CareError.Builder(1, 29).setMessage(getProfile().getContext().getString(R.string.error_command_status_too_much_subscriptions, "")).build());
        if (1 == i) {
            setECUScanProgress(0.0f);
            setDTCTranslationProgress(0.0f);
        }
    }

    @Override // com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisEngine
    public void unsubscribe(int i, Set<Long> set, Callback<DiagnosisEngineUnsubscribeCompletedEvent> callback) {
        this.mUnsubscribeCallback = callback;
        CareLog.v(TAG, "Unsubscribe diagnosis values Type: %1$d ID:[%2$s]", Integer.valueOf(i), DataIDFormatter.toString(set));
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((set.size() * 4) + 1);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put((byte) i);
        Iterator<Long> it = set.iterator();
        while (it.hasNext()) {
            ByteBufferUtils.putUnsignedInt(byteBufferAllocate, it.next());
        }
        this.mObjectPayloadCount = set.size();
        Message messageBuild = new Message.Builder().setCommandID(33).setPayload(byteBufferAllocate.array()).build();
        this.mUnsubscribeMessageID = messageBuild.getID();
        this.mActionObjectType = Integer.valueOf(i);
        this.mProfile.sendMessage(messageBuild);
    }

    @Override // com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisEngine
    public void updateSubscriptionCounters(Callback<DiagnosisEngineUpdateSubscriptionCountersCompletedEvent> callback) {
        CareLog.v(TAG, "Sending GetNumSubscribedObjects", new Object[0]);
        this.mUpdateSubscriptionCountersCallback = callback;
        Message messageBuild = new Message.Builder().setCommandID(36).build();
        this.mUpdateSubscriptionCountersMessageID = messageBuild.getID();
        this.mProfile.sendMessage(messageBuild);
    }

    @Override // com.texa.carelib.care.vehicletroubles.VehicleTroubles
    public void beginUpdateDTCs(final long j) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().hasFeature(1)) {
            throw new DongleNotConnectedException();
        }
        String str = TAG;
        CareLog.d(str, "Begin Update DTCs with interval %d(ms)", Long.valueOf(j));
        final Set<Long> supportedECUs = getSupportedECUs();
        if (supportedECUs == null || supportedECUs.isEmpty()) {
            throw new CareLibException("No ECU available for DTCs reading.");
        }
        if (j < 0) {
            throw new CareLibException("Interval value cannot be less than 0.");
        }
        if (j > VehicleTroubles.ONE_SHOT_READ.longValue()) {
            throw new CareLibException("Interval value cannot be greater than " + VehicleTroubles.ONE_SHOT_READ + Version.SEPARATOR);
        }
        CareLog.d(str, "beginUpdateDTCs(%1$dms) for ECUs: [%2$s]", Long.valueOf(j), DataIDFormatter.toString(supportedECUs));
        setECUScanProgress(0.0f);
        setDTCTranslationProgress(0.0f);
        beginProtectionSessionIfNeeded(new Callback() { // from class: com.texa.carelib.care.vehicle.internal.SerialVehicle$$ExternalSyntheticLambda1
            @Override // com.texa.carelib.core.Callback
            public final void onCompleted(Object obj) {
                this.f$0.m725x20000487(j, supportedECUs, (CareProxyProtectionSessionCompletedEvent) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$beginUpdateDTCs$1$com-texa-carelib-care-vehicle-internal-SerialVehicle, reason: not valid java name */
    public /* synthetic */ void m725x20000487(long j, Set set, CareProxyProtectionSessionCompletedEvent careProxyProtectionSessionCompletedEvent) {
        CareError error = careProxyProtectionSessionCompletedEvent.getError();
        if (error == null) {
            try {
                getDiagnosisScheduler().subscribe(1, Long.valueOf(j), new HashSet(set));
                return;
            } catch (CareLibException e) {
                terminateLoadDTCs(new CareError.Builder(1, 28).setMessage("Unable to subscribe DTCs.").setException(e).build());
                return;
            }
        }
        terminateLoadDTCs(error);
    }

    void beginProtectionSessionIfNeeded(Callback<CareProxyProtectionSessionCompletedEvent> callback) {
        if (getAccessory().isDTCEncrypted() && StringUtils.isNullOrEmpty(this.mSessionID)) {
            beginProtectionSession(callback);
        } else {
            callback.onCompleted(new CareProxyProtectionSessionCompletedEvent(this, null));
        }
    }

    void beginProtectionSession(Callback<CareProxyProtectionSessionCompletedEvent> callback) {
        this.mProfile.beginProtectionSession(callback);
    }

    @Override // com.texa.carelib.care.vehicletroubles.VehicleTroubles
    public void endUpdateDTCs() throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().hasFeature(1)) {
            throw new DongleNotConnectedException();
        }
        Set<Long> supportedECUs = getSupportedECUs();
        if (supportedECUs == null || supportedECUs.isEmpty()) {
            throw new CareLibException("No ECU supported");
        }
        CareLog.d(TAG, "endUpdateDTCs for ECUs: [%1$s]", DataIDFormatter.toString(supportedECUs));
        getDiagnosisScheduler().unsubscribe(1, new HashSet(supportedECUs));
    }

    private boolean canSubscribe(Integer num, Integer num2, int i) {
        if (num2 == null || num == null || num2.intValue() - num.intValue() >= i) {
            return true;
        }
        CareLog.w(TAG, "Too much subscription! Actual: %1$d/%2$d Required: %3$d", num, num2, Integer.valueOf(i));
        return false;
    }

    private void handleMessageSubscribedObjects(Message message, CareError careError) {
        Integer num;
        if (careError == null) {
            CareLog.v(TAG, "%1$s received.", Commands.getName(Integer.valueOf(message.getCommandID())));
        } else {
            CareLog.e(TAG, "%1$s error. Current status:%2$d Diagnosis Mode:%3$d Error:%4$s", Commands.getName(Integer.valueOf(message.getCommandID())), Integer.valueOf(getAccessoryStatus()), Integer.valueOf(getAccessoryDiagnosisMode()), careError);
        }
        if (careError != null && (num = this.mActionObjectType) != null && 1 == num.intValue()) {
            terminateLoadDTCs(careError);
        }
        if (message.getID() == this.mSubscribeMessageID) {
            if (this.mSubscribeCallback != null) {
                terminateSubscribe(this, careError);
            }
            if (careError == null) {
                setActiveSubscriptionCount(Integer.valueOf(getActiveSubscriptionCount().intValue() + this.mObjectPayloadCount));
            }
        }
        if (message.getID() == this.mReadMessageID) {
            if (careError == null) {
                setActiveSubscriptionCount(Integer.valueOf(Math.min(getMaximumSubscriptionCount().intValue(), getActiveSubscriptionCount().intValue() + this.mObjectPayloadCount)));
                DiagnosisSchedulerAction currentAction = getDiagnosisScheduler().getCurrentAction();
                if (currentAction != null) {
                    this.mOneShotReadWaiter.waitFor(currentAction.getObjectDataType(), currentAction.getDataIDs(), 10000L, TimeUnit.MILLISECONDS);
                    return;
                }
                return;
            }
            if (this.mReadCallback != null) {
                terminateRead(this, careError);
            }
        }
    }

    private void handleMessageUnsubscribedObjects(Message message, CareError careError) {
        if (careError == null) {
            CareLog.v(TAG, "CMD_UnsubscribedObjects received.", new Object[0]);
        } else {
            CareLog.e(TAG, "CMD_UnsubscribedObjects error. Current status:%d Diagnosis Mode:%d Error:%s", Integer.valueOf(getAccessoryStatus()), Integer.valueOf(getAccessoryDiagnosisMode()), careError);
        }
        if (this.mUnsubscribeCallback != null) {
            if (message.getID() == this.mUnsubscribeMessageID) {
                terminateUnsubscribe(this, careError);
            }
            if (careError == null) {
                setActiveSubscriptionCount(Integer.valueOf(Math.max(0, getActiveSubscriptionCount().intValue() - this.mObjectPayloadCount)));
            }
        }
    }

    private void handleGetSupportedECU(Message message, CareError careError) {
        if (this.mUpdateECUCallback != null) {
            terminateGetSupportedECUs(this, careError);
        }
        if (careError == null) {
            Set<Long> set = GetSupportedECUPacketParser.parse(message);
            CareLog.d(TAG, "Supported ECUs[%1$d]: %s", Integer.valueOf(set.size()), StringUtils.join(set, ","));
            setSupportedECUs(set);
            if (this.mCommandVerifier.isCommandSupported(36)) {
                return;
            }
            setMaximumSubscriptionCountLegacy();
            return;
        }
        CareLog.e(TAG, "CMD_GetSupportedECU error. Current status:%d Diagnosis Mode:%d Error:%s", Integer.valueOf(getAccessoryStatus()), Integer.valueOf(getAccessoryDiagnosisMode()), careError);
    }

    private void handleGetNumSubscribedObjects(Message message, CareError careError) {
        try {
            if (careError == null) {
                GetNumSubscribedObjectsPacketParser.Response response = GetNumSubscribedObjectsPacketParser.parse(message);
                CareLog.v(TAG, "CMD_GetNumSubscribedObjects received. Active:%1$d Max:%2$d", response.getActiveSubscriptionCount(), response.getMaximumSubscriptionCount());
                setMaximumSubscriptionCount(Integer.valueOf(Math.max(0, response.getMaximumSubscriptionCount().intValue() - 1)));
                setActiveSubscriptionCount(response.getActiveSubscriptionCount());
            } else {
                CareLog.e(TAG, "CMD_GetNumSubscribedObjects error. Current status:%d Diagnosis Mode:%d Error:%s", Integer.valueOf(getAccessoryStatus()), Integer.valueOf(getAccessoryDiagnosisMode()), careError);
                setMaximumSubscriptionCountLegacy();
            }
            if (this.mUpdateSubscriptionCountersCallback == null || message.getID() != this.mUpdateSubscriptionCountersMessageID) {
                return;
            }
            terminateUpdateSubscriptionCounters(this, careError);
        } finally {
            if (this.mUpdateSubscriptionCountersCallback != null && message.getID() == this.mUpdateSubscriptionCountersMessageID) {
                terminateUpdateSubscriptionCounters(this, careError);
            }
        }
    }

    private void handleMessageGetDiagnosisMode(Message message, CareError careError) {
        if (careError == null) {
            super.setDiagnosisMode(GetDiagnosisModePacketParser.parse(message));
        }
    }

    private void handleMessageGetStatus(Message message, CareError careError) {
        if (careError == null) {
            super.setAccessoryStatus(GetStatusPacketParser.parse(message).getStatus());
        }
    }

    private void handleMessageGetTripStatus(Message message, CareError careError) {
        if (careError == null && message.getData() != null && message.getData().length > 0) {
            setTripStatus(GetTripStatusPacketParser.parse(message));
        }
    }

    @Override // com.texa.carelib.care.vehicle.internal.VehicleBase
    protected void resetData() {
        super.resetData();
        if (this.mCommandVerifier.isCommandSupported(36)) {
            return;
        }
        setActiveSubscriptionCount(0);
    }

    private void handleMessageGetObjectValue(Message message, CareError careError) {
        if (careError != null || message.getData() == null || message.getData().length <= 0) {
            return;
        }
        VehicleValuesBundleParserLegacy.parse(this.mVehicleValueParserLegacy, message.getData(), message.getReceivedTime());
        List<DiaValueInfo> parameters = VehicleValuesBundleParserLegacy.getParameters();
        if (!parameters.isEmpty()) {
            this.mOneShotReadWaiter.onParametersRead(parameters);
            updateParameters(parameters, getTripStatus());
        }
        Map<Long, Map<String, DTCDetail>> dTCs = VehicleValuesBundleParserLegacy.getDTCs();
        if (dTCs.isEmpty()) {
            return;
        }
        this.mOneShotReadWaiter.onDTCsRead(dTCs);
        for (Map.Entry<Long, Map<String, DTCDetail>> entry : dTCs.entrySet()) {
            CareLog.d(TAG, "ECU %d contains %d DTCs.", entry.getKey(), Integer.valueOf(entry.getValue().size()));
            didReceiveDTCsForECU(entry.getKey(), entry.getValue());
        }
    }

    private void handleMessageGetObjectValueExt(Message message, CareError careError) {
        if (careError != null || message.getData() == null || message.getData().length <= 0) {
            return;
        }
        VehicleValuesBundleParserExt.parse(this.mVehicleValueParserExt, message.getData(), message.getReceivedTime());
        List<DiaValueInfo> parameters = VehicleValuesBundleParserExt.getParameters();
        if (!parameters.isEmpty()) {
            this.mOneShotReadWaiter.onParametersRead(parameters);
            updateParameters(parameters, getTripStatus());
        }
        Map<Long, Map<String, DTCDetail>> dTCs = VehicleValuesBundleParserExt.getDTCs();
        if (dTCs.isEmpty()) {
            return;
        }
        this.mOneShotReadWaiter.onDTCsRead(dTCs);
        for (Map.Entry<Long, Map<String, DTCDetail>> entry : dTCs.entrySet()) {
            CareLog.d(TAG, "ECU %d contains %d DTCs.", entry.getKey(), Integer.valueOf(entry.getValue().size()));
            didReceiveDTCsForECU(entry.getKey(), entry.getValue());
        }
    }

    private void terminateGetSupportedECUs(DiagnosisEngine diagnosisEngine, CareError careError) {
        Callback<ECUUpdateCompletedEvent> callback = this.mUpdateECUCallback;
        if (callback != null) {
            callback.onCompleted(new ECUUpdateCompletedEvent(diagnosisEngine, careError));
        }
        this.mUpdateECUCallback = null;
    }

    private void terminateGetSupportedParameters(DiagnosisEngine diagnosisEngine, CareError careError) {
        this.mUpdateSupportedParameterCallback.onCompleted(new SupportedParameterUpdateCompletedEvent(diagnosisEngine, careError));
        this.mUpdateSupportedParameterCallback = null;
    }

    private void terminateGetAvailableParameters(DiagnosisEngine diagnosisEngine, CareError careError) {
        this.mUpdateAvailableParameterCallback.onCompleted(new AvailableParameterUpdateCompletedEvent(diagnosisEngine, careError));
        this.mUpdateAvailableParameterCallback = null;
    }

    private void terminateSubscribe(DiagnosisEngine diagnosisEngine, CareError careError) {
        this.mSubscribeCallback.onCompleted(new DiagnosisEngineSubscribeCompletedEvent(diagnosisEngine, careError));
        this.mSubscribeMessageID = null;
        this.mSubscribeCallback = null;
    }

    private void terminateUnsubscribe(DiagnosisEngine diagnosisEngine, CareError careError) {
        this.mUnsubscribeCallback.onCompleted(new DiagnosisEngineUnsubscribeCompletedEvent(diagnosisEngine, careError));
        this.mUnsubscribeMessageID = null;
        this.mUnsubscribeCallback = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void terminateRead(DiagnosisEngine diagnosisEngine, CareError careError) {
        this.mReadCallback.onCompleted(new DiagnosisEngineReadCompletedEvent(diagnosisEngine, careError));
        this.mReadMessageID = null;
        this.mReadCallback = null;
    }

    private void terminateUpdateSubscriptionCounters(DiagnosisEngine diagnosisEngine, CareError careError) {
        this.mUpdateSubscriptionCountersCallback.onCompleted(new DiagnosisEngineUpdateSubscriptionCountersCompletedEvent(diagnosisEngine, careError));
        this.mUpdateSubscriptionCountersCallback = null;
    }

    private void handleMessageGetAvailableParameters(Message message, CareError careError) {
        if (this.mUpdateAvailableParameterCallback != null) {
            terminateGetAvailableParameters(this, careError);
        }
        if (careError != null) {
            CareLog.e(TAG, "handleMessageGetAvailableParameters error: " + careError, new Object[0]);
            return;
        }
        onAvailableParametersChanged(GetAvailableParametersPacketParser.parse(message));
    }

    private void handleMessageGetSupportedParameters(Message message, CareError careError) {
        if (this.mUpdateSupportedParameterCallback != null) {
            terminateGetSupportedParameters(this, careError);
        }
        if (careError != null) {
            CareLog.e(TAG, "handleMessageGetSupportedParameters error: " + careError, new Object[0]);
            return;
        }
        Set<Long> set = GetSupportedParametersPacketParser.parse(message);
        CareLog.d(TAG, "handleMessageGetSupportedParameters parameters: %1$d", Integer.valueOf(set.size()));
        onSupportedParametersChanged(set);
    }

    @Override // com.texa.carelib.care.vehicle.internal.VehicleBase
    protected void onSupportedParametersChanged(Set<Long> set) {
        super.onSupportedParametersChanged(set);
        if (this.mCommandVerifier.isCommandSupported(36)) {
            return;
        }
        setMaximumSubscriptionCountLegacy();
    }

    private void setMaximumSubscriptionCountLegacy() {
        setMaximumSubscriptionCount(Integer.valueOf(Math.max(0, getECUCount() + getSupportedDataIDs().size() + 1)));
    }

    @Override // com.texa.carelib.care.vehicle.internal.VehicleBase, com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        super.onCommunicationStatusChanged(communicationStatusChangedEvent);
        if (CommunicationStatus.CONNECTED == communicationStatusChangedEvent.getCommunicationStatus()) {
            this.mSessionID = null;
            this.mOneShotReadWaiter.connected();
        } else {
            this.mOneShotReadWaiter.notConnected();
        }
    }

    @Override // com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisEngine
    public void createSubscribedObjectsPayloadComposer(Callback<SubscribedObjectsPayloadComposerCreatedEvent> callback) {
        if (this.mCommandVerifier.isCommandSupported(37)) {
            CareLog.i(TAG, "Using Diagnosis Ext", new Object[0]);
            this.mSubscribedObjectsPayloadComposer = new SubscribedObjectsPayloadComposerExt();
        } else {
            CareLog.i(TAG, "Using Diagnosis Legacy", new Object[0]);
            this.mSubscribedObjectsPayloadComposer = new SubscribedObjectsPayloadComposerLegacy();
        }
        callback.onCompleted(new SubscribedObjectsPayloadComposerCreatedEvent(this, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    class OneShotReadWaiter {
        private ScheduledFuture<?> mScheduledFuture;
        private final Set<Long> mParametersToRead = new HashSet();
        private final Set<Long> mECUsToRead = new HashSet();
        private final ScheduledExecutorService mScheduler = Executors.newSingleThreadScheduledExecutor();

        OneShotReadWaiter() {
        }

        void connected() {
            resetAll();
        }

        void notConnected() {
            resetAll();
        }

        synchronized void onDTCsRead(Map<Long, Map<String, DTCDetail>> map) {
            if (!this.mECUsToRead.isEmpty()) {
                Iterator<Long> it = map.keySet().iterator();
                while (it.hasNext()) {
                    this.mECUsToRead.remove(it.next());
                }
                if (this.mECUsToRead.isEmpty()) {
                    resetTimeout();
                    SerialVehicle.this.setActiveSubscriptionCount(Integer.valueOf(Math.max(0, r3.getActiveSubscriptionCount().intValue() - 1)));
                    if (SerialVehicle.this.mReadCallback != null) {
                        SerialVehicle serialVehicle = SerialVehicle.this;
                        serialVehicle.terminateRead(serialVehicle, null);
                    }
                }
            }
        }

        synchronized void onParametersRead(List<DiaValueInfo> list) {
            synchronized (this.mParametersToRead) {
                if (!this.mParametersToRead.isEmpty()) {
                    Iterator<DiaValueInfo> it = list.iterator();
                    while (it.hasNext()) {
                        this.mParametersToRead.remove(Long.valueOf(it.next().getID()));
                    }
                    if (this.mParametersToRead.isEmpty()) {
                        resetTimeout();
                        SerialVehicle.this.setActiveSubscriptionCount(Integer.valueOf(Math.max(0, r6.getActiveSubscriptionCount().intValue() - 1)));
                        if (SerialVehicle.this.mReadCallback != null) {
                            SerialVehicle serialVehicle = SerialVehicle.this;
                            serialVehicle.terminateRead(serialVehicle, null);
                        }
                    }
                }
            }
        }

        synchronized void waitFor(int i, Set<Long> set, long j, TimeUnit timeUnit) {
            if (i == 0) {
                this.mParametersToRead.addAll(set);
            } else if (i == 1) {
                this.mECUsToRead.addAll(set);
            }
            this.mScheduledFuture = this.mScheduler.schedule(new Runnable() { // from class: com.texa.carelib.care.vehicle.internal.SerialVehicle$OneShotReadWaiter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.onTimeout();
                }
            }, j, timeUnit);
        }

        private void resetAll() {
            resetTimeout();
            this.mParametersToRead.clear();
            this.mECUsToRead.clear();
        }

        private void resetTimeout() {
            ScheduledFuture<?> scheduledFuture = this.mScheduledFuture;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
                this.mScheduledFuture = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onTimeout() {
            resetAll();
            SerialVehicle serialVehicle = SerialVehicle.this;
            serialVehicle.terminateRead(serialVehicle, new CareError.Builder(1, 4).setMessage(SerialVehicle.this.getProfile().getContext().getString(R.string.error_one_shot_read_timeout)).build());
        }
    }
}
