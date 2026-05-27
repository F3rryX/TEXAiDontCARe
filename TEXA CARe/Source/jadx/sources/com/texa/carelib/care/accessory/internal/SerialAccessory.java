package com.texa.carelib.care.accessory.internal;

import android.util.Log;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.accessory.DiagnosticConfigurationType;
import com.texa.carelib.care.accessory.EncryptionLevel;
import com.texa.carelib.care.accessory.FactoryResetFlag;
import com.texa.carelib.care.accessory.FirmwareUpgradePermission;
import com.texa.carelib.care.accessory.events.FactoryResetCompletedEvent;
import com.texa.carelib.care.accessory.events.SetDiagnosisModeCompletedEvent;
import com.texa.carelib.communication.Commands;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.AppType;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.DongleNotConnectedException;
import com.texa.carelib.core.OperationAlreadyRunningException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.FirmwareVersion;
import com.texa.carelib.core.utils.Version;
import com.texa.carelib.core.utils.internal.ByteBufferUtils;
import com.texa.carelib.core.utils.internal.Utils;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.profile.internal.SerialProfile;
import com.texa.carelib.profile.internal.SerialProfileMessageReceiver;
import com.texa.carelib.profile.internal.parser.GetBTMacAddressPacketParser;
import com.texa.carelib.profile.internal.parser.GetConfigurationIDPacketParser;
import com.texa.carelib.profile.internal.parser.GetDiagnosisModePacketParser;
import com.texa.carelib.profile.internal.parser.GetExtractionInsertionTimePacketParser;
import com.texa.carelib.profile.internal.parser.GetFirmwareStatusPacketParser;
import com.texa.carelib.profile.internal.parser.GetHardwareVersionPacketParser;
import com.texa.carelib.profile.internal.parser.GetInterpreterVersionPacketParser;
import com.texa.carelib.profile.internal.parser.GetSerialNumberPacketParser;
import com.texa.carelib.profile.internal.parser.GetSessionIDPacketParser;
import com.texa.carelib.profile.internal.parser.GetSettingsParser;
import com.texa.carelib.profile.internal.parser.GetStatusPacketParser;
import java.beans.PropertyChangeEvent;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class SerialAccessory extends ProfileSubModule implements Accessory, SerialProfileMessageReceiver {
    public static final String PROPERTY_CONFIGURATION_ID = "com.texa.carelib.care.accessory.internal.SerialAccessory#PROPERTY_CONFIGURATION_ID";
    public static final String PROPERTY_SESSION_ID = "com.texa.carelib.care.accessory.internal.SerialAccessory#PROPERTY_SESSION_ID";
    private CommunicationStatus mCommunicationStatus;
    private Date mCurrentDate;
    private boolean mIsConfigurationIDSupported;
    private boolean mIsSetDiagnosisModePending;
    private Date mLastPlugEventDate;
    private Date mLastUnplugEventDate;
    private final SerialProfile mProfile;
    private Callback<FactoryResetCompletedEvent> mResetToFactoryCallback;
    private Callback<SetDiagnosisModeCompletedEvent> mSetDiagnosisModeCallback;
    private static final Set<Integer> INVALID_STATUS_VALUES = new HashSet(Arrays.asList(0, 5, 6, 255));
    private static final Version CARE_LEGACY_FIRMWARE_VERSION = new Version(3, 1, 0, 1);
    public static final String TAG = "SerialAccessory";
    private Boolean mIsHostAuthenticated = false;
    private FirmwareUpgradePermission mFirmwareUpgradePermission = FirmwareUpgradePermission.UNDEF;
    private FirmwareVersion mMicroLoaderVersion = null;
    private FirmwareVersion mServiceAPPVersion = null;
    private FirmwareVersion mPendingServiceAPPVersion = null;
    private BigInteger mInterpreterVersion = null;
    private FirmwareVersion mMainAPPVersion = null;
    private FirmwareVersion mPendingMainAPPVersion = null;
    private Version mHardwareRevision = null;
    private String mMACAddress = null;
    private String mManufacturerName = null;
    private String mSerialNumber = null;
    private int mInternalStatus = 255;
    private int mStatus = 255;
    private int mDiagnosisMode = 0;
    private AppType mRunningApp = AppType.UNDEF;
    private String mSessionID = null;
    private BigInteger mConfigurationID = null;
    private EncryptionLevel mEncryptionLevel = EncryptionLevel.DoubleLevelEncryption;
    private boolean mIsDTCCrypted = true;
    private DiagnosticConfigurationType mDiagnosticConfigurationType = DiagnosticConfigurationType.ConfigurationFiles;
    private boolean mIsFactoryResetInProgress = false;

    enum FactoryResetMode {
        Legacy,
        Smart
    }

    public SerialAccessory(Profile profile) {
        this.mProfile = (SerialProfile) profile;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public SerialProfile getProfile() {
        return this.mProfile;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void loadInfo() {
        try {
            loadAccessoryInfo();
        } catch (CareLibException e) {
            CareLog.e(TAG, e, "Load data has failed.", new Object[0]);
        }
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public void loadAccessoryInfo() throws CareLibException {
        if (CommunicationStatus.CONNECTED != this.mCommunicationStatus) {
            throw new DongleNotConnectedException();
        }
        this.mProfile.sendMessage(new Message.Builder().setCommandID(77).build());
        this.mProfile.sendMessage(new Message.Builder().setCommandID(65).build());
        this.mProfile.sendMessage(new Message.Builder().setCommandID(Commands.GetSerialNumber).build());
        this.mProfile.sendMessage(new Message.Builder().setCommandID(78).build());
        this.mProfile.sendMessage(new Message.Builder().setCommandID(Commands.GetStatus).build());
        this.mProfile.sendMessage(new Message.Builder().setCommandID(Commands.GetSettings).build());
        this.mProfile.sendMessage(new Message.Builder().setCommandID(Commands.GetBTMacAddress).build());
        this.mProfile.sendMessage(new Message.Builder().setCommandID(Commands.GetHardwareVersion).build());
        this.mProfile.sendMessage(new Message.Builder().setCommandID(79).build());
        this.mProfile.sendMessage(new Message.Builder().setCommandID(17).build());
        this.mProfile.sendMessage(new Message.Builder().setCommandID(112).build());
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        this.mCommunicationStatus = communicationStatusChangedEvent.getCommunicationStatus();
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[this.mCommunicationStatus.ordinal()];
        if (i == 1) {
            Log.d(TAG, "Reset host authenticated(communication status CONNECTED)");
            this.mIsHostAuthenticated = false;
            this.mSetDiagnosisModeCallback = null;
            this.mIsSetDiagnosisModePending = false;
            this.mIsConfigurationIDSupported = true;
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
            this.mInternalStatus = 255;
            this.mStatus = 255;
            this.mDiagnosisMode = 0;
            this.mRunningApp = AppType.UNDEF;
            this.mSessionID = null;
            this.mConfigurationID = null;
            if (communicationStatusChangedEvent.getDeviceInfo() != null) {
                setMACAddress(communicationStatusChangedEvent.getDeviceInfo().getAddress());
            }
            this.mEncryptionLevel = EncryptionLevel.DoubleLevelEncryption;
            this.mIsDTCCrypted = true;
            this.mDiagnosticConfigurationType = DiagnosticConfigurationType.ConfigurationFiles;
        } else if ((i == 2 || i == 3 || i == 4 || i == 5) && isFactoryResetInProgress()) {
            terminateFactoryReset(null);
        }
        boolean z = CommunicationStatus.CONNECTED == communicationStatusChangedEvent.getCommunicationStatus();
        this.mProfile.enableCommandSubscription(z, Commands.GetStatus);
        this.mProfile.enableCommandSubscription(z, 65);
        this.mProfile.enableCommandSubscription(z, 17);
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
    public boolean isHostAuthenticated() {
        return this.mIsHostAuthenticated.booleanValue();
    }

    @Override // com.texa.carelib.profile.ProfileSubModule, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
        Callback<SetDiagnosisModeCompletedEvent> callback;
        Callback<SetDiagnosisModeCompletedEvent> callback2;
        int commandID = message.getCommandID();
        try {
            if (77 == commandID) {
                zIsDTCEncrypted = careError == null;
                this.mIsConfigurationIDSupported = zIsDTCEncrypted;
                if (zIsDTCEncrypted) {
                    BigInteger bigInteger = GetConfigurationIDPacketParser.parse(message);
                    setConfigurationID(bigInteger);
                    setStatus(AccessoryStatusEvaluator.evaluate(this.mInternalStatus, bigInteger));
                } else {
                    setStatus(this.mInternalStatus);
                }
            } else {
                if (16 == commandID) {
                    if (careError == null || !this.mIsSetDiagnosisModePending || (callback2 = this.mSetDiagnosisModeCallback) == null) {
                        return;
                    }
                    callback2.onCompleted(new SetDiagnosisModeCompletedEvent(this, careError));
                    this.mSetDiagnosisModeCallback = null;
                    this.mIsSetDiagnosisModePending = false;
                    return;
                }
                if (192 == commandID) {
                    onResetToFactoryDefault(message, careError);
                    return;
                }
                if (237 == commandID) {
                    EncryptionLevel encryptionLevel = EncryptionLevel.DoubleLevelEncryption;
                    DiagnosticConfigurationType diagnosticConfigurationDownloadMode = DiagnosticConfigurationType.ConfigurationFiles;
                    if (careError == null) {
                        GetSettingsParser.GetSettingsResponse getSettingsResponse = GetSettingsParser.parse(message);
                        diagnosticConfigurationDownloadMode = getSettingsResponse.getDiagnosticConfigurationDownloadMode();
                        zIsDTCEncrypted = getSettingsResponse.isDTCEncrypted();
                        encryptionLevel = getSettingsResponse.getEncryptionLevel();
                    }
                    setDiagnosticConfigurationDownloadMode(diagnosticConfigurationDownloadMode);
                    setDTCEncrypted(zIsDTCEncrypted);
                    setEncryptionLevel(encryptionLevel);
                    return;
                }
                if (careError != null) {
                    return;
                }
                if (commandID == 17) {
                    setDiagnosisMode(GetDiagnosisModePacketParser.parse(message));
                    if (!this.mIsSetDiagnosisModePending || (callback = this.mSetDiagnosisModeCallback) == null) {
                        return;
                    }
                    callback.onCompleted(new SetDiagnosisModeCompletedEvent(this, careError));
                    this.mSetDiagnosisModeCallback = null;
                    this.mIsSetDiagnosisModePending = false;
                    return;
                }
                if (commandID == 65) {
                    GetFirmwareStatusPacketParser.GetFirmwareStatusResponse getFirmwareStatusResponse = GetFirmwareStatusPacketParser.parse(message);
                    if (getFirmwareStatusResponse != null) {
                        setFirmwareUpgradePermission(getFirmwareStatusResponse.isUpdatingProcessAvailable() ? FirmwareUpgradePermission.YES : FirmwareUpgradePermission.NO);
                        setPendingMainAPPVersion(getFirmwareStatusResponse.getPendingMainAppVersion());
                        setPendingServiceAPPVersion(getFirmwareStatusResponse.getPendingServiceAppVersion());
                        setServiceAppVersion(getFirmwareStatusResponse.getServiceAppVersion());
                        setMainAppVersion(getFirmwareStatusResponse.getMainAppVersion());
                        setMicroLoaderVersion(getFirmwareStatusResponse.getMicroLoaderVersion());
                        if (getFirmwareStatusResponse.isBootloaderRunning()) {
                            setRunningApp(AppType.SERVICE);
                            return;
                        } else {
                            setRunningApp(AppType.MAIN);
                            return;
                        }
                    }
                    return;
                }
                if (commandID == 112) {
                    GetExtractionInsertionTimePacketParser.GetExtractionInsertionTimeResponse getExtractionInsertionTimeResponse = GetExtractionInsertionTimePacketParser.parse(message);
                    if (getExtractionInsertionTimeResponse != null) {
                        setCurrentDate(getExtractionInsertionTimeResponse.getCurrentDate());
                        setLastPlugEventDate(getExtractionInsertionTimeResponse.getPlugDate());
                        setLastUnplugEventDate(getExtractionInsertionTimeResponse.getUnPlugDate());
                        return;
                    }
                    return;
                }
                if (commandID != 230) {
                    if (commandID == 238) {
                        setSerialNumber(GetSerialNumberPacketParser.parse(message));
                        return;
                    }
                    if (commandID == 78) {
                        setSessionID(GetSessionIDPacketParser.parse(message));
                        return;
                    }
                    if (commandID == 79) {
                        setInterpreterVersion(GetInterpreterVersionPacketParser.parse(message));
                        return;
                    } else if (commandID == 233) {
                        setMACAddress(GetBTMacAddressPacketParser.parse(message));
                        return;
                    } else {
                        if (commandID != 234) {
                            return;
                        }
                        setHardwareRevision(GetHardwareVersionPacketParser.parse(message));
                        return;
                    }
                }
                GetStatusPacketParser.GetStatusResponse getStatusResponse = GetStatusPacketParser.parse(message);
                setHostAuthenticated(getStatusResponse.isHostAuthenticated());
                int status = getStatusResponse.getStatus();
                this.mInternalStatus = status;
                if (this.mIsConfigurationIDSupported) {
                    setStatus(AccessoryStatusEvaluator.evaluate(status, getConfigurationID()));
                } else {
                    setStatus(status);
                }
            }
        } catch (IllegalArgumentException unused) {
        }
    }

    void onResetToFactoryDefault(Message message, CareError careError) {
        terminateFactoryReset(careError);
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public void setDiagnosisMode(int i, Callback<SetDiagnosisModeCompletedEvent> callback) throws CareLibException {
        if (this.mDiagnosisMode == i) {
            if (callback != null) {
                callback.onCompleted(new SetDiagnosisModeCompletedEvent(this, null));
            }
        } else {
            if (this.mIsSetDiagnosisModePending) {
                throw new CareLibException("Cannot change diagnosis mode. Operation is already pending.");
            }
            this.mIsSetDiagnosisModePending = true;
            this.mSetDiagnosisModeCallback = callback;
            this.mProfile.sendMessage(new Message.Builder().setCommandID(16).setPayload(new byte[]{(byte) (i & 255)}).build());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r6v25 */
    @Override // com.texa.carelib.care.accessory.Accessory
    public void resetToFactory(EnumSet<FactoryResetFlag> enumSet, Callback<FactoryResetCompletedEvent> callback) throws CareLibException {
        int i;
        int i2 = 0;
        CareLog.v(TAG, "resetToFactory", new Object[0]);
        if (isFactoryResetInProgress()) {
            throw new OperationAlreadyRunningException("Factory reset is already running.");
        }
        this.mIsFactoryResetInProgress = true;
        this.mResetToFactoryCallback = callback;
        if (Utils.isEmpty(enumSet)) {
            terminateFactoryReset(null);
            return;
        }
        int i3 = AnonymousClass1.$SwitchMap$com$texa$carelib$care$accessory$internal$SerialAccessory$FactoryResetMode[getFactoryResetModeFromFirmwareVersion(getMainAPPVersion()).ordinal()];
        if (i3 == 1) {
            char c = (enumSet.contains(FactoryResetFlag.UserData) || enumSet.contains(FactoryResetFlag.PairingTable)) ? (char) 255 : (char) 0;
            i = c;
            if (enumSet.contains(FactoryResetFlag.DiagnosticConfiguration)) {
                i2 = 255;
                i = c;
            }
        } else if (i3 == 2) {
            boolean zContains = enumSet.contains(FactoryResetFlag.UserData);
            ?? r6 = zContains;
            if (enumSet.contains(FactoryResetFlag.PairingTable)) {
                r6 = (zContains ? 1 : 0) | 2;
            }
            i = r6;
            if (enumSet.contains(FactoryResetFlag.DiagnosticConfiguration)) {
                i2 = 1;
                i = r6;
            }
        } else {
            throw new CareLibException("Factory reset mode not yet managed.");
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(2);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        ByteBufferUtils.putUnsignedByte(byteBufferAllocate, Integer.valueOf(i));
        ByteBufferUtils.putUnsignedByte(byteBufferAllocate, Integer.valueOf(i2));
        this.mProfile.sendMessage(new Message.Builder().setCommandID(192).setPayload(byteBufferAllocate.array()).build());
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.accessory.internal.SerialAccessory$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$care$accessory$internal$SerialAccessory$FactoryResetMode;
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$CommunicationStatus;

        static {
            int[] iArr = new int[FactoryResetMode.values().length];
            $SwitchMap$com$texa$carelib$care$accessory$internal$SerialAccessory$FactoryResetMode = iArr;
            try {
                iArr[FactoryResetMode.Legacy.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$accessory$internal$SerialAccessory$FactoryResetMode[FactoryResetMode.Smart.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[CommunicationStatus.values().length];
            $SwitchMap$com$texa$carelib$communication$CommunicationStatus = iArr2;
            try {
                iArr2[CommunicationStatus.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.CONNECTION_LOST.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.DISCONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NO_MEDIUM_ACTIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NOT_SUPPORTED.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public EnumSet<FactoryResetFlag> getSupportedFactoryResetFlags() throws CareLibException {
        if (CommunicationStatus.CONNECTED != this.mCommunicationStatus) {
            throw new DongleNotConnectedException();
        }
        FactoryResetMode factoryResetModeFromFirmwareVersion = getFactoryResetModeFromFirmwareVersion(this.mMainAPPVersion);
        EnumSet<FactoryResetFlag> enumSetNoneOf = EnumSet.noneOf(FactoryResetFlag.class);
        for (FactoryResetFlag factoryResetFlag : FactoryResetFlag.values()) {
            if (FactoryResetFlag.PairingTable == factoryResetFlag) {
                if (FactoryResetMode.Smart == factoryResetModeFromFirmwareVersion) {
                    enumSetNoneOf.add(factoryResetFlag);
                }
            } else {
                enumSetNoneOf.add(factoryResetFlag);
            }
        }
        return enumSetNoneOf;
    }

    FactoryResetMode getFactoryResetModeFromFirmwareVersion(FirmwareVersion firmwareVersion) {
        if (firmwareVersion != null && ("ETRK".equalsIgnoreCase(firmwareVersion.getProductName()) || ("CARE".equalsIgnoreCase(firmwareVersion.getProductName()) && CARE_LEGACY_FIRMWARE_VERSION.compareTo(firmwareVersion.getVersion()) < 0))) {
            return FactoryResetMode.Smart;
        }
        return FactoryResetMode.Legacy;
    }

    boolean isFactoryResetInProgress() {
        return this.mIsFactoryResetInProgress;
    }

    private void terminateFactoryReset(CareError careError) {
        Callback<FactoryResetCompletedEvent> callback = this.mResetToFactoryCallback;
        if (callback != null) {
            callback.onCompleted(new FactoryResetCompletedEvent(this, this.mProfile.getProfileDelegate().getApplicationContext(), careError));
            this.mResetToFactoryCallback = null;
        }
        this.mIsFactoryResetInProgress = false;
    }

    private void setHostAuthenticated(boolean z) {
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

    protected void setMACAddress(String str) {
        String str2 = this.mMACAddress;
        this.mMACAddress = str;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_MAC_ADDRESS, str2, this.mMACAddress));
    }

    void setMainAppVersion(FirmwareVersion firmwareVersion) {
        FirmwareVersion firmwareVersion2 = this.mMainAPPVersion;
        this.mMainAPPVersion = firmwareVersion;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_MAIN_APP_VERSION, firmwareVersion2, this.mMainAPPVersion));
    }

    private void setManufacturerName(String str) {
        String str2 = this.mManufacturerName;
        this.mManufacturerName = str;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_MANUFACTURER_NAME, str2, this.mManufacturerName));
    }

    private void setMicroLoaderVersion(FirmwareVersion firmwareVersion) {
        FirmwareVersion firmwareVersion2 = this.mMicroLoaderVersion;
        this.mMicroLoaderVersion = firmwareVersion;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_MICRO_LOADER_VERSION, firmwareVersion2, this.mMicroLoaderVersion));
    }

    private void setPendingMainAPPVersion(FirmwareVersion firmwareVersion) {
        FirmwareVersion firmwareVersion2 = this.mPendingMainAPPVersion;
        this.mPendingMainAPPVersion = firmwareVersion;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_PENDING_MAIN_APP_VERSION, firmwareVersion2, this.mPendingMainAPPVersion));
    }

    private void setPendingServiceAPPVersion(FirmwareVersion firmwareVersion) {
        FirmwareVersion firmwareVersion2 = this.mPendingServiceAPPVersion;
        this.mPendingServiceAPPVersion = firmwareVersion;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_PENDING_SERVICE_APP_VERSION, firmwareVersion2, this.mPendingServiceAPPVersion));
    }

    private void setRunningApp(AppType appType) {
        AppType appType2 = this.mRunningApp;
        this.mRunningApp = appType;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_RUNNING_APP, appType2, this.mRunningApp));
    }

    private void setConfigurationID(BigInteger bigInteger) {
        BigInteger bigInteger2 = this.mConfigurationID;
        this.mConfigurationID = bigInteger;
        firePropertyChange(new PropertyChangeEvent(this, PROPERTY_CONFIGURATION_ID, bigInteger2, this.mConfigurationID));
    }

    private void setSessionID(String str) {
        String str2 = this.mSessionID;
        this.mSessionID = str;
        firePropertyChange(new PropertyChangeEvent(this, PROPERTY_SESSION_ID, str2, this.mSessionID));
    }

    private void setSerialNumber(String str) {
        String str2 = this.mSerialNumber;
        this.mSerialNumber = str;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_SERIAL_NUMBER, str2, this.mSerialNumber));
    }

    private void setServiceAppVersion(FirmwareVersion firmwareVersion) {
        FirmwareVersion firmwareVersion2 = this.mServiceAPPVersion;
        this.mServiceAPPVersion = firmwareVersion;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_SERVICE_APP_VERSION, firmwareVersion2, this.mServiceAPPVersion));
    }

    private void setStatus(int i) {
        int i2 = this.mStatus;
        this.mStatus = i;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_STATUS, Integer.valueOf(i2), Integer.valueOf(this.mStatus)));
        if (i2 == i || INVALID_STATUS_VALUES.contains(Integer.valueOf(i))) {
            return;
        }
        this.mProfile.sendMessage(new Message.Builder().setCommandID(17).build());
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public boolean isDTCEncrypted() {
        return this.mIsDTCCrypted;
    }

    private void setDTCEncrypted(boolean z) {
        boolean z2 = this.mIsDTCCrypted;
        this.mIsDTCCrypted = z;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_DTC_ENCRYPTED, Boolean.valueOf(z2), Boolean.valueOf(z)));
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public DiagnosticConfigurationType getDiagnosticConfigurationType() {
        return this.mDiagnosticConfigurationType;
    }

    private void setDiagnosticConfigurationDownloadMode(DiagnosticConfigurationType diagnosticConfigurationType) {
        this.mDiagnosticConfigurationType = diagnosticConfigurationType;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_DIAGNOSTIC_CONFIGURATION_TYPE, diagnosticConfigurationType, diagnosticConfigurationType));
    }

    @Override // com.texa.carelib.care.accessory.Accessory
    public EncryptionLevel getEncryptionLevel() {
        return this.mEncryptionLevel;
    }

    private void setEncryptionLevel(EncryptionLevel encryptionLevel) {
        EncryptionLevel encryptionLevel2 = this.mEncryptionLevel;
        this.mEncryptionLevel = encryptionLevel;
        firePropertyChange(new PropertyChangeEvent(this, Accessory.PROPERTY_ENCRYPTION_LEVEL, encryptionLevel2, encryptionLevel));
    }
}
