package com.texa.carelib.profile.internal;

import android.content.Context;
import com.texa.carelib.care.profile.CareProxyProtectionSessionCompletedEvent;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.ReentrantLockWrapper;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.R;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.profile.internal.parser.GetSerialNumberPacketParser;
import com.texa.carelib.webservices.ServiceProxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class SerialProtectionProcedure extends ProfileSubModule implements SerialProfileMessageReceiver {
    public static final String TAG = "SerialProtectionProcedure";
    private final List<Callback<CareProxyProtectionSessionCompletedEvent>> mCallbacks;
    private final ReentrantLockWrapper mCallbacksLock;
    private final SerialProfile mProfile;
    private SerialProtectionProcedureStatus mProtectionStatus;
    private final ReentrantLockWrapper mProtectionStatusLock;
    private String mSerialNumber;

    private void handleGetStatusCommand(Message message, CareError careError) {
    }

    SerialProtectionProcedure(SerialProfile serialProfile) {
        String str = TAG;
        ReentrantLockWrapper reentrantLockWrapper = new ReentrantLockWrapper(str, "mProtectionStatusLock");
        this.mProtectionStatusLock = reentrantLockWrapper;
        ReentrantLockWrapper reentrantLockWrapper2 = new ReentrantLockWrapper(str, "mCallbacksLock");
        this.mCallbacksLock = reentrantLockWrapper2;
        this.mProfile = serialProfile;
        reentrantLockWrapper2.lock("ctor");
        try {
            this.mCallbacks = new ArrayList();
            reentrantLockWrapper2.unlock("ctor");
            reentrantLockWrapper.lock("ctor");
            try {
                this.mProtectionStatus = null;
                reentrantLockWrapper.unlock("ctor");
            } catch (Throwable th) {
                this.mProtectionStatusLock.unlock("ctor");
                throw th;
            }
        } catch (Throwable th2) {
            this.mCallbacksLock.unlock("ctor");
            throw th2;
        }
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public Profile getProfile() {
        return this.mProfile;
    }

    public Context getContext() {
        if (getProfile().getProfileDelegate() == null) {
            throw new IllegalStateException("profile delegate not set.");
        }
        return getProfile().getProfileDelegate().getApplicationContext();
    }

    ServiceProxy getServiceProxy() {
        return this.mProfile.getServiceProxy();
    }

    @Override // com.texa.carelib.profile.ProfileSubModule, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
        int commandID = message.getCommandID();
        if (commandID == 230) {
            handleGetStatusCommand(message, careError);
        } else if (commandID == 238) {
            handleGetSerialNumberCommand(message, careError);
        }
        SerialProtectionProcedureStatus serialProtectionProcedureStatus = this.mProtectionStatus;
        if (serialProtectionProcedureStatus != null) {
            serialProtectionProcedureStatus.onMessageReceived(obj, message, careError);
        }
    }

    public void setStatus(SerialProtectionProcedureStatus serialProtectionProcedureStatus) {
        this.mProtectionStatusLock.lock("setStatus");
        try {
            SerialProtectionProcedureStatus serialProtectionProcedureStatus2 = this.mProtectionStatus;
            this.mProtectionStatus = serialProtectionProcedureStatus;
            if (serialProtectionProcedureStatus2 != null) {
                serialProtectionProcedureStatus2.release();
            }
            if (serialProtectionProcedureStatus != null) {
                serialProtectionProcedureStatus.init();
            }
        } finally {
            this.mProtectionStatusLock.unlock("setStatus");
        }
    }

    public void sendMessage(Message message) {
        this.mProfile.sendMessage(message, false);
    }

    boolean beginProtection(Callback<CareProxyProtectionSessionCompletedEvent> callback) {
        String str = TAG;
        CareLog.d(str, "beginProtection for %s", this.mSerialNumber);
        if (StringUtils.isNullOrEmpty(this.mSerialNumber)) {
            CareLog.e(str, "Could not open session with a null hardware ID.", new Object[0]);
            return false;
        }
        this.mCallbacksLock.lock("beginProtection");
        try {
            this.mCallbacks.add(callback);
            this.mCallbacksLock.unlock("beginProtection");
            if (isRunning()) {
                CareLog.w(str, "CARe protection procedure is already running...", new Object[0]);
                return true;
            }
            setStatus(new SerialProtectionProcedureStatusBeginSession(this, this.mSerialNumber));
            return true;
        } catch (Throwable th) {
            this.mCallbacksLock.unlock("beginProtection");
            throw th;
        }
    }

    private boolean isRunning() {
        this.mProtectionStatusLock.lock("isRunning");
        try {
            return this.mProtectionStatus != null;
        } finally {
            this.mProtectionStatusLock.unlock("isRunning");
        }
    }

    void terminate(CareError careError) {
        CareLog.d(TAG, "Terminating protection procedure.", new Object[0]);
        setStatus(null);
        fireEventProtectionSessionCompleted(careError);
        this.mCallbacksLock.lock("terminate");
        try {
            this.mCallbacks.clear();
        } finally {
            this.mCallbacksLock.unlock("terminate");
        }
    }

    private void fireEventProtectionSessionCompleted(CareError careError) {
        this.mCallbacksLock.lock("fireEventProtectionSessionCompleted");
        try {
            ArrayList arrayList = new ArrayList(this.mCallbacks);
            this.mCallbacksLock.unlock("fireEventProtectionSessionCompleted");
            CareProxyProtectionSessionCompletedEvent careProxyProtectionSessionCompletedEvent = new CareProxyProtectionSessionCompletedEvent(this, careError);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((Callback) it.next()).onCompleted(careProxyProtectionSessionCompletedEvent);
            }
        } catch (Throwable th) {
            this.mCallbacksLock.unlock("fireEventProtectionSessionCompleted");
            throw th;
        }
    }

    private void handleGetSerialNumberCommand(Message message, CareError careError) {
        if (careError == null) {
            CareLog.v(TAG, "handleGetSerialNumberCommand", new Object[0]);
            this.mSerialNumber = GetSerialNumberPacketParser.parse(message);
        } else {
            CareLog.e(TAG, "handleGetSerialNumberCommand error: %s", careError);
        }
    }

    /* JADX INFO: renamed from: com.texa.carelib.profile.internal.SerialProtectionProcedure$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$CommunicationStatus;

        static {
            int[] iArr = new int[CommunicationStatus.values().length];
            $SwitchMap$com$texa$carelib$communication$CommunicationStatus = iArr;
            try {
                iArr[CommunicationStatus.DISCONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.CONNECTION_LOST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NOT_SUPPORTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NO_MEDIUM_ACTIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communicationStatusChangedEvent.getCommunicationStatus().ordinal()];
        if (i == 1 || i == 2 || i == 3 || i == 4) {
            CareLog.v(TAG, "Not connected!!", new Object[0]);
            this.mSerialNumber = null;
            if (isRunning()) {
                terminate(new CareError.Builder(1, 19).setMessage(getContext().getString(R.string.error_connection_lost)).build());
            }
        }
    }
}
