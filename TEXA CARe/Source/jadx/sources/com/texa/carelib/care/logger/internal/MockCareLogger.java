package com.texa.carelib.care.logger.internal;

import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.logger.CareLogger;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.DongleNotConnectedException;
import com.texa.carelib.core.OperationAlreadyRunningException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Date;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class MockCareLogger extends ProfileSubModule implements CareLogger {
    private static final String TAG = "MockCareLogger";
    private final FeatureVerifier mFeatureVerifier;
    private OutputStream mOutputStream;
    private final Profile mProfile;
    private ScheduledFuture<?> mScheduleFutureLogEvents;
    private ScheduledExecutorService mScheduler;

    public MockCareLogger(Profile profile, FeatureVerifier featureVerifier) {
        this.mProfile = profile;
        this.mFeatureVerifier = featureVerifier;
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
        if (this.mOutputStream != null) {
            throw new OperationAlreadyRunningException();
        }
        this.mOutputStream = outputStream;
        this.mScheduleFutureLogEvents = getScheduler().scheduleAtFixedRate(new Runnable() { // from class: com.texa.carelib.care.logger.internal.MockCareLogger$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.generateLog();
            }
        }, 100L, 2000L, TimeUnit.MILLISECONDS);
    }

    @Override // com.texa.carelib.care.logger.CareLogger
    public void endLogUpdate() {
        this.mOutputStream = null;
        ScheduledFuture<?> scheduledFuture = this.mScheduleFutureLogEvents;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.mScheduleFutureLogEvents = null;
        }
        releaseScheduler();
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.logger.internal.MockCareLogger$1, reason: invalid class name */
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

    /* JADX INFO: Access modifiers changed from: private */
    public void generateLog() {
        if (this.mOutputStream != null) {
            try {
                this.mOutputStream.write(("Log event at " + new Date().toString()).getBytes());
                this.mOutputStream.flush();
            } catch (IOException e) {
                CareLog.e(TAG, e, "Could not write the CARe log.", new Object[0]);
            }
        }
    }

    private ScheduledExecutorService getScheduler() {
        if (this.mScheduler == null) {
            this.mScheduler = Executors.newScheduledThreadPool(Runtime.getRuntime().availableProcessors());
        }
        return this.mScheduler;
    }

    private void releaseScheduler() {
        ScheduledExecutorService scheduledExecutorService = this.mScheduler;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
            this.mScheduler = null;
        }
    }

    private FeatureVerifier getFeatureVerifier() {
        return this.mFeatureVerifier;
    }
}
