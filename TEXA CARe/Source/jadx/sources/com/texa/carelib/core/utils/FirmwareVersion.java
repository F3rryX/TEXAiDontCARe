package com.texa.carelib.core.utils;

import com.texa.carelib.core.AppType;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.utils.internal.Utils;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class FirmwareVersion {
    private AppType mAppType;
    private String mApplicationName;
    private String mBoardName;
    private String mCustomerName;
    private String mFileName;
    private String mProductName;
    private Version mVersion;

    public FirmwareVersion() {
        this(null, null, null, null);
    }

    public FirmwareVersion(Integer num) {
        this(num, null, null, null);
    }

    public FirmwareVersion(Integer num, Integer num2) {
        this(num, num2, null, null);
    }

    public FirmwareVersion(Integer num, Integer num2, Integer num3) {
        this(num, num2, num3, null);
    }

    public FirmwareVersion(Integer num, Integer num2, Integer num3, Integer num4) {
        this.mVersion = new Version(num, num2, num3, num4);
        this.mAppType = AppType.UNDEF;
    }

    public AppType getAppType() {
        return this.mAppType;
    }

    public FirmwareVersion setAppType(AppType appType) {
        this.mAppType = appType;
        return this;
    }

    public String getFileName() {
        return this.mFileName;
    }

    public FirmwareVersion setFileName(String str) {
        this.mFileName = str;
        return this;
    }

    public String getProductName() {
        return this.mProductName;
    }

    public FirmwareVersion setProductName(String str) {
        this.mProductName = str;
        return this;
    }

    public String getCustomerName() {
        return this.mCustomerName;
    }

    public FirmwareVersion setCustomerName(String str) {
        this.mCustomerName = str;
        return this;
    }

    public String getApplicationName() {
        return this.mApplicationName;
    }

    public FirmwareVersion setApplicationName(String str) {
        this.mApplicationName = str;
        return this;
    }

    public String getBoardName() {
        return this.mBoardName;
    }

    public FirmwareVersion setBoardName(String str) {
        this.mBoardName = str;
        return this;
    }

    public Version getVersion() {
        return this.mVersion;
    }

    public FirmwareVersion setVersion(Version version) {
        this.mVersion = version;
        return this;
    }

    public String toString() {
        return "FirmwareVersion{mBoardName='" + this.mBoardName + "', mApplicationName='" + this.mApplicationName + "', mCustomerName='" + this.mCustomerName + "', mFileName='" + this.mFileName + "', mProductName='" + this.mProductName + "', mAppType=" + this.mAppType + ", mVersion=" + this.mVersion + '}';
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FirmwareVersion)) {
            return false;
        }
        FirmwareVersion firmwareVersion = (FirmwareVersion) obj;
        String str = this.mBoardName;
        if (str == null ? firmwareVersion.mBoardName != null : !str.equals(firmwareVersion.mBoardName)) {
            return false;
        }
        String str2 = this.mApplicationName;
        if (str2 == null ? firmwareVersion.mApplicationName != null : !str2.equals(firmwareVersion.mApplicationName)) {
            return false;
        }
        String str3 = this.mCustomerName;
        if (str3 == null ? firmwareVersion.mCustomerName != null : !str3.equals(firmwareVersion.mCustomerName)) {
            return false;
        }
        String str4 = this.mFileName;
        if (str4 == null ? firmwareVersion.mFileName != null : !str4.equals(firmwareVersion.mFileName)) {
            return false;
        }
        String str5 = this.mProductName;
        if (str5 == null ? firmwareVersion.mProductName != null : !str5.equals(firmwareVersion.mProductName)) {
            return false;
        }
        if (this.mAppType != firmwareVersion.mAppType) {
            return false;
        }
        Version version = this.mVersion;
        Version version2 = firmwareVersion.mVersion;
        return version != null ? version.equals(version2) : version2 == null;
    }

    public int hashCode() {
        String str = this.mBoardName;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.mApplicationName;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.mCustomerName;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.mFileName;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.mProductName;
        int iHashCode5 = (iHashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        AppType appType = this.mAppType;
        int iHashCode6 = (iHashCode5 + (appType != null ? appType.hashCode() : 0)) * 31;
        Version version = this.mVersion;
        return iHashCode6 + (version != null ? version.hashCode() : 0);
    }

    public static boolean isValidFileName(String str) {
        return Pattern.matches("^([0-9a-zA-Z]{4})_\\[([0-9a-zA-Z]{3})\\]_\\[([0-9a-zA-Z]{3})\\]_\\[([0-9a-zA-Z]{3})\\]_\\[(MA|SA)_[0-9a-zA-Z]*_[0-9a-zA-Z]*_[0-9a-zA-Z]*_[0-9a-zA-Z]*\\].([0-9a-zA-Z]{3})$", str);
    }

    public static FirmwareVersion fromFileName(String str) throws CareLibException {
        if (!isValidFileName(str)) {
            throw new CareLibException(String.format("Invalid file name \"%1$s\". The file name does not match the naming rules.", str));
        }
        String strReplace = str.replace("[", "").replace("]", "");
        String strSubstring = strReplace.substring(0, strReplace.length() - 4);
        FirmwareVersion firmwareVersion = new FirmwareVersion();
        firmwareVersion.setFileName(str);
        String[] strArrSplit = strSubstring.split("_");
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < strArrSplit.length; i5++) {
            switch (i5) {
                case 0:
                    firmwareVersion.setProductName(strArrSplit[0]);
                    break;
                case 1:
                    firmwareVersion.setCustomerName(strArrSplit[1]);
                    break;
                case 2:
                    firmwareVersion.setApplicationName(strArrSplit[2]);
                    break;
                case 3:
                    firmwareVersion.setBoardName(strArrSplit[3]);
                    break;
                case 4:
                    if ("MA".equalsIgnoreCase(strArrSplit[4])) {
                        firmwareVersion.setAppType(AppType.MAIN);
                    } else if ("SA".equalsIgnoreCase(strArrSplit[4])) {
                        firmwareVersion.setAppType(AppType.SERVICE);
                    }
                    break;
                case 5:
                    i = Integer.parseInt(strArrSplit[5]);
                    break;
                case 6:
                    i2 = Integer.parseInt(strArrSplit[6]);
                    break;
                case 7:
                    i3 = Integer.parseInt(strArrSplit[7]);
                    break;
                case 8:
                    i4 = Integer.parseInt(strArrSplit[8]);
                    break;
            }
        }
        firmwareVersion.setVersion(new Version(Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)));
        return firmwareVersion;
    }

    public boolean isValid() {
        return isValid(this);
    }

    public static boolean isValid(FirmwareVersion firmwareVersion) {
        if (firmwareVersion == null) {
            return false;
        }
        Version version = firmwareVersion.getVersion();
        return ((((Integer) Utils.getValueOrDefault(version.getMajor(), 0)).intValue() + ((Integer) Utils.getValueOrDefault(version.getMinor(), 0)).intValue()) + ((Integer) Utils.getValueOrDefault(version.getBuild(), 0)).intValue()) + ((Integer) Utils.getValueOrDefault(version.getRevision(), 0)).intValue() > 0;
    }
}
