package com.texa.carelib.care.accessory;

import com.texa.carelib.care.accessory.events.FactoryResetCompletedEvent;
import com.texa.carelib.care.accessory.events.SetDiagnosisModeCompletedEvent;
import com.texa.carelib.core.AppType;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.ObservableObject;
import com.texa.carelib.core.utils.FirmwareVersion;
import com.texa.carelib.core.utils.Version;
import java.math.BigInteger;
import java.util.Date;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes2.dex */
public interface Accessory extends ObservableObject {
    public static final String PROPERTY_CURRENT_DATE = "com.texa.carelib.care.accessory.Accessory#PROPERTY_CURRENT_DATE";
    public static final String PROPERTY_DIAGNOSIS_MODE = "com.texa.carelib.care.accessory.Accessory#PROPERTY_DIAGNOSIS_MODE";
    public static final String PROPERTY_DIAGNOSTIC_CONFIGURATION_TYPE = "com.texa.carelib.care.accessory.Accessory#PROPERTY_DIAGNOSTIC_CONFIGURATION_TYPE";
    public static final String PROPERTY_DTC_ENCRYPTED = "com.texa.carelib.care.accessory.Accessory#PROPERTY_DTC_ENCRYPTED";
    public static final String PROPERTY_ENCRYPTION_LEVEL = "com.texa.carelib.care.accessory.Accessory#PROPERTY_ENCRYPTION_LEVEL";
    public static final String PROPERTY_FIRMWARE_UPGRADE_PERMISSION = "com.texa.carelib.care.accessory.Accessory#PROPERTY_FIRMWARE_UPGRADE_PERMISSION";
    public static final String PROPERTY_HARDWARE_REVISION = "com.texa.carelib.care.accessory.Accessory#PROPERTY_HARDWARE_REVISION";
    public static final String PROPERTY_INTERPRETER_VERSION = "com.texa.carelib.care.accessory.Accessory#PROPERTY_INTERPRETER_VERSION";
    public static final String PROPERTY_IS_AUTHENTICATED = "com.texa.carelib.care.accessory.Accessory#PROPERTY_IS_AUTHENTICATED";
    public static final String PROPERTY_LAST_PLUG_DATE = "com.texa.carelib.care.accessory.Accessory#PROPERTY_LAST_PLUG_DATE";
    public static final String PROPERTY_LAST_UNPLUG_DATE = "com.texa.carelib.care.accessory.Accessory#PROPERTY_LAST_UNPLUG_DATE";
    public static final String PROPERTY_MAC_ADDRESS = "com.texa.carelib.care.accessory.Accessory#PROPERTY_MAC_ADDRESS";
    public static final String PROPERTY_MAIN_APP_VERSION = "com.texa.carelib.care.accessory.Accessory#PROPERTY_MAIN_APP_VERSION";
    public static final String PROPERTY_MANUFACTURER_NAME = "com.texa.carelib.care.accessory.Accessory#PROPERTY_MANUFACTURER_NAME";
    public static final String PROPERTY_MICRO_LOADER_VERSION = "com.texa.carelib.care.accessory.Accessory#PROPERTY_MICRO_LOADER_VERSION";
    public static final String PROPERTY_PENDING_MAIN_APP_VERSION = "com.texa.carelib.care.accessory.Accessory#PROPERTY_PENDING_MAIN_APP_VERSION";
    public static final String PROPERTY_PENDING_SERVICE_APP_VERSION = "com.texa.carelib.care.accessory.Accessory#PROPERTY_PENDING_SERVICE_APP_VERSION";
    public static final String PROPERTY_RUNNING_APP = "com.texa.carelib.care.accessory.Accessory#PROPERTY_RUNNING_APP";
    public static final String PROPERTY_SERIAL_NUMBER = "com.texa.carelib.care.accessory.Accessory#PROPERTY_SERIAL_NUMBER";
    public static final String PROPERTY_SERVICE_APP_VERSION = "com.texa.carelib.care.accessory.Accessory#PROPERTY_SERVICE_APP_VERSION";
    public static final String PROPERTY_STATUS = "com.texa.carelib.care.accessory.Accessory#PROPERTY_STATUS";

    Date getCurrentDate();

    int getDiagnosisMode();

    DiagnosticConfigurationType getDiagnosticConfigurationType();

    EncryptionLevel getEncryptionLevel();

    FirmwareUpgradePermission getFirmwareUpgradePermission();

    Version getHardwareRevision();

    BigInteger getInterpreterVersion();

    Date getLastPlugEventDate();

    Date getLastUnplugEventDate();

    String getMACAddress();

    FirmwareVersion getMainAPPVersion();

    FirmwareVersion getMicroLoaderVersion();

    FirmwareVersion getPendingMainAPPVersion();

    FirmwareVersion getPendingServiceAPPVersion();

    AppType getRunningApp();

    String getSerialNumber();

    FirmwareVersion getServiceAPPVersion();

    int getStatus();

    EnumSet<FactoryResetFlag> getSupportedFactoryResetFlags() throws CareLibException;

    boolean isDTCEncrypted();

    boolean isHostAuthenticated();

    void loadAccessoryInfo() throws CareLibException;

    void resetToFactory(EnumSet<FactoryResetFlag> enumSet, Callback<FactoryResetCompletedEvent> callback) throws CareLibException;

    void setDiagnosisMode(int i, Callback<SetDiagnosisModeCompletedEvent> callback) throws CareLibException;
}
