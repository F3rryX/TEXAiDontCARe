package com.texa.carelib.profile.internal.parser;

import com.texa.carelib.communication.Message;
import com.texa.carelib.core.AppType;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.FirmwareVersion;
import com.texa.carelib.core.utils.Version;
import com.texa.carelib.core.utils.internal.VersionParser;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public final class GetFirmwareStatusPacketParser {
    private static final int APPLICATION_NAME_LENGTH = 4;
    private static final int BOARD_NAME_LENGTH = 4;
    private static final int CUSTOMER_NAME_LENGTH = 4;
    public static final boolean D = false;
    public static final int MASK_BOOTLOADER_RUNNING = 16;
    public static final int MASK_FIRMWARE_UPDATE_IN_PROGRESS = 64;
    public static final int MASK_FIRMWARE_UPGRADABLE = 8;
    public static final int MASK_VALID_APPLICATION = 128;
    public static final int PACKET_LENGTH = 161;
    public static final int PACKET_LENGTH_BEFORE_SMART_FW_UPGRADE = 97;
    private static final int PRODUCT_NAME_LENGTH = 16;
    public static final String TAG = "GetFirmwareStatusPacketParser";
    private static final int VERSION_LENGTH = 4;

    private static boolean checkBit(byte b, int i) {
        return (b & i) == i;
    }

    private GetFirmwareStatusPacketParser() {
    }

    private static String parseCustomerName(ByteBuffer byteBuffer) {
        if (byteBuffer != null && byteBuffer.remaining() >= 4) {
            try {
                byte[] bArr = new byte[4];
                byteBuffer.get(bArr);
                return parseString(bArr);
            } catch (Exception unused) {
                CareLog.e(TAG, "Could not parse customer name", new Object[0]);
            }
        }
        return null;
    }

    private static String parseApplicationName(ByteBuffer byteBuffer) {
        if (byteBuffer != null && byteBuffer.remaining() >= 4) {
            try {
                byte[] bArr = new byte[4];
                byteBuffer.get(bArr);
                return parseString(bArr);
            } catch (Exception unused) {
                CareLog.e(TAG, "Could not parse application name", new Object[0]);
            }
        }
        return null;
    }

    private static String parseBoardName(ByteBuffer byteBuffer) {
        if (byteBuffer != null && byteBuffer.remaining() >= 4) {
            try {
                byte[] bArr = new byte[4];
                byteBuffer.get(bArr);
                return parseString(bArr);
            } catch (Exception unused) {
                CareLog.e(TAG, "Could not parse board name", new Object[0]);
            }
        }
        return null;
    }

    private static String parseProductName(ByteBuffer byteBuffer) {
        if (byteBuffer != null && byteBuffer.remaining() >= 16) {
            try {
                byte[] bArr = new byte[16];
                byteBuffer.get(bArr);
                return parseString(bArr);
            } catch (Exception unused) {
                CareLog.e(TAG, "Could not parse product name", new Object[0]);
            }
        }
        return null;
    }

    private static Version parseVersion(ByteBuffer byteBuffer) {
        if (byteBuffer != null && byteBuffer.remaining() >= 4) {
            try {
                byte[] bArr = new byte[4];
                byteBuffer.get(bArr);
                return VersionParser.parse(bArr);
            } catch (Exception unused) {
                CareLog.e(TAG, "Could not parse version", new Object[0]);
            }
        }
        return new Version();
    }

    public static GetFirmwareStatusResponse parse(Message message) {
        if (message.getStatus() != 0 || message.getData() == null) {
            return null;
        }
        FirmwareVersion firmwareVersion = new FirmwareVersion();
        firmwareVersion.setAppType(AppType.MICRO);
        FirmwareVersion firmwareVersion2 = new FirmwareVersion();
        firmwareVersion2.setAppType(AppType.SERVICE);
        FirmwareVersion firmwareVersion3 = new FirmwareVersion();
        firmwareVersion3.setAppType(AppType.MAIN);
        FirmwareVersion firmwareVersion4 = new FirmwareVersion();
        firmwareVersion4.setAppType(AppType.SERVICE);
        FirmwareVersion firmwareVersion5 = new FirmwareVersion();
        firmwareVersion5.setAppType(AppType.MAIN);
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(message.getData());
        int length = message.getData().length;
        if (length == 97) {
            firmwareVersion.setProductName(parseProductName(byteBufferWrap));
            firmwareVersion2.setProductName(parseProductName(byteBufferWrap));
            firmwareVersion3.setProductName(parseProductName(byteBufferWrap));
            firmwareVersion.setCustomerName(parseCustomerName(byteBufferWrap));
            firmwareVersion2.setCustomerName(parseCustomerName(byteBufferWrap));
            firmwareVersion3.setCustomerName(parseCustomerName(byteBufferWrap));
            firmwareVersion.setApplicationName(parseApplicationName(byteBufferWrap));
            firmwareVersion2.setApplicationName(parseApplicationName(byteBufferWrap));
            firmwareVersion3.setApplicationName(parseApplicationName(byteBufferWrap));
            firmwareVersion.setBoardName(parseBoardName(byteBufferWrap));
            firmwareVersion2.setBoardName(parseBoardName(byteBufferWrap));
            firmwareVersion3.setBoardName(parseBoardName(byteBufferWrap));
            firmwareVersion.setVersion(parseVersion(byteBufferWrap));
            firmwareVersion2.setVersion(parseVersion(byteBufferWrap));
            firmwareVersion3.setVersion(parseVersion(byteBufferWrap));
        } else if (length == 161) {
            firmwareVersion.setProductName(parseProductName(byteBufferWrap));
            firmwareVersion2.setProductName(parseProductName(byteBufferWrap));
            firmwareVersion3.setProductName(parseProductName(byteBufferWrap));
            firmwareVersion4.setProductName(parseProductName(byteBufferWrap));
            firmwareVersion5.setProductName(parseProductName(byteBufferWrap));
            firmwareVersion.setCustomerName(parseCustomerName(byteBufferWrap));
            firmwareVersion2.setCustomerName(parseCustomerName(byteBufferWrap));
            firmwareVersion3.setCustomerName(parseCustomerName(byteBufferWrap));
            firmwareVersion4.setCustomerName(parseCustomerName(byteBufferWrap));
            firmwareVersion5.setCustomerName(parseCustomerName(byteBufferWrap));
            firmwareVersion.setApplicationName(parseApplicationName(byteBufferWrap));
            firmwareVersion2.setApplicationName(parseApplicationName(byteBufferWrap));
            firmwareVersion3.setApplicationName(parseApplicationName(byteBufferWrap));
            firmwareVersion4.setApplicationName(parseApplicationName(byteBufferWrap));
            firmwareVersion5.setApplicationName(parseApplicationName(byteBufferWrap));
            firmwareVersion.setBoardName(parseBoardName(byteBufferWrap));
            firmwareVersion2.setBoardName(parseBoardName(byteBufferWrap));
            firmwareVersion3.setBoardName(parseBoardName(byteBufferWrap));
            firmwareVersion4.setBoardName(parseBoardName(byteBufferWrap));
            firmwareVersion5.setBoardName(parseBoardName(byteBufferWrap));
            firmwareVersion.setVersion(parseVersion(byteBufferWrap));
            firmwareVersion2.setVersion(parseVersion(byteBufferWrap));
            firmwareVersion3.setVersion(parseVersion(byteBufferWrap));
            firmwareVersion4.setVersion(parseVersion(byteBufferWrap));
            firmwareVersion5.setVersion(parseVersion(byteBufferWrap));
        } else {
            CareLog.d(TAG, "Invalid data length.", new Object[0]);
            return null;
        }
        GetFirmwareStatusResponse getFirmwareStatusResponse = new GetFirmwareStatusResponse();
        try {
            byte b = byteBufferWrap.get();
            getFirmwareStatusResponse.setUpgradable(checkBit(b, 8));
            getFirmwareStatusResponse.setBootloaderRunning(!checkBit(b, 16));
            getFirmwareStatusResponse.setFirmwareUpdateInProgress(checkBit(b, 64));
            getFirmwareStatusResponse.setValidApplication(checkBit(b, 128));
        } catch (Exception e) {
            CareLog.e(TAG, e, "Could not retrieve firmware status.", new Object[0]);
        }
        getFirmwareStatusResponse.setMicroLoaderVersion(firmwareVersion);
        getFirmwareStatusResponse.setMainAppVersion(firmwareVersion3);
        getFirmwareStatusResponse.setServiceAppVersion(firmwareVersion2);
        if (firmwareVersion5.isValid()) {
            getFirmwareStatusResponse.setPendingMainAppVersion(firmwareVersion5);
        }
        if (firmwareVersion4.isValid()) {
            getFirmwareStatusResponse.setPendingServiceAppVersion(firmwareVersion4);
        }
        return getFirmwareStatusResponse;
    }

    public static class GetFirmwareStatusResponse {
        private boolean mIsBootloaderRunning;
        private boolean mIsFirmwareUpdateInProgress;
        private boolean mIsUpgradable;
        private boolean mIsValidApplication;
        private FirmwareVersion mMainAppVersion;
        private FirmwareVersion mMicroLoaderVersion;
        private FirmwareVersion mPendingMainAppVersion;
        private FirmwareVersion mPendingServiceAppVersion;
        private FirmwareVersion mServiceAppVersion;

        public FirmwareVersion getMicroLoaderVersion() {
            return this.mMicroLoaderVersion;
        }

        public void setMicroLoaderVersion(FirmwareVersion firmwareVersion) {
            this.mMicroLoaderVersion = firmwareVersion;
        }

        public FirmwareVersion getServiceAppVersion() {
            return this.mServiceAppVersion;
        }

        public void setServiceAppVersion(FirmwareVersion firmwareVersion) {
            this.mServiceAppVersion = firmwareVersion;
        }

        public FirmwareVersion getMainAppVersion() {
            return this.mMainAppVersion;
        }

        public void setMainAppVersion(FirmwareVersion firmwareVersion) {
            this.mMainAppVersion = firmwareVersion;
        }

        public FirmwareVersion getPendingServiceAppVersion() {
            return this.mPendingServiceAppVersion;
        }

        public void setPendingServiceAppVersion(FirmwareVersion firmwareVersion) {
            this.mPendingServiceAppVersion = firmwareVersion;
        }

        public FirmwareVersion getPendingMainAppVersion() {
            return this.mPendingMainAppVersion;
        }

        public void setPendingMainAppVersion(FirmwareVersion firmwareVersion) {
            this.mPendingMainAppVersion = firmwareVersion;
        }

        public boolean isUpdatingProcessAvailable() {
            return this.mIsUpgradable;
        }

        public void setUpgradable(boolean z) {
            this.mIsUpgradable = z;
        }

        public boolean isValidApplication() {
            return this.mIsValidApplication;
        }

        public void setValidApplication(boolean z) {
            this.mIsValidApplication = z;
        }

        public boolean isFirmwareUpdateInProgress() {
            return this.mIsFirmwareUpdateInProgress;
        }

        public void setFirmwareUpdateInProgress(boolean z) {
            this.mIsFirmwareUpdateInProgress = z;
        }

        public boolean isBootloaderRunning() {
            return this.mIsBootloaderRunning;
        }

        public void setBootloaderRunning(boolean z) {
            this.mIsBootloaderRunning = z;
        }

        private GetFirmwareStatusResponse() {
            FirmwareVersion firmwareVersion = new FirmwareVersion();
            this.mMainAppVersion = firmwareVersion;
            firmwareVersion.setAppType(AppType.MAIN);
            FirmwareVersion firmwareVersion2 = new FirmwareVersion();
            this.mServiceAppVersion = firmwareVersion2;
            firmwareVersion2.setAppType(AppType.SERVICE);
            FirmwareVersion firmwareVersion3 = new FirmwareVersion();
            this.mMicroLoaderVersion = firmwareVersion3;
            firmwareVersion3.setAppType(AppType.MICRO);
            FirmwareVersion firmwareVersion4 = new FirmwareVersion();
            this.mPendingMainAppVersion = firmwareVersion4;
            firmwareVersion4.setAppType(AppType.MAIN);
            FirmwareVersion firmwareVersion5 = new FirmwareVersion();
            this.mPendingServiceAppVersion = firmwareVersion5;
            firmwareVersion5.setAppType(AppType.SERVICE);
            this.mIsBootloaderRunning = false;
            this.mIsFirmwareUpdateInProgress = false;
            this.mIsUpgradable = true;
        }
    }

    static boolean isPureAscii(byte[] bArr) {
        try {
            Charset.forName("US-ASCII").newDecoder().decode(ByteBuffer.wrap(bArr));
            return true;
        } catch (CharacterCodingException unused) {
            return false;
        }
    }

    private static String parseString(byte[] bArr) {
        if (bArr == null || bArr.length < 0 || !isPureAscii(bArr)) {
            return null;
        }
        return new String(bArr).trim();
    }
}
