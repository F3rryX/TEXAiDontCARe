package com.texa.carelib.care.logger.internal;

import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.logger.CareLogger;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.DongleNotConnectedException;
import com.texa.carelib.core.OperationAlreadyRunningException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.ReentrantLockWrapper;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.profile.internal.SerialProfileMessageReceiver;
import com.texa.carelib.profile.internal.SerialProfileProxy;
import java.io.OutputStream;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class SerialCareLogger extends ProfileSubModule implements CareLogger, SerialProfileMessageReceiver {
    private static final String TAG = "SerialCareLogger";
    private final FeatureVerifier mFeatureVerifier;
    private OutputStream mOutputStream;
    private final ReentrantLockWrapper mOutputStreamLock;
    private final Profile mProfile;
    private ScheduledFuture<?> mScheduleFutureLogEvents;
    private ScheduledExecutorService mScheduler;
    private final SerialProfileProxy mSerialProfileProxy;

    public SerialCareLogger(Profile profile, FeatureVerifier featureVerifier) {
        this.mProfile = profile;
        this.mFeatureVerifier = featureVerifier;
        if (profile instanceof SerialProfileProxy) {
            this.mSerialProfileProxy = (SerialProfileProxy) profile;
        } else {
            this.mSerialProfileProxy = null;
        }
        this.mOutputStreamLock = new ReentrantLockWrapper(TAG, "OutputStreamLock");
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public Profile getProfile() {
        return this.mProfile;
    }

    @Override // com.texa.carelib.care.logger.CareLogger
    public void beginLogUpdate(OutputStream outputStream) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        this.mOutputStreamLock.lock("beginLogUpdate");
        try {
            if (this.mOutputStream != null) {
                throw new OperationAlreadyRunningException();
            }
            this.mOutputStream = outputStream;
            this.mOutputStreamLock.unlock("beginLogUpdate");
            sendGetLogRequest();
        } catch (Throwable th) {
            this.mOutputStreamLock.unlock("beginLogUpdate");
            throw th;
        }
    }

    @Override // com.texa.carelib.care.logger.CareLogger
    public void endLogUpdate() {
        this.mOutputStreamLock.lock("endLogUpdate");
        try {
            this.mOutputStream = null;
            this.mOutputStreamLock.unlock("endLogUpdate");
            ScheduledFuture<?> scheduledFuture = this.mScheduleFutureLogEvents;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            this.mScheduleFutureLogEvents.cancel(true);
        } catch (Throwable th) {
            this.mOutputStreamLock.unlock("endLogUpdate");
            throw th;
        }
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.logger.internal.SerialCareLogger$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$CommunicationStatus;

        static {
            int[] iArr = new int[CommunicationStatus.values().length];
            $SwitchMap$com$texa$carelib$communication$CommunicationStatus = iArr;
            try {
                iArr[CommunicationStatus.CONNECTION_LOST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NOT_SUPPORTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NO_MEDIUM_ACTIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.DISCONNECTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communicationStatusChangedEvent.getCommunicationStatus().ordinal()];
        if (i == 1 || i == 2 || i == 3 || i == 4) {
            endLogUpdate();
        }
    }

    @Override // com.texa.carelib.profile.ProfileSubModule, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
        if (118 == message.getCommandID()) {
            onCommandGetLogReceived(message, careError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendGetLogRequest() {
        sendMessage(new Message.Builder().setCommandID(118).build());
    }

    private void onCommandGetLogReceived(Message message, CareError careError) {
        ScheduledFuture<?> scheduledFuture;
        ScheduledExecutorService scheduler;
        Runnable runnable;
        ScheduledFuture<?> scheduledFuture2;
        ScheduledFuture<?> scheduledFuture3;
        if (careError == null) {
            this.mOutputStreamLock.lock("beginLogUpdate");
            try {
                try {
                    if (this.mOutputStream != null && message.getData() != null && message.getData() != null && message.getData().length > 0) {
                        this.mOutputStream.write(message.getData());
                        this.mOutputStream.flush();
                    }
                } catch (Exception e) {
                    CareLog.e(TAG, e, "Could not forward ", new Object[0]);
                    if (this.mOutputStream != null && ((scheduledFuture = this.mScheduleFutureLogEvents) == null || !scheduledFuture.isCancelled())) {
                        scheduler = getScheduler();
                        runnable = new Runnable() { // from class: com.texa.carelib.care.logger.internal.SerialCareLogger$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.sendGetLogRequest();
                            }
                        };
                    }
                }
                if (this.mOutputStream != null && ((scheduledFuture3 = this.mScheduleFutureLogEvents) == null || !scheduledFuture3.isCancelled())) {
                    scheduler = getScheduler();
                    runnable = new Runnable() { // from class: com.texa.carelib.care.logger.internal.SerialCareLogger$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.sendGetLogRequest();
                        }
                    };
                    this.mScheduleFutureLogEvents = scheduler.schedule(runnable, 2000L, TimeUnit.MILLISECONDS);
                }
                this.mOutputStreamLock.unlock("beginLogUpdate");
            } catch (Throwable th) {
                if (this.mOutputStream != null && ((scheduledFuture2 = this.mScheduleFutureLogEvents) == null || !scheduledFuture2.isCancelled())) {
                    this.mScheduleFutureLogEvents = getScheduler().schedule(new Runnable() { // from class: com.texa.carelib.care.logger.internal.SerialCareLogger$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.sendGetLogRequest();
                        }
                    }, 2000L, TimeUnit.MILLISECONDS);
                }
                this.mOutputStreamLock.unlock("beginLogUpdate");
                throw th;
            }
        }
    }

    private ScheduledExecutorService getScheduler() {
        if (this.mScheduler == null) {
            this.mScheduler = Executors.newScheduledThreadPool(Runtime.getRuntime().availableProcessors());
        }
        return this.mScheduler;
    }

    private void sendMessage(Message message) {
        SerialProfileProxy serialProfileProxy = this.mSerialProfileProxy;
        if (serialProfileProxy != null) {
            serialProfileProxy.sendMessage(message);
        }
    }

    private FeatureVerifier getFeatureVerifier() {
        return this.mFeatureVerifier;
    }
}
