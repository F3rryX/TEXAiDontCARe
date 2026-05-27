package com.texa.carelib.care.impacts.internal;

import android.util.Base64;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.impacts.CrashReport;
import com.texa.carelib.care.impacts.Impact;
import com.texa.carelib.care.impacts.ImpactDataDownloadListener;
import com.texa.carelib.care.impacts.ImpactDetection;
import com.texa.carelib.care.impacts.events.ImpactDataDownloadCompletedEvent;
import com.texa.carelib.care.impacts.events.ImpactDataDownloadProgressChangedEvent;
import com.texa.carelib.care.impacts.events.ImpactDataErasedEvent;
import com.texa.carelib.care.impacts.events.ImpactDetectedEvent;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.DongleNotConnectedException;
import com.texa.carelib.core.OperationAlreadyRunningException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.ConversionUtils;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class MockImpactDetection extends ImpactDetectionBase {
    private static final boolean DEFAULT_CRASH_ONE_SHOT = true;
    private static final int DEFAULT_CRASH_PERIOD = 60000;
    private static final String ENCODING_ISO_8859_1 = "ISO-8859-1";
    public static final String TAG = "MockImpactDetection";
    private Callback<ImpactDataErasedEvent> mEraseImpactsCallback;
    private List<Impact> mTempImpacts;
    private Thread mThreadLoadImpacts;
    private Timer mTimer;

    public MockImpactDetection(Profile profile, FeatureVerifier featureVerifier) {
        super(profile, featureVerifier);
        this.mTempImpacts = new ArrayList();
    }

    protected void finalize() throws Throwable {
        stopTimer();
        super.finalize();
    }

    @Override // com.texa.carelib.care.impacts.internal.ImpactDetectionBase, com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        CareLog.d(TAG, "onCommunicationStatusChanged(%s)", communicationStatusChangedEvent.getCommunicationStatus());
        int i = AnonymousClass2.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communicationStatusChangedEvent.getCommunicationStatus().ordinal()];
        if (i == 1) {
            startTimer();
        } else if (i == 2 || i == 3 || i == 4 || i == 5) {
            stopTimer();
        }
        super.onCommunicationStatusChanged(communicationStatusChangedEvent);
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.impacts.internal.MockImpactDetection$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$CommunicationStatus;

        static {
            int[] iArr = new int[CommunicationStatus.values().length];
            $SwitchMap$com$texa$carelib$communication$CommunicationStatus = iArr;
            try {
                iArr[CommunicationStatus.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.CONNECTION_LOST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.DISCONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NO_MEDIUM_ACTIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NOT_SUPPORTED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CrashReport createFakeCrashReport(Date date) {
        char[] cArrArray = Charset.forName("ISO-8859-1").decode(ByteBuffer.wrap(Base64.decode("AekYAAIHAAHmyhtWAQDEEgEAAAAAAAAQ", 0))).array();
        cArrArray[8] = (char) (date.getTime() & 255);
        cArrArray[9] = (char) ((date.getTime() & 65280) >> 8);
        cArrArray[10] = (char) ((date.getTime() & 16711680) >> 16);
        cArrArray[11] = (char) ((date.getTime() & (-16777216)) >> 24);
        return new CrashReportFactory().create(ConversionUtils.toByteArray(cArrArray));
    }

    private void startTimer() {
        if (this.mTimer == null) {
            boolean z = getArguments().getBoolean(ImpactDetection.EXTRA_CRASH_ONE_SHOT, true);
            int i = getArguments().getInt(ImpactDetection.EXTRA_CRASH_PERIOD, 60000);
            TimerTask timerTask = new TimerTask() { // from class: com.texa.carelib.care.impacts.internal.MockImpactDetection.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    Impact impact = new Impact();
                    impact.setCrashReport(MockImpactDetection.this.createFakeCrashReport(impact.getDate()));
                    MockImpactDetection.this.setLastImpact(impact);
                    MockImpactDetection.this.fireCrashDetected(new ImpactDetectedEvent(this, impact));
                }
            };
            if (i > 0) {
                Timer timer = new Timer("Timer_MockCrash", true);
                this.mTimer = timer;
                if (z) {
                    timer.schedule(timerTask, i);
                } else {
                    long j = i;
                    timer.scheduleAtFixedRate(timerTask, j, j);
                }
            }
        }
    }

    private void stopTimer() {
        Timer timer = this.mTimer;
        if (timer != null) {
            timer.cancel();
            this.mTimer.purge();
            this.mTimer = null;
        }
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetection
    public void eraseImpacts(final Callback<ImpactDataErasedEvent> callback) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (this.mEraseImpactsCallback != null) {
            throw new OperationAlreadyRunningException();
        }
        this.mEraseImpactsCallback = callback;
        Thread thread = new Thread(new Runnable() { // from class: com.texa.carelib.care.impacts.internal.MockImpactDetection$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m706x56708d75(callback);
            }
        }, "Thread_eraseImpacts");
        thread.setPriority(1);
        thread.start();
    }

    /* JADX INFO: renamed from: lambda$eraseImpacts$0$com-texa-carelib-care-impacts-internal-MockImpactDetection, reason: not valid java name */
    public /* synthetic */ void m706x56708d75(Callback callback) {
        try {
            Thread.sleep(500L);
        } catch (InterruptedException unused) {
        }
        clearImpacts();
        clearAccelerationEvents();
        clearAccelerationEventsLPM();
        this.mTempImpacts.clear();
        if (callback != null) {
            this.mEraseImpactsCallback = null;
            callback.onCompleted(new ImpactDataErasedEvent(this, null));
        }
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetection
    public void loadImpacts(final ImpactDataDownloadListener impactDataDownloadListener) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        Thread thread = this.mThreadLoadImpacts;
        if (thread != null && thread.isAlive()) {
            throw new OperationAlreadyRunningException();
        }
        Thread thread2 = new Thread(new Runnable() { // from class: com.texa.carelib.care.impacts.internal.MockImpactDetection$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m708x2ca3c3ee(impactDataDownloadListener);
            }
        }, "Thread_loadCrashReport");
        this.mThreadLoadImpacts = thread2;
        thread2.setPriority(1);
        this.mThreadLoadImpacts.start();
    }

    /* JADX INFO: renamed from: lambda$loadImpacts$1$com-texa-carelib-care-impacts-internal-MockImpactDetection, reason: not valid java name */
    public /* synthetic */ void m708x2ca3c3ee(ImpactDataDownloadListener impactDataDownloadListener) {
        for (int i = 0; i < 100; i++) {
            try {
                impactDataDownloadListener.onImpactDataDownloadProgressChanged(new ImpactDataDownloadProgressChangedEvent(this, i));
                Thread.sleep(50L);
            } catch (InterruptedException unused) {
            }
        }
        addImpacts(this.mTempImpacts);
        impactDataDownloadListener.onImpactDataDownloadCompleted(new ImpactDataDownloadCompletedEvent(this, getImpacts(), getAccelerationEvents(), null));
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetectionConfiguration
    public boolean loadCrashConfigurationValues() {
        String str = TAG;
        CareLog.v(str, "loadCrashConfigurationValues", new Object[0]);
        Thread thread = new Thread(new Runnable() { // from class: com.texa.carelib.care.impacts.internal.MockImpactDetection$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m707x29393503();
            }
        }, str + "_loadConfigurationValues");
        thread.setPriority(1);
        thread.start();
        return true;
    }

    /* JADX INFO: renamed from: lambda$loadCrashConfigurationValues$2$com-texa-carelib-care-impacts-internal-MockImpactDetection, reason: not valid java name */
    public /* synthetic */ void m707x29393503() {
        try {
            Thread.sleep(500L);
        } catch (InterruptedException unused) {
            CareLog.e(TAG, "Could not wait..", new Object[0]);
        }
        super.setAccelerationThreshold(Float.valueOf(1.25f));
        super.setSpeedTimeout(Float.valueOf(5.0f));
        super.setTimeOverThreshold(Float.valueOf(25.0f));
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetection
    public boolean isReadingImpactData() {
        Thread thread = this.mThreadLoadImpacts;
        return thread != null && thread.isAlive();
    }
}
