package com.texa.carelib.care.attitude.internal;

import com.google.android.gms.search.SearchAuth;
import com.texa.carelib.care.attitude.AttitudeEstimationStatus;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.DongleNotConnectedException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public class MockAttitude extends AttitudeBase {
    private static final String TAG = "MockAttitude";
    private final int TIME_TO_VALIDATE_DYNAMIC_ORIENTATION_MATRIX;
    private final int TIME_TO_VALIDATE_STATIC_ORIENTATION_MATRIX;
    private Thread mCalibrateOrientationMatrixThread;
    private Thread mInitCalibrationThread;
    private final Profile mProfile;

    public MockAttitude(Profile profile, FeatureVerifier featureVerifier) {
        super(featureVerifier);
        this.TIME_TO_VALIDATE_STATIC_ORIENTATION_MATRIX = SearchAuth.StatusCodes.AUTH_DISABLED;
        this.TIME_TO_VALIDATE_DYNAMIC_ORIENTATION_MATRIX = 15000;
        this.mProfile = profile;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public Profile getProfile() {
        return this.mProfile;
    }

    @Override // com.texa.carelib.care.attitude.Attitude
    public void beginEstimation() throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (isMatrixOrientationCalibrationInProgress()) {
            throw new CareLibException("Attitude estimation is already in progress.");
        }
        Thread thread = new Thread(new Runnable() { // from class: com.texa.carelib.care.attitude.internal.MockAttitude$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m678x74945e7e();
            }
        }, "Thread_beginOrientationProcedure");
        this.mCalibrateOrientationMatrixThread = thread;
        thread.setPriority(1);
        this.mCalibrateOrientationMatrixThread.start();
    }

    /* JADX INFO: renamed from: lambda$beginEstimation$0$com-texa-carelib-care-attitude-internal-MockAttitude, reason: not valid java name */
    public /* synthetic */ void m678x74945e7e() {
        setAttitudeEstimationStatus(AttitudeEstimationStatus.Z_InProgress);
        try {
            Thread.sleep(10000L);
        } catch (InterruptedException unused) {
        }
        if (new Random(System.currentTimeMillis()).nextBoolean()) {
            setAttitudeEstimationStatus(AttitudeEstimationStatus.PlaneInProgress);
            try {
                Thread.sleep(15000L);
            } catch (InterruptedException unused2) {
            }
            setAttitudeEstimationStatus(AttitudeEstimationStatus.Complete);
            return;
        }
        setAttitudeEstimationStatus(AttitudeEstimationStatus.Z_Aborted);
    }

    @Override // com.texa.carelib.care.attitude.Attitude
    public void loadAttitudeInfo() throws CareLibException {
        throw new CareLibException("Not yet implemented");
    }

    @Override // com.texa.carelib.care.attitude.internal.AttitudeBase, com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        String str = TAG;
        CareLog.d(str, "onCommunicationStatusChanged(%s)", communicationStatusChangedEvent.getCommunicationStatus());
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communicationStatusChangedEvent.getCommunicationStatus().ordinal()];
        if (i == 1) {
            Thread thread = new Thread(new Runnable() { // from class: com.texa.carelib.care.attitude.internal.MockAttitude$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m679x2016dd8c();
                }
            }, str + "_ThreadCheckCalibrationStatus");
            this.mInitCalibrationThread = thread;
            thread.setPriority(1);
            this.mInitCalibrationThread.start();
        } else if (i == 2 || i == 3 || i == 4 || i == 5) {
            if (this.mInitCalibrationThread.isAlive()) {
                this.mInitCalibrationThread.interrupt();
            }
            this.mInitCalibrationThread = null;
            setAttitudeEstimationStatus(AttitudeEstimationStatus.Undefined);
        }
        super.onCommunicationStatusChanged(communicationStatusChangedEvent);
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.attitude.internal.MockAttitude$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
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

    /* JADX INFO: renamed from: lambda$onCommunicationStatusChanged$1$com-texa-carelib-care-attitude-internal-MockAttitude, reason: not valid java name */
    public /* synthetic */ void m679x2016dd8c() {
        try {
            Thread.sleep(500L);
        } catch (InterruptedException unused) {
        }
        if (Thread.currentThread().isInterrupted()) {
            CareLog.d(TAG, Thread.currentThread().getName() + " has been interrupted.", new Object[0]);
            return;
        }
        setAttitudeEstimationStatus(AttitudeEstimationStatus.Init);
        try {
            Thread.sleep(5000L);
        } catch (InterruptedException unused2) {
        }
        if (Thread.currentThread().isInterrupted()) {
            CareLog.d(TAG, Thread.currentThread().getName() + " has been interrupted.", new Object[0]);
            return;
        }
        setAttitudeEstimationStatus(AttitudeEstimationStatus.EstimationError);
        CareLog.d(TAG, Thread.currentThread().getName() + " has completed.", new Object[0]);
    }

    private boolean isMatrixOrientationCalibrationInProgress() {
        Thread thread = this.mCalibrateOrientationMatrixThread;
        return thread != null && thread.isAlive();
    }
}
