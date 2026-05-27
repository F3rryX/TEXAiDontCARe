package com.texa.carelib.profile.internal.diagnosisscheduler;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.LongSparseArray;
import com.texa.carelib.care.accessory.AccessoryDiagnosisMode;
import com.texa.carelib.care.accessory.AccessoryStatus;
import com.texa.carelib.care.vehicle.SubscriptionState;
import com.texa.carelib.care.vehicle.internal.DataIDFormatter;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.DongleNotConnectedException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.Utils;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.AvailableParameterUpdateCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.DiagnosisEngineReadCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.DiagnosisEngineSubscribeCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.DiagnosisEngineUnsubscribeCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.DiagnosisEngineUpdateSubscriptionCountersCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.ECUUpdateCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.SubscribedObjectsPayloadComposerCreatedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.SupportedParameterUpdateCompletedEvent;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class DiagnosisScheduler {
    private static final int MSG_ACCESSORY_DIAGNOSIS_MODE_CHANGED = 3;
    private static final int MSG_ACCESSORY_STATUS_CHANGED = 2;
    private static final int MSG_ACTION_COMPLETED = 11;
    private static final int MSG_AVAILABLE_PARAMETERS_CHANGED = 9;
    private static final int MSG_COMMUNICATION_STATUS_CHANGED = 1;
    private static final int MSG_ECU_CHANGED = 7;
    private static final int MSG_PEEK_NEXT_ACTION = 5;
    private static final int MSG_START = 4;
    private static final int MSG_SUBSCRIBED_OBJECT_PAYLOAD_COMPOSER = 6;
    private static final int MSG_SUBSCRIPTION_COUNTERS_UPDATED = 10;
    private static final int MSG_SUPPORTED_PARAMETERS_CHANGED = 8;
    private static final String TAG = "DiagnosisScheduler";
    private static DiagnosisScheduler _Instance;
    private int mAccessoryDiagnosisMode;
    private int mAccessoryStatus;
    private CommunicationStatus mCommunicationStatus;
    private DiagnosisSchedulerAction mCurrentAction;
    private Long mDTCSubscriptionInterval;
    private SubscriptionState mDTCSubscriptionState;
    private DiagnosisEngine mDiagnosticParameterEngine;
    private final Handler mHandler;
    private final HandlerThread mHandlerThread;
    private LongSparseArray<SubscriptionState> mParameterSubscriptionStates;
    private final LinkedList<DiagnosisSchedulerAction> mPendingActions;
    private State mState;
    private LongSparseArray<Long> mSubscriptionIntervals;

    private enum State {
        DongleNotConnected,
        DiagnosisNotReady,
        CreateSubscribedObjectsPayloadComposer,
        UpdateECUs,
        UpdateSupportedParameters,
        UpdateAvailableParameters,
        Idle,
        UpdateSubscriptionCount,
        PeekNextAction,
        RunAction
    }

    private boolean isDiagnosisReady(int i, int i2) {
        return (4 == i || 132 == i) && 1 == i2;
    }

    private void updateParameters() {
    }

    public static DiagnosisScheduler singletonInstance() {
        if (_Instance == null) {
            _Instance = new DiagnosisScheduler();
        }
        return _Instance;
    }

    DiagnosisScheduler() {
        HandlerThread handlerThread = new HandlerThread("DiagnosisSchedulerThread");
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mHandler = new Handler(handlerThread.getLooper(), new Handler.Callback() { // from class: com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisScheduler$$ExternalSyntheticLambda0
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f$0.handleMessage(message);
            }
        });
        this.mPendingActions = new LinkedList<>();
        this.mParameterSubscriptionStates = new LongSparseArray<>();
        this.mSubscriptionIntervals = new LongSparseArray<>();
        this.mCommunicationStatus = CommunicationStatus.IDLE;
        this.mDTCSubscriptionState = SubscriptionState.NotSubscribed;
        setState(State.DongleNotConnected);
    }

    public void attachDiagnosticParameterEngine(DiagnosisEngine diagnosisEngine) {
        this.mDiagnosticParameterEngine = diagnosisEngine;
    }

    public void notifyCommunicationStatusChanged(CommunicationStatus communicationStatus) {
        Handler handler = this.mHandler;
        handler.sendMessageAtFrontOfQueue(handler.obtainMessage(1, Integer.valueOf(communicationStatus.ordinal())));
    }

    public void setAccessoryStatus(int i) {
        Handler handler = this.mHandler;
        handler.sendMessageAtFrontOfQueue(handler.obtainMessage(2, Integer.valueOf(i)));
    }

    public void setAccessoryDiagnosisMode(int i) {
        Handler handler = this.mHandler;
        handler.sendMessageAtFrontOfQueue(handler.obtainMessage(3, Integer.valueOf(i)));
    }

    public void read(int i, Long... lArr) throws CareLibException {
        read(i, new HashSet(Arrays.asList(lArr)));
    }

    public void read(final int i, final Set<Long> set) throws CareLibException {
        if (State.DongleNotConnected == this.mState) {
            throw new DongleNotConnectedException();
        }
        this.mHandler.post(new Runnable() { // from class: com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisScheduler$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m745x7c31e99c(set, i);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$read$0$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler, reason: not valid java name */
    public /* synthetic */ void m745x7c31e99c(Set set, int i) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            Long l = (Long) it.next();
            enqueueAction(new DiagnosisSchedulerAction(DiagnosisSchedulerActionType.Read, i, Collections.singleton(l), this.mParameterSubscriptionStates.get(l.longValue(), SubscriptionState.NotSubscribed), this.mSubscriptionIntervals.get(l.longValue())));
        }
        if (State.Idle == this.mState) {
            sendMessage(this.mHandler, 4);
        }
    }

    public void subscribe(int i, Long l, Long... lArr) throws CareLibException {
        subscribe(i, l, new HashSet(Arrays.asList(lArr)));
    }

    public void subscribe(final int i, final Long l, final Set<Long> set) throws CareLibException {
        if (State.DongleNotConnected == this.mState) {
            throw new DongleNotConnectedException();
        }
        this.mHandler.post(new Runnable() { // from class: com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisScheduler$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m749xf7908c77(i, set, l);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$subscribe$1$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler, reason: not valid java name */
    public /* synthetic */ void m749xf7908c77(int i, Set set, Long l) {
        if (1 == i) {
            enqueueAction(new DiagnosisSchedulerAction(DiagnosisSchedulerActionType.Subscribe, 1, set, l, this.mDTCSubscriptionState, this.mDTCSubscriptionInterval));
        } else {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                Long l2 = (Long) it.next();
                enqueueAction(new DiagnosisSchedulerAction(DiagnosisSchedulerActionType.Subscribe, i, Collections.singleton(l2), l, this.mParameterSubscriptionStates.get(l2.longValue(), SubscriptionState.NotSubscribed), this.mSubscriptionIntervals.get(l2.longValue())));
            }
        }
        if (State.Idle == this.mState) {
            sendMessage(this.mHandler, 4);
        }
    }

    public void unsubscribe(int i, Long... lArr) throws CareLibException {
        unsubscribe(i, new HashSet(Arrays.asList(lArr)));
    }

    public void unsubscribe(final int i, final Set<Long> set) throws CareLibException {
        if (State.DongleNotConnected == this.mState) {
            throw new DongleNotConnectedException();
        }
        this.mHandler.post(new Runnable() { // from class: com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisScheduler$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m750x7c35af7f(set, i);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$unsubscribe$2$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler, reason: not valid java name */
    public /* synthetic */ void m750x7c35af7f(Set set, int i) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            Long l = (Long) it.next();
            enqueueAction(new DiagnosisSchedulerAction(DiagnosisSchedulerActionType.Unsubscribe, i, Collections.singleton(l), this.mParameterSubscriptionStates.get(l.longValue(), SubscriptionState.NotSubscribed), this.mSubscriptionIntervals.get(l.longValue())));
        }
        if (State.Idle == this.mState) {
            sendMessage(this.mHandler, 4);
        }
    }

    public SubscriptionState getSubscriptionState(Long l) {
        return this.mParameterSubscriptionStates.get(l.longValue(), SubscriptionState.NotSubscribed);
    }

    public Long getSubscriptionInterval(Long l) {
        return this.mSubscriptionIntervals.get(l.longValue());
    }

    public void setState(State state) {
        CareLog.d(TAG, "State: %1$s", state);
        this.mState = state;
    }

    public DiagnosisSchedulerAction getCurrentAction() {
        return this.mCurrentAction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.mCommunicationStatus = CommunicationStatus.values()[((Integer) message.obj).intValue()];
                CareLog.v(TAG, "handleMessage MSG_COMMUNICATION_STATUS_CHANGED %1$d %2$s", message.obj, this.mCommunicationStatus);
                if (CommunicationStatus.CONNECTED == this.mCommunicationStatus) {
                    this.mDTCSubscriptionInterval = null;
                    this.mDTCSubscriptionState = SubscriptionState.NotSubscribed;
                    this.mAccessoryDiagnosisMode = 0;
                    this.mAccessoryStatus = 255;
                    this.mParameterSubscriptionStates.clear();
                    this.mSubscriptionIntervals.clear();
                }
                onSchedulerStateChanged(this.mCommunicationStatus, this.mAccessoryStatus, this.mAccessoryDiagnosisMode);
                return true;
            case 2:
                this.mAccessoryStatus = ((Integer) message.obj).intValue();
                CareLog.v(TAG, "handleMessage MSG_ACCESSORY_STATUS_CHANGED %1$d %2$s", message.obj, AccessoryStatus.getName(this.mAccessoryStatus));
                onSchedulerStateChanged(this.mCommunicationStatus, this.mAccessoryStatus, this.mAccessoryDiagnosisMode);
                return true;
            case 3:
                this.mAccessoryDiagnosisMode = ((Integer) message.obj).intValue();
                CareLog.v(TAG, "handleMessage MSG_ACCESSORY_DIAGNOSIS_MODE_CHANGED %1$d %2$s", message.obj, AccessoryDiagnosisMode.getName(this.mAccessoryDiagnosisMode));
                onSchedulerStateChanged(this.mCommunicationStatus, this.mAccessoryStatus, this.mAccessoryDiagnosisMode);
                return true;
            case 4:
                CareLog.v(TAG, "handleMessage MSG_START", new Object[0]);
                onSchedulerStateChanged(this.mCommunicationStatus, this.mAccessoryStatus, this.mAccessoryDiagnosisMode);
                return true;
            case 5:
                CareLog.v(TAG, "handleMessage MSG_PEEK_NEXT_ACTION", new Object[0]);
                peekNextAction();
                return true;
            case 6:
                CareLog.v(TAG, "handleMessage MSG_SUBSCRIBED_OBJECT_PAYLOAD_COMPOSER", new Object[0]);
                onSchedulerStateChanged(this.mCommunicationStatus, this.mAccessoryStatus, this.mAccessoryDiagnosisMode);
                return true;
            case 7:
                CareLog.v(TAG, "handleMessage MSG_ECU_CHANGED", new Object[0]);
                onSchedulerStateChanged(this.mCommunicationStatus, this.mAccessoryStatus, this.mAccessoryDiagnosisMode);
                return true;
            case 8:
                CareLog.v(TAG, "handleMessage MSG_SUPPORTED_PARAMETERS_CHANGED", new Object[0]);
                onSchedulerStateChanged(this.mCommunicationStatus, this.mAccessoryStatus, this.mAccessoryDiagnosisMode);
                return true;
            case 9:
                CareLog.v(TAG, "handleMessage MSG_AVAILABLE_PARAMETERS_CHANGED", new Object[0]);
                onSchedulerStateChanged(this.mCommunicationStatus, this.mAccessoryStatus, this.mAccessoryDiagnosisMode);
                return true;
            case 10:
                CareLog.v(TAG, "handleMessage MSG_SUBSCRIPTION_COUNTERS_UPDATED", new Object[0]);
                onSchedulerStateChanged(this.mCommunicationStatus, this.mAccessoryStatus, this.mAccessoryDiagnosisMode);
                return true;
            case 11:
                CareLog.v(TAG, "handleMessage MSG_ACTION_COMPLETED", new Object[0]);
                updateSubscriptionCounters();
                return true;
            default:
                CareLog.v(TAG, "handleMessage %1%d", Integer.valueOf(message.what));
                return false;
        }
    }

    private boolean isConnected(CommunicationStatus communicationStatus) {
        return CommunicationStatus.CONNECTED == communicationStatus;
    }

    private void onSchedulerStateChanged(CommunicationStatus communicationStatus, int i, int i2) {
        if (isConnected(communicationStatus)) {
            if (isDiagnosisReady(i, i2)) {
                if (this.mState.ordinal() <= State.DiagnosisNotReady.ordinal()) {
                    createSubscribedObjectsPayloadComposer();
                    return;
                }
                if (this.mState == State.CreateSubscribedObjectsPayloadComposer) {
                    updateECUs();
                    return;
                }
                if (this.mState == State.UpdateECUs) {
                    updateSupportedParameters();
                    return;
                }
                if (this.mState == State.UpdateSupportedParameters) {
                    updateAvailableParameters();
                    return;
                }
                if (this.mState == State.UpdateAvailableParameters) {
                    updateSubscriptionCounters();
                    return;
                } else {
                    if (this.mState == State.UpdateSubscriptionCount || this.mState == State.Idle) {
                        peekNextAction();
                        return;
                    }
                    return;
                }
            }
            onDiagnosisNotReady();
            return;
        }
        onNotConnected();
    }

    private boolean isReadPending(DiagnosisSchedulerAction diagnosisSchedulerAction) {
        for (DiagnosisSchedulerAction diagnosisSchedulerAction2 : this.mPendingActions) {
            if (DiagnosisSchedulerActionType.Read == diagnosisSchedulerAction2.getAction() && diagnosisSchedulerAction.getObjectDataType() == diagnosisSchedulerAction2.getObjectDataType() && diagnosisSchedulerAction.getDataIDs().equals(diagnosisSchedulerAction2.getDataIDs())) {
                return true;
            }
        }
        return false;
    }

    private void removePendingSubscribeUnsubscribe(DiagnosisSchedulerAction diagnosisSchedulerAction) {
        Iterator<DiagnosisSchedulerAction> it = this.mPendingActions.iterator();
        while (it.hasNext()) {
            DiagnosisSchedulerAction next = it.next();
            int i = AnonymousClass1.$SwitchMap$com$texa$carelib$profile$internal$diagnosisscheduler$DiagnosisSchedulerActionType[next.getAction().ordinal()];
            if (i == 1 || i == 2) {
                if (diagnosisSchedulerAction.getDataIDs().equals(next.getDataIDs())) {
                    CareLog.w(TAG, "Applying pending action optimisation for: %1$s", next.toString());
                    it.remove();
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisScheduler$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$profile$internal$diagnosisscheduler$DiagnosisSchedulerActionType;

        static {
            int[] iArr = new int[DiagnosisSchedulerActionType.values().length];
            $SwitchMap$com$texa$carelib$profile$internal$diagnosisscheduler$DiagnosisSchedulerActionType = iArr;
            try {
                iArr[DiagnosisSchedulerActionType.Subscribe.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$profile$internal$diagnosisscheduler$DiagnosisSchedulerActionType[DiagnosisSchedulerActionType.Unsubscribe.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$profile$internal$diagnosisscheduler$DiagnosisSchedulerActionType[DiagnosisSchedulerActionType.Read.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private void enqueueAction(DiagnosisSchedulerAction diagnosisSchedulerAction) {
        String str = TAG;
        CareLog.v(str, "Enqueue action: %1$s", diagnosisSchedulerAction.toString());
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$profile$internal$diagnosisscheduler$DiagnosisSchedulerActionType[diagnosisSchedulerAction.getAction().ordinal()];
        if (i != 1 && i != 2) {
            if (i == 3) {
                if (isReadPending(diagnosisSchedulerAction)) {
                    CareLog.w(str, "Read Skipped because action is already in the queue. Action info: %1$s", diagnosisSchedulerAction.toString());
                    return;
                } else {
                    this.mPendingActions.addLast(diagnosisSchedulerAction);
                    return;
                }
            }
            throw new IllegalStateException("Diagnosis scheduler action not handled.");
        }
        removePendingSubscribeUnsubscribe(diagnosisSchedulerAction);
        this.mPendingActions.addLast(diagnosisSchedulerAction);
        if (DiagnosisSchedulerActionType.Subscribe == diagnosisSchedulerAction.getAction()) {
            if (diagnosisSchedulerAction.getObjectDataType() == 0) {
                Iterator<Long> it = diagnosisSchedulerAction.getDataIDs().iterator();
                while (it.hasNext()) {
                    setSubscriptionState(it.next(), SubscriptionState.SubscribePending, diagnosisSchedulerAction.getNewInterval(), null);
                }
                return;
            } else {
                if (1 == diagnosisSchedulerAction.getObjectDataType()) {
                    this.mDTCSubscriptionState = SubscriptionState.SubscribePending;
                    this.mDTCSubscriptionInterval = diagnosisSchedulerAction.getNewInterval();
                    return;
                }
                return;
            }
        }
        if (DiagnosisSchedulerActionType.Unsubscribe == diagnosisSchedulerAction.getAction()) {
            if (diagnosisSchedulerAction.getObjectDataType() == 0) {
                Iterator<Long> it2 = diagnosisSchedulerAction.getDataIDs().iterator();
                while (it2.hasNext()) {
                    setSubscriptionState(it2.next(), SubscriptionState.UnsubscribePending, null, null);
                }
            } else if (1 == diagnosisSchedulerAction.getObjectDataType()) {
                this.mDTCSubscriptionState = SubscriptionState.UnsubscribePending;
            }
        }
    }

    private void setSubscriptionState(Long l, SubscriptionState subscriptionState, Long l2, CareError careError) {
        this.mParameterSubscriptionStates.put(l.longValue(), subscriptionState);
        if (l2 != null) {
            this.mSubscriptionIntervals.put(l.longValue(), l2);
        } else {
            this.mSubscriptionIntervals.remove(l.longValue());
        }
        this.mDiagnosticParameterEngine.onSubscriptionStateChanged(l, subscriptionState, careError);
    }

    private void onNotConnected() {
        setState(State.DongleNotConnected);
        this.mCurrentAction = null;
        this.mPendingActions.clear();
        this.mParameterSubscriptionStates.clear();
        this.mSubscriptionIntervals.clear();
        this.mHandler.removeCallbacksAndMessages(null);
    }

    private void onDiagnosisNotReady() {
        setState(State.DiagnosisNotReady);
        DiagnosisSchedulerAction diagnosisSchedulerAction = this.mCurrentAction;
        if (diagnosisSchedulerAction != null) {
            this.mPendingActions.addFirst(diagnosisSchedulerAction);
        }
        this.mCurrentAction = null;
    }

    private void createSubscribedObjectsPayloadComposer() {
        setState(State.CreateSubscribedObjectsPayloadComposer);
        this.mDiagnosticParameterEngine.createSubscribedObjectsPayloadComposer(new Callback() { // from class: com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisScheduler$$ExternalSyntheticLambda6
            @Override // com.texa.carelib.core.Callback
            public final void onCompleted(Object obj) {
                this.f$0.m744x10f32c79((SubscribedObjectsPayloadComposerCreatedEvent) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$createSubscribedObjectsPayloadComposer$3$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler, reason: not valid java name */
    public /* synthetic */ void m744x10f32c79(SubscribedObjectsPayloadComposerCreatedEvent subscribedObjectsPayloadComposerCreatedEvent) {
        CareError error = subscribedObjectsPayloadComposerCreatedEvent.getError();
        if (error != null) {
            CareLog.e(TAG, error, "Could not create subscribe object payload composer.", new Object[0]);
        }
        sendMessage(this.mHandler, 6);
    }

    private void updateECUs() {
        setState(State.UpdateECUs);
        this.mDiagnosticParameterEngine.updateECUs(new Callback() { // from class: com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisScheduler$$ExternalSyntheticLambda5
            @Override // com.texa.carelib.core.Callback
            public final void onCompleted(Object obj) {
                this.f$0.m752x22680baf((ECUUpdateCompletedEvent) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$updateECUs$4$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler, reason: not valid java name */
    public /* synthetic */ void m752x22680baf(ECUUpdateCompletedEvent eCUUpdateCompletedEvent) {
        CareError error = eCUUpdateCompletedEvent.getError();
        if (error != null) {
            CareLog.e(TAG, error, "Could not update supported ECUs.", new Object[0]);
        }
        sendMessage(this.mHandler, 7);
    }

    private void updateSupportedParameters() {
        setState(State.UpdateSupportedParameters);
        this.mDiagnosticParameterEngine.updateSupportedParameters(new Callback() { // from class: com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisScheduler$$ExternalSyntheticLambda7
            @Override // com.texa.carelib.core.Callback
            public final void onCompleted(Object obj) {
                this.f$0.m754xc0fe54a0((SupportedParameterUpdateCompletedEvent) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$updateSupportedParameters$5$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler, reason: not valid java name */
    public /* synthetic */ void m754xc0fe54a0(SupportedParameterUpdateCompletedEvent supportedParameterUpdateCompletedEvent) {
        CareError error = supportedParameterUpdateCompletedEvent.getError();
        if (error != null) {
            CareLog.e(TAG, error, "Could not update supported parameters.", new Object[0]);
        }
        sendMessage(this.mHandler, 8);
    }

    private void updateAvailableParameters() {
        setState(State.UpdateAvailableParameters);
        this.mDiagnosticParameterEngine.updateAvailableParameters(new Callback() { // from class: com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisScheduler$$ExternalSyntheticLambda3
            @Override // com.texa.carelib.core.Callback
            public final void onCompleted(Object obj) {
                this.f$0.m751xd3c27e3c((AvailableParameterUpdateCompletedEvent) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$updateAvailableParameters$6$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler, reason: not valid java name */
    public /* synthetic */ void m751xd3c27e3c(AvailableParameterUpdateCompletedEvent availableParameterUpdateCompletedEvent) {
        CareError error = availableParameterUpdateCompletedEvent.getError();
        if (error != null) {
            CareLog.e(TAG, error, "Could not update available parameters.", new Object[0]);
        }
        sendMessage(this.mHandler, 9);
    }

    private void updateSubscriptionCounters() {
        setState(State.UpdateSubscriptionCount);
        this.mDiagnosticParameterEngine.updateSubscriptionCounters(new Callback() { // from class: com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisScheduler$$ExternalSyntheticLambda4
            @Override // com.texa.carelib.core.Callback
            public final void onCompleted(Object obj) {
                this.f$0.m753xff4b892a((DiagnosisEngineUpdateSubscriptionCountersCompletedEvent) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$updateSubscriptionCounters$7$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler, reason: not valid java name */
    public /* synthetic */ void m753xff4b892a(DiagnosisEngineUpdateSubscriptionCountersCompletedEvent diagnosisEngineUpdateSubscriptionCountersCompletedEvent) {
        CareError error = diagnosisEngineUpdateSubscriptionCountersCompletedEvent.getError();
        if (error != null) {
            CareLog.e(TAG, error, "Could not update subscription counters.", new Object[0]);
        }
        sendMessage(this.mHandler, 10);
    }

    private void peekNextAction() {
        setState(State.PeekNextAction);
        this.mCurrentAction = null;
        if (Utils.isEmpty(this.mPendingActions)) {
            idle();
            return;
        }
        DiagnosisSchedulerAction diagnosisSchedulerActionPoll = this.mPendingActions.poll();
        this.mCurrentAction = diagnosisSchedulerActionPoll;
        runAction(diagnosisSchedulerActionPoll);
    }

    private void idle() {
        setState(State.Idle);
    }

    private void runAction(DiagnosisSchedulerAction diagnosisSchedulerAction) {
        setState(State.RunAction);
        CareLog.v(TAG, "Running action: %1$s", diagnosisSchedulerAction.toString());
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$profile$internal$diagnosisscheduler$DiagnosisSchedulerActionType[diagnosisSchedulerAction.getAction().ordinal()];
        if (i == 1) {
            if (diagnosisSchedulerAction.getNewInterval() == null) {
                throw new IllegalStateException("Interval could not be null subscribe action.");
            }
            final int objectDataType = diagnosisSchedulerAction.getObjectDataType();
            final Set<Long> dataIDs = diagnosisSchedulerAction.getDataIDs();
            final Long newInterval = diagnosisSchedulerAction.getNewInterval();
            this.mDiagnosticParameterEngine.subscribe(objectDataType, newInterval, dataIDs, new Callback() { // from class: com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisScheduler$$ExternalSyntheticLambda8
                @Override // com.texa.carelib.core.Callback
                public final void onCompleted(Object obj) {
                    this.f$0.m748x12e97f16(objectDataType, newInterval, dataIDs, (DiagnosisEngineSubscribeCompletedEvent) obj);
                }
            });
            return;
        }
        if (i == 2) {
            final int objectDataType2 = diagnosisSchedulerAction.getObjectDataType();
            final Set<Long> dataIDs2 = diagnosisSchedulerAction.getDataIDs();
            this.mDiagnosticParameterEngine.unsubscribe(objectDataType2, dataIDs2, new Callback() { // from class: com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisScheduler$$ExternalSyntheticLambda10
                @Override // com.texa.carelib.core.Callback
                public final void onCompleted(Object obj) {
                    this.f$0.m746x6692943c(objectDataType2, dataIDs2, (DiagnosisEngineUnsubscribeCompletedEvent) obj);
                }
            });
        } else {
            if (i == 3) {
                final int objectDataType3 = diagnosisSchedulerAction.getObjectDataType();
                final Set<Long> dataIDs3 = diagnosisSchedulerAction.getDataIDs();
                this.mDiagnosticParameterEngine.read(objectDataType3, dataIDs3, new Callback() { // from class: com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisScheduler$$ExternalSyntheticLambda9
                    @Override // com.texa.carelib.core.Callback
                    public final void onCompleted(Object obj) {
                        this.f$0.m747x4bdd9815(objectDataType3, dataIDs3, (DiagnosisEngineReadCompletedEvent) obj);
                    }
                });
                return;
            }
            throw new IllegalStateException("Ooops, this state has not be handled!!!");
        }
    }

    /* JADX INFO: renamed from: lambda$runAction$8$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler, reason: not valid java name */
    public /* synthetic */ void m747x4bdd9815(int i, Set set, DiagnosisEngineReadCompletedEvent diagnosisEngineReadCompletedEvent) {
        CareError error = diagnosisEngineReadCompletedEvent.getError();
        if (error == null) {
            CareLog.v(TAG, "Read completed: ObjectDataType: %1$d DataIDs: %2$s", Integer.valueOf(i), DataIDFormatter.toString(set));
        } else {
            CareLog.e(TAG, error, "Read error: ObjectDataType: %1$d DataIDs: %2$s", Integer.valueOf(i), DataIDFormatter.toString(set));
        }
        sendMessage(this.mHandler, 11);
    }

    /* JADX INFO: renamed from: lambda$runAction$9$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler, reason: not valid java name */
    public /* synthetic */ void m748x12e97f16(int i, Long l, Set set, DiagnosisEngineSubscribeCompletedEvent diagnosisEngineSubscribeCompletedEvent) {
        CareError error = diagnosisEngineSubscribeCompletedEvent.getError();
        if (error == null) {
            CareLog.v(TAG, "Subscribe completed: ObjectDataType: %1$d Interval: %2$d DataIDs: %3$s", Integer.valueOf(i), l, DataIDFormatter.toString(set));
            if (i == 0) {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    setSubscriptionState((Long) it.next(), SubscriptionState.Subscribed, l, error);
                }
            } else if (1 == i) {
                this.mDTCSubscriptionState = SubscriptionState.Subscribed;
                this.mDTCSubscriptionInterval = this.mCurrentAction.getNewInterval();
            }
        } else {
            CareLog.e(TAG, error, "Subscribe error: ObjectDataType: %1$d Interval: %2$d DataIDs: %3$s", Integer.valueOf(i), l, DataIDFormatter.toString(set));
            if (i == 0) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    setSubscriptionState((Long) it2.next(), this.mCurrentAction.getOldSubscriptionState(), this.mCurrentAction.getOldInterval(), error);
                }
            } else if (1 == i) {
                this.mDTCSubscriptionState = this.mCurrentAction.getOldSubscriptionState();
                this.mDTCSubscriptionInterval = this.mCurrentAction.getOldInterval();
            }
        }
        sendMessage(this.mHandler, 11);
    }

    /* JADX INFO: renamed from: lambda$runAction$10$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler, reason: not valid java name */
    public /* synthetic */ void m746x6692943c(int i, Set set, DiagnosisEngineUnsubscribeCompletedEvent diagnosisEngineUnsubscribeCompletedEvent) {
        CareError error = diagnosisEngineUnsubscribeCompletedEvent.getError();
        if (error == null) {
            CareLog.v(TAG, "Unsubscribe completed: ObjectDataType: %1$d DataIDs: %2$s", Integer.valueOf(i), DataIDFormatter.toString(set));
            if (i == 0) {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    Long l = (Long) it.next();
                    this.mParameterSubscriptionStates.remove(l.longValue());
                    this.mSubscriptionIntervals.remove(l.longValue());
                }
            } else if (1 == i) {
                this.mDTCSubscriptionState = SubscriptionState.NotSubscribed;
                this.mDTCSubscriptionInterval = null;
            }
        } else {
            CareLog.e(TAG, error, "Unsubscribe error: ObjectDataType: %1$d DataIDs: %2$s", Integer.valueOf(i), DataIDFormatter.toString(set));
            if (i == 0) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    setSubscriptionState((Long) it2.next(), this.mCurrentAction.getOldSubscriptionState(), this.mCurrentAction.getOldInterval(), error);
                }
            } else if (1 == i) {
                this.mDTCSubscriptionState = this.mCurrentAction.getOldSubscriptionState();
                this.mDTCSubscriptionInterval = this.mCurrentAction.getOldInterval();
            }
        }
        sendMessage(this.mHandler, 11);
    }

    private void sendMessage(Handler handler, int i) {
        handler.removeMessages(i);
        handler.sendMessage(handler.obtainMessage(i));
    }
}
