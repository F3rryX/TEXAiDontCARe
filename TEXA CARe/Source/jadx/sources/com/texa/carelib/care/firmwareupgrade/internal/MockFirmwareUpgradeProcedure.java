package com.texa.carelib.care.firmwareupgrade.internal;

import com.texa.carelib.care.accessory.internal.MockAccessory;
import com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure;
import com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedureListener;
import com.texa.carelib.care.firmwareupgrade.events.FirmwareUpgradeCompletedEvent;
import com.texa.carelib.care.firmwareupgrade.events.FirmwareUpgradeProgressChangedEvent;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.core.AppType;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.FirmwareVersion;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.profile.internal.MockProfile;
import java.io.File;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class MockFirmwareUpgradeProcedure extends ProfileSubModule implements FirmwareUpgradeProcedure {
    private static final int PROGRESS_INCREMENT = 1;
    private static final int PROGRESS_TICK = 100;
    public static final String TAG = "MockFirmwareUpgradeProcedure";
    private final MockAccessory mAccessory;
    private AppType mAppToUpgrade;
    private final Communication mCommunication;
    private File mMainAppFilePath;
    private FirmwareUpgradeProcedureListener mMainFirmwareUpgradeProcedureListener;
    private FirmwareVersion mPendingMainAppVersion;
    private FirmwareVersion mPendingServiceAppVersion;
    private final MockProfile mProfile;
    private int mProgress;
    private AppType mRequestAppType = AppType.UNDEF;
    private File mServiceAppFilePath;
    private FirmwareUpgradeProcedureListener mServiceFirmwareUpgradeProcedureListener;
    private Timer mTimer;

    MockFirmwareUpgradeProcedure(Communication communication, MockProfile mockProfile, MockAccessory mockAccessory) {
        this.mCommunication = communication;
        this.mAccessory = mockAccessory;
        this.mProfile = mockProfile;
    }

    @Override // com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure
    public boolean isUpdatingMainApp() {
        return AppType.MAIN == this.mAppToUpgrade;
    }

    @Override // com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure
    public boolean isUpdatingServiceApp() {
        return AppType.SERVICE == this.mAppToUpgrade;
    }

    @Override // com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure
    public void rebootToMainApp() throws CareLibException {
        rebootToMainApp(0);
    }

    private boolean isFirmwareUpdateInProgress() {
        return isUpdatingMainApp() || isUpdatingServiceApp();
    }

    @Override // com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure
    public void rebootToMainApp(int i) throws CareLibException {
        throw new CareLibException("Not implemented!");
    }

    @Override // com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure
    public void rebootToServiceApp() throws CareLibException {
        rebootToServiceApp(0);
    }

    @Override // com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure
    public void rebootToServiceApp(int i) throws CareLibException {
        throw new CareLibException("Not implemented");
    }

    @Override // com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure
    public void updateMainApp(File file, FirmwareUpgradeProcedureListener firmwareUpgradeProcedureListener) throws CareLibException {
        if (isFirmwareUpdateInProgress()) {
            throw new CareLibException("Operation is already in progress");
        }
        this.mMainAppFilePath = file;
        this.mPendingMainAppVersion = FirmwareVersion.fromFileName(file.getName());
        this.mMainFirmwareUpgradeProcedureListener = firmwareUpgradeProcedureListener;
        update(AppType.MAIN);
    }

    @Override // com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure
    public void updateServiceApp(File file, FirmwareUpgradeProcedureListener firmwareUpgradeProcedureListener) throws CareLibException {
        if (isFirmwareUpdateInProgress()) {
            throw new CareLibException("Operation is already in progress");
        }
        this.mServiceAppFilePath = file;
        this.mPendingServiceAppVersion = FirmwareVersion.fromFileName(file.getName());
        this.mServiceFirmwareUpgradeProcedureListener = firmwareUpgradeProcedureListener;
        update(AppType.SERVICE);
    }

    private void update(AppType appType) {
        this.mAppToUpgrade = appType;
        CareLog.v(TAG, "Upgrading app: %s", appType);
        this.mProgress = 0;
        Timer timer = this.mTimer;
        if (timer != null) {
            timer.cancel();
            this.mTimer.purge();
            this.mTimer = null;
        }
        Timer timer2 = new Timer();
        this.mTimer = timer2;
        timer2.schedule(new TimerTask() { // from class: com.texa.carelib.care.firmwareupgrade.internal.MockFirmwareUpgradeProcedure.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                MockFirmwareUpgradeProcedure.this.mProgress++;
                CareLog.v(MockFirmwareUpgradeProcedure.TAG, "Progress changed: %d", Integer.valueOf(MockFirmwareUpgradeProcedure.this.mProgress));
                int i = AnonymousClass2.$SwitchMap$com$texa$carelib$core$AppType[MockFirmwareUpgradeProcedure.this.mAppToUpgrade.ordinal()];
                if (i == 1) {
                    MockFirmwareUpgradeProcedure mockFirmwareUpgradeProcedure = MockFirmwareUpgradeProcedure.this;
                    mockFirmwareUpgradeProcedure.fireMainFirmwareUpgradeProgressChanged(mockFirmwareUpgradeProcedure.mProgress);
                } else if (i == 2) {
                    MockFirmwareUpgradeProcedure mockFirmwareUpgradeProcedure2 = MockFirmwareUpgradeProcedure.this;
                    mockFirmwareUpgradeProcedure2.fireServiceFirmwareUpgradeProgressChanged(mockFirmwareUpgradeProcedure2.mProgress);
                }
                if (MockFirmwareUpgradeProcedure.this.mProgress >= 100) {
                    MockFirmwareUpgradeProcedure.this.terminate(null);
                }
            }
        }, 0L, 100L);
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.firmwareupgrade.internal.MockFirmwareUpgradeProcedure$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$core$AppType;

        static {
            int[] iArr = new int[AppType.values().length];
            $SwitchMap$com$texa$carelib$core$AppType = iArr;
            try {
                iArr[AppType.MAIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$core$AppType[AppType.SERVICE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void terminate(CareError careError) {
        this.mTimer.cancel();
        this.mTimer.purge();
        this.mTimer = null;
        this.mAppToUpgrade = AppType.UNDEF;
        this.mMainAppFilePath = null;
        this.mMainFirmwareUpgradeProcedureListener = null;
        this.mServiceAppFilePath = null;
        this.mServiceFirmwareUpgradeProcedureListener = null;
    }

    protected void fireMainFirmwareUpgradeProgressChanged(int i) {
        FirmwareUpgradeProcedureListener firmwareUpgradeProcedureListener = this.mMainFirmwareUpgradeProcedureListener;
        if (firmwareUpgradeProcedureListener != null) {
            firmwareUpgradeProcedureListener.onFirmwareUpgradeProgressChanged(new FirmwareUpgradeProgressChangedEvent(this, AppType.MAIN, i));
        }
    }

    protected void fireMainFirmwareUpgradeCompleted(CareError careError) {
        FirmwareUpgradeProcedureListener firmwareUpgradeProcedureListener = this.mMainFirmwareUpgradeProcedureListener;
        if (firmwareUpgradeProcedureListener != null) {
            firmwareUpgradeProcedureListener.onFirmwareUpgradeCompleted(new FirmwareUpgradeCompletedEvent(this, AppType.MAIN, this.mMainAppFilePath, careError));
        }
    }

    protected void fireServiceFirmwareUpgradeProgressChanged(int i) {
        FirmwareUpgradeProcedureListener firmwareUpgradeProcedureListener = this.mServiceFirmwareUpgradeProcedureListener;
        if (firmwareUpgradeProcedureListener != null) {
            firmwareUpgradeProcedureListener.onFirmwareUpgradeProgressChanged(new FirmwareUpgradeProgressChangedEvent(this, AppType.SERVICE, i));
        }
    }

    protected void fireServiceFirmwareUpgradeCompleted(CareError careError) {
        FirmwareUpgradeProcedureListener firmwareUpgradeProcedureListener = this.mServiceFirmwareUpgradeProcedureListener;
        if (firmwareUpgradeProcedureListener != null) {
            firmwareUpgradeProcedureListener.onFirmwareUpgradeCompleted(new FirmwareUpgradeCompletedEvent(this, AppType.SERVICE, this.mServiceAppFilePath, careError));
        }
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public Profile getProfile() {
        return this.mProfile;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        if (CommunicationStatus.CONNECTED != communicationStatusChangedEvent.getCommunicationStatus() || this.mRequestAppType == AppType.UNDEF || this.mAccessory.getRunningApp() == this.mRequestAppType) {
            return;
        }
        this.mRequestAppType = AppType.UNDEF;
    }
}
