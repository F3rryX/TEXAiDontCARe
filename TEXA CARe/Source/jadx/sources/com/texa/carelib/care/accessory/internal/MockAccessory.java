package com.texa.carelib.care.accessory.internal;

import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.accessory.DiagnosticConfigurationType;
import com.texa.carelib.care.accessory.EncryptionLevel;
import com.texa.carelib.care.accessory.FactoryResetFlag;
import com.texa.carelib.care.accessory.FirmwareUpgradePermission;
import com.texa.carelib.care.accessory.events.FactoryResetCompletedEvent;
import com.texa.carelib.care.accessory.events.SetDiagnosisModeCompletedEvent;
import com.texa.carelib.care.accessory.internal.SerialAccessory;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.core.AppType;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.DongleNotConnectedException;
import com.texa.carelib.core.utils.FirmwareVersion;
import com.texa.carelib.core.utils.Version;
import com.texa.carelib.core.utils.internal.Utils;
import com.texa.carelib.profile.BuildConfig;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.profile.internal.MockProfile;
import java.beans.PropertyChangeEvent;
import java.math.BigInteger;
import java.util.Date;
import java.util.EnumSet;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class MockAccessory extends ProfileSubModule implements Accessory {
    private static final Version CARE_LEGACY_FIRMWARE_VERSION;
    public static final int DATA_AVAILABLE_DELAY = 250;
    public static final int DATA_UPDATED_PERIOD = 2500;
    public static final int DATA_UPDATE_DELAY = 2500;
    public static final Version HARDWARE_REVISION;
    public static final String MAC_ADDRESS = "00-B0-D0-86-BB-F7";
    public static final FirmwareVersion MAIN_APP_VERSION;
    public static final String MANUFACTURER_NAME = "TEXA S.p.A.";
    public static final FirmwareVersion MICRO_LOADER_REVISION;
    public static final BigInteger MOCK_INTERPRETER_VERSION;
    public static final FirmwareVersion PENDING_MAIN_APP_VERSION;
    public static final FirmwareVersion PENDING_SERVICE_APP_VERSION;
    public static final FirmwareVersion SERVICE_APP_VERSION;
    public static final String TAG = "MockAccessory";
    private CommunicationStatus mCommunicationStatus;
    private BigInteger mConfigurationID;
    private Date mCurrentDate;
    private int mDiagnosisMode;
    private Thread mFactoryResetThread;
    private FirmwareUpgradePermission mFirmwareUpgradePermission;
    private Version mHardwareRevision;
    private BigInteger mInterpreterVersion;
    private boolean mIsFactoryResetInProgress;
    private Date mLastPlugEventDate;
    private Date mLastUnplugEventDate;
    private String mMACAddress;
    private FirmwareVersion mMainAPPVersion;
    private String mManufacturerName;
    private FirmwareVersion mMicroLoaderVersion;
    private FirmwareVersion mPendingMainAPPVersion;
    private FirmwareVersion mPendingServiceAPPVersion;
    private final MockProfile mProfile;
    private Callback<FactoryResetCompletedEvent> mResetToFactoryCallback;
    private AppType mRunningApp;
    private String mSerialNumber;
    private FirmwareVersion mServiceAPPVersion;
    private String mSessionID;
    private int mStatus;
    private final AccessoryStatusUpdater mAccessoryStatusUpdater = new AccessoryStatusUpdater(this);
    private Boolean mIsHostAuthenticated = false;

    @Override // com.texa.carelib.care.accessory.Accessory
    public boolean isDTCEncrypted() {
        return true;
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public void setDiagnosisMode(int i, Callback<SetDiagnosisModeCompletedEvent> callback) throws CareLibException {
    }

    static {
        FirmwareVersion firmwareVersion = new FirmwareVersion(1, 0, 0, 0);
        SERVICE_APP_VERSION = firmwareVersion;
        FirmwareVersion firmwareVersion2 = new FirmwareVersion(1, 0, 0, 0);
        MAIN_APP_VERSION = firmwareVersion2;
        MICRO_LOADER_REVISION = new FirmwareVersion(1, 0, 0, 0);
        PENDING_MAIN_APP_VERSION = new FirmwareVersion(0, 0, 0, 0);
        PENDING_SERVICE_APP_VERSION = new FirmwareVersion(0, 0, 0, 0);
        firmwareVersion.setApplicationName("DEF").setBoardName("DEF").setCustomerName(BuildConfig.FW_CUSTOMER_NAME).setProductName("CARE");
        firmwareVersion2.setApplicationName("DEF").setBoardName("DEF").setCustomerName(BuildConfig.FW_CUSTOMER_NAME).setProductName("CARE");
        HARDWARE_REVISION = new Version(1, 0, 0, 1);
        MOCK_INTERPRETER_VERSION = BigInteger.valueOf(1L);
        CARE_LEGACY_FIRMWARE_VERSION = new Version(3, 1, 0, 1);
    }

    public MockAccessory(Profile profile, String str) {
        this.mProfile = (MockProfile) profile;
        this.mSerialNumber = str;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public MockProfile getProfile() {
        return this.mProfile;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        Communication communication = (Communication) communicationStatusChangedEvent.getSource();
        this.mCommunicationStatus = communicationStatusChangedEvent.getCommunicationStatus();
        if (AnonymousClass1.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[this.mCommunicationStatus.ordinal()] != 1) {
            return;
        }
        this.mIsHostAuthenticated = false;
        this.mFirmwareUpgradePermission = FirmwareUpgradePermission.UNDEF;
        this.mMicroLoaderVersion = null;
        this.mServiceAPPVersion = null;
        this.mPendingServiceAPPVersion = null;
        this.mInterpreterVersion = null;
        this.mMainAPPVersion = null;
        this.mPendingMainAPPVersion = null;
        this.mHardwareRevision = null;
        this.mMACAddress = null;
        this.mManufacturerName = null;
        this.mSerialNumber = null;
        this.mStatus = 255;
        this.mDiagnosisMode = 0;
        this.mRunningApp = AppType.UNDEF;
        this.mSessionID = null;
        this.mConfigurationID = null;
        if (communication.getCurrentDevice() != null) {
            setMACAddress(communication.getCurrentDevice().getAddress());
        }
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.accessory.internal.MockAccessory$1, reason: invalid class name */
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

    BigInteger getConfigurationID() {
        return this.mConfigurationID;
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public final Date getCurrentDate() {
        return this.mCurrentDate;
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public int getDiagnosisMode() {
        return this.mDiagnosisMode;
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public void resetToFactory(EnumSet<FactoryResetFlag> enumSet, Callback<FactoryResetCompletedEvent> callback) throws CareLibException {
        throw new CareLibException("Not yet implemented.");
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public void loadAccessoryInfo() throws CareLibException {
        if (CommunicationStatus.CONNECTED != this.mCommunicationStatus) {
            throw new DongleNotConnectedException();
        }
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public FirmwareUpgradePermission getFirmwareUpgradePermission() {
        return this.mFirmwareUpgradePermission;
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public final Version getHardwareRevision() {
        return this.mHardwareRevision;
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public final BigInteger getInterpreterVersion() {
        return this.mInterpreterVersion;
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public final Date getLastPlugEventDate() {
        return this.mLastPlugEventDate;
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public final Date getLastUnplugEventDate() {
        return this.mLastUnplugEventDate;
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public final String getMACAddress() {
        return this.mMACAddress;
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public final FirmwareVersion getMainAPPVersion() {
        return this.mMainAPPVersion;
    }

    public final String getManufactureName() {
        return this.mManufacturerName;
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public final FirmwareVersion getMicroLoaderVersion() {
        return this.mMicroLoaderVersion;
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public final FirmwareVersion getPendingMainAPPVersion() {
        return this.mPendingMainAPPVersion;
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public final FirmwareVersion getPendingServiceAPPVersion() {
        return this.mPendingServiceAPPVersion;
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public final AppType getRunningApp() {
        return this.mRunningApp;
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public final String getSerialNumber() {
        return this.mSerialNumber;
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public final FirmwareVersion getServiceAPPVersion() {
        return this.mServiceAPPVersion;
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public int getStatus() {
        return this.mStatus;
    }

    public String getSessionID() {
        return this.mSessionID;
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public final boolean isHostAuthenticated() {
        return this.mIsHostAuthenticated.booleanValue();
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public EnumSet<FactoryResetFlag> getSupportedFactoryResetFlags() throws CareLibException {
        if (CommunicationStatus.CONNECTED != this.mCommunicationStatus) {
            throw new DongleNotConnectedException();
        }
        SerialAccessory.FactoryResetMode factoryResetModeFromFirmwareVersion = getFactoryResetModeFromFirmwareVersion(this.mMainAPPVersion);
        EnumSet<FactoryResetFlag> enumSetNoneOf = EnumSet.noneOf(FactoryResetFlag.class);
        for (FactoryResetFlag factoryResetFlag : FactoryResetFlag.values()) {
            if (FactoryResetFlag.PairingTable == factoryResetFlag) {
                if (SerialAccessory.FactoryResetMode.Smart == factoryResetModeFromFirmwareVersion) {
                    enumSetNoneOf.add(factoryResetFlag);
                }
            } else {
                enumSetNoneOf.add(factoryResetFlag);
            }
        }
        return enumSetNoneOf;
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public DiagnosticConfigurationType getDiagnosticConfigurationType() {
        return DiagnosticConfigurationType.ConfigurationFiles;
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public EncryptionLevel getEncryptionLevel() {
        return EncryptionLevel.DoubleLevelEncryption;
    }

    SerialAccessory.FactoryResetMode getFactoryResetModeFromFirmwareVersion(FirmwareVersion firmwareVersion) {
        if (firmwareVersion != null && "CARE".equalsIgnoreCase(firmwareVersion.getProductName()) && CARE_LEGACY_FIRMWARE_VERSION.compareTo(firmwareVersion.getVersion()) < 0) {
            return SerialAccessory.FactoryResetMode.Smart;
        }
        return SerialAccessory.FactoryResetMode.Legacy;
    }

    private void setAuthenticationStatus(boolean z) {
        Boolean bool = this.mIsHostAuthenticated;
        this.mIsHostAuthenticated = Boolean.valueOf(z);
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_IS_AUTHENTICATED, bool, this.mIsHostAuthenticated));
    }

    private void setCurrentDate(Date date) {
        Date date2 = this.mCurrentDate;
        this.mCurrentDate = date;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_CURRENT_DATE, date2, this.mCurrentDate));
    }

    private void setDiagnosisMode(int i) {
        int i2 = this.mDiagnosisMode;
        this.mDiagnosisMode = i;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_DIAGNOSIS_MODE, Integer.valueOf(i2), Integer.valueOf(this.mDiagnosisMode)));
    }

    private void setFirmwareUpgradePermission(FirmwareUpgradePermission firmwareUpgradePermission) {
        FirmwareUpgradePermission firmwareUpgradePermission2 = this.mFirmwareUpgradePermission;
        this.mFirmwareUpgradePermission = firmwareUpgradePermission;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_FIRMWARE_UPGRADE_PERMISSION, firmwareUpgradePermission2, this.mFirmwareUpgradePermission));
    }

    private void setHardwareRevision(Version version) {
        if (!version.equals(this.mHardwareRevision)) {
            Version version2 = this.mHardwareRevision;
            this.mHardwareRevision = version;
            firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_HARDWARE_REVISION, version2, this.mHardwareRevision));
        }
    }

    private void setInterpreterVersion(BigInteger bigInteger) {
        if (Utils.equals(this.mInterpreterVersion, bigInteger)) {
            return;
        }
        BigInteger bigInteger2 = this.mInterpreterVersion;
        this.mInterpreterVersion = bigInteger;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_INTERPRETER_VERSION, bigInteger2, this.mInterpreterVersion));
    }

    private void setLastPlugEventDate(Date date) {
        Date date2 = this.mLastPlugEventDate;
        this.mLastPlugEventDate = date;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_LAST_PLUG_DATE, date2, this.mLastPlugEventDate));
    }

    private void setLastUnplugEventDate(Date date) {
        Date date2 = this.mLastUnplugEventDate;
        this.mLastUnplugEventDate = date;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_LAST_UNPLUG_DATE, date2, this.mLastUnplugEventDate));
    }

    private void setMACAddress(String str) {
        String str2 = this.mMACAddress;
        this.mMACAddress = str;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_MAC_ADDRESS, str2, this.mMACAddress));
    }

    private void setMainAppVersion(FirmwareVersion firmwareVersion) {
        if (!firmwareVersion.equals(this.mMainAPPVersion)) {
            FirmwareVersion firmwareVersion2 = this.mMainAPPVersion;
            this.mMainAPPVersion = firmwareVersion;
            firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_MAIN_APP_VERSION, firmwareVersion2, this.mMainAPPVersion));
        }
    }

    private void setManufacturerName(String str) {
        String str2 = this.mManufacturerName;
        this.mManufacturerName = str;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_MANUFACTURER_NAME, str2, this.mManufacturerName));
    }

    private void setMicroLoaderVersion(FirmwareVersion firmwareVersion) {
        if (!firmwareVersion.equals(this.mMicroLoaderVersion)) {
            FirmwareVersion firmwareVersion2 = this.mMicroLoaderVersion;
            this.mMicroLoaderVersion = firmwareVersion;
            firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_MICRO_LOADER_VERSION, firmwareVersion2, this.mMicroLoaderVersion));
        }
    }

    private void setPendingMainAPPVersion(FirmwareVersion firmwareVersion) {
        if (!firmwareVersion.equals(this.mPendingMainAPPVersion)) {
            FirmwareVersion firmwareVersion2 = this.mPendingMainAPPVersion;
            this.mPendingMainAPPVersion = firmwareVersion;
            firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_PENDING_MAIN_APP_VERSION, firmwareVersion2, this.mPendingMainAPPVersion));
        }
    }

    private void setPendingServiceAPPVersion(FirmwareVersion firmwareVersion) {
        if (!firmwareVersion.equals(this.mPendingServiceAPPVersion)) {
            FirmwareVersion firmwareVersion2 = this.mPendingServiceAPPVersion;
            this.mPendingServiceAPPVersion = firmwareVersion;
            firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_PENDING_SERVICE_APP_VERSION, firmwareVersion2, this.mPendingServiceAPPVersion));
        }
    }

    private void setRunningApp(AppType appType) {
        AppType appType2 = this.mRunningApp;
        this.mRunningApp = appType;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_RUNNING_APP, appType2, this.mRunningApp));
    }

    private void setConfigurationID(BigInteger bigInteger) {
        BigInteger bigInteger2 = this.mConfigurationID;
        this.mConfigurationID = bigInteger;
        firePropertyChange(new PropertyChangeEvent(this, SerialAccessory.PROPERTY_CONFIGURATION_ID, bigInteger2, this.mConfigurationID));
    }

    private void setSessionID(String str) {
        String str2 = this.mSessionID;
        this.mSessionID = str;
        firePropertyChange(new PropertyChangeEvent(this, SerialAccessory.PROPERTY_SESSION_ID, str2, this.mSessionID));
    }

    private void setSerialNumber(String str) {
        String str2 = this.mSerialNumber;
        this.mSerialNumber = str;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_SERIAL_NUMBER, str2, this.mSerialNumber));
    }

    private void setServiceAppVersion(FirmwareVersion firmwareVersion) {
        if (!firmwareVersion.equals(this.mServiceAPPVersion)) {
            FirmwareVersion firmwareVersion2 = this.mServiceAPPVersion;
            this.mServiceAPPVersion = firmwareVersion;
            firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_SERVICE_APP_VERSION, firmwareVersion2, this.mServiceAPPVersion));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStatus(int i) {
        int i2 = this.mStatus;
        this.mStatus = i;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_STATUS, Integer.valueOf(i2), Integer.valueOf(this.mStatus)));
    }

    class AccessoryStatusUpdater {
        private MockAccessory mAccessory;
        private final int[] mStates = {1, 4};
        private int mStatusIdx = 0;
        private Timer mTimer;

        AccessoryStatusUpdater(MockAccessory mockAccessory) {
            this.mAccessory = mockAccessory;
        }

        private void cancel() {
            Timer timer = this.mTimer;
            if (timer != null) {
                timer.cancel();
                this.mTimer.purge();
                this.mTimer = null;
            }
            this.mStatusIdx = 0;
        }

        private void beginUpdateAccessoryStatus() {
            Timer timer = this.mTimer;
            if (timer != null) {
                timer.cancel();
                this.mTimer.purge();
                this.mTimer = null;
            }
            Timer timer2 = new Timer();
            this.mTimer = timer2;
            timer2.schedule(new TimerTask() { // from class: com.texa.carelib.care.accessory.internal.MockAccessory.AccessoryStatusUpdater.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    int i = AccessoryStatusUpdater.this.mStatusIdx + 1;
                    if (i < AccessoryStatusUpdater.this.mStates.length) {
                        AccessoryStatusUpdater.this.mStatusIdx = i;
                        MockAccessory.this.setStatus(AccessoryStatusUpdater.this.mStates[AccessoryStatusUpdater.this.mStatusIdx]);
                    } else {
                        cancel();
                    }
                }
            }, 2500L, 2500L);
        }

        public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
            int i = AnonymousClass1.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communicationStatusChangedEvent.getCommunicationStatus().ordinal()];
            if (i == 1) {
                beginUpdateAccessoryStatus();
            } else if (i == 2 || i == 3 || i == 4 || i == 5) {
                cancel();
            }
        }
    }
}
